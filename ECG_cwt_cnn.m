load("ECGData.mat")
data=ECGData.Data;
labels=ECGData.Labels;

ARR_1 = data(1:30,:);
CHF_1= data(97:126,:);
NSR_1= data(127:156,:);
signallength = 500;
%ecg= data(1,:);
%ecg_s=pan_tompkin(ecg,200,1);
% Defining filters 
fb = cwtfilterbank('SignalLength',signallength,'Wavelet','amor','VoicesPerOctave',12);
ecgtype={'ARR_1','CHF_1','NSR_1'};
% ecg2cwtscg_practise(ecg_s,fb)

%Making Folders
mkdir('ecgdataset');%mainfolder
mkdir('ecgdataset\arr');
mkdir('ecgdataset\chf');
mkdir('ecgdataset\nsr');



%function to convert ECG to IMage

ecg2cwtscg_func(ARR_1,fb,ecgtype{1});
ecg2cwtscg_func(CHF_1,fb,ecgtype{2});
ecg2cwtscg_func(NSR_1,fb,ecgtype{3});


