function ecg2cwtscg_func(ecgdata,cwtfb,ecgtype)
nos=100;
nol=500;
colormap=jet(128);
if ecgtype=='ARR_1'
    folderpath=strcat("C:\Users\ERIC B JOHN\Documents\Research\AI R&P\physionet_ECG_data-main\ecgdataset5\arr\");
    findx=0;
    for i=1:30
        indx=0;
        for k=1:nos
            ecgsignal=ecgdata(i,indx+1:indx+nol);
            cfs=abs(cwtfb.wt(ecgsignal));
            im=ind2rgb(im2uint8(rescale(cfs)),colormap);
            filenameindex=findx+k;
            filename=strcat(folderpath,sprintf('%d.jpg',filenameindex));
            imwrite(imresize(im,[227,227]),filename);
            indx=indx+nol;
        end
        findx=findx+nos;
    end
elseif ecgtype=='CHF_1'
    folderpath=strcat("C:\Users\ERIC B JOHN\Documents\Research\AI R&P\physionet_ECG_data-main\ecgdataset5\chf\");
    findx=0;
    for i=1:30
        indx=0;
        for k=1:nos
            ecgsignal=ecgdata(i,indx+1:indx+nol);
            cfs=abs(cwtfb.wt(ecgsignal));
            im=ind2rgb(im2uint8(rescale(cfs)),colormap);
            filenameindex=findx+k;
            filename=strcat(folderpath,sprintf('%d.jpg',filenameindex));
            imwrite(imresize(im,[227,227]),filename);
            indx=indx+nol;
        end
        findx=findx+nos;
    end

elseif  ecgtype=='NSR_1'
    folderpath=strcat("C:\Users\ERIC B JOHN\Documents\Research\AI R&P\physionet_ECG_data-main\ecgdataset5\nsr\");
    findx=0;
    for i=1:30
        indx=0;
        for k=1:nos
            ecgsignal=ecgdata(i,indx+1:indx+nol);
            cfs=abs(cwtfb.wt(ecgsignal));
            im=ind2rgb(im2uint8(rescale(cfs)),colormap);
            filenameindex=findx+k;
            filename=strcat(folderpath,sprintf('%d.jpg',filenameindex));
            imwrite(imresize(im,[227,227]),filename);
            indx=indx+nol;
        end
        findx=findx+nos;
    end
end

