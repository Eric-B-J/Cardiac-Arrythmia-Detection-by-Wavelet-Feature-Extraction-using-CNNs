% Training and Validation using Alexnet

DatasetPath= "C:\Users\ERIC B JOHN\Documents\Research\AI R&P\physionet_ECG_data-main\ecgdataset5\";
% Reading Images from Image Database Folder

images= imageDatastore(DatasetPath,"IncludeSubfolders",true,"LabelSource","foldernames");

%Distributing  Images in the set of Testing and Training
numTrainfiles=2500;% 250*3=750
[TrainImages,TestImages] = splitEachLabel(images,numTrainfiles,'randomize');

net= alexnet;
layersTransfer = net.Layers(1:end-3); % preserving all layers except last three
numClasses = 3; %(ARR,CHF,NSR)

% Defining layers of AlexNEt
layers=[layersTransfer
    fullyConnectedLayer(numClasses,'WeightLearnRateFactor',20,'BiasLearnRateFactor',20)
    softmaxLayer
    classificationLayer]

% Training options
options= trainingOptions("sgdm",....
    'MiniBatchSize',20,...
    'MaxEpochs',20,....
    'InitialLearnRate',1e-4,....
    'Shuffle','every-epoch',...
    'ValidationData',TestImages,...
    'ValidationFrequency',10,....
    'Verbose',false,'Plots','training-progress');

%Trainng the AlexNEt
netTransfer =trainNetwork(TrainImages,layers,options);

%Classifying IMages
YPred = classify(netTransfer,TestImages);
YValidation = TestImages.Labels;
accuracy = sum(YPred==YValidation)/numel(YValidation);

%PLotting Confusion Matrix
%% 
plotconfusion(YValidation,YPred)