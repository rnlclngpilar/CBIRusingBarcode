% extractRBC - Extract Radon BarCode
% H.R.Tizhoosh, University of Waterloo, Dec 7, 2014
%
% https://kimialab.uwaterloo.ca/kimia/index.php/radon-barcodes/
% NEEDS MATLAB IMAGE PROCESSING TOOLBOX
% 
% Implemented as introduced and described in:
%
% Barcode Annotations for Medical Image Retrieval: A Preliminary
% Investigation, H.R.Tizhooh, IEEE ICIP 2015, Sep 27-30, Quebec City, Canada
%
% Paper avaiable from: http://tizhoosh.uwaterloo.ca/
% Paper also on arXiv: http://arxiv.org/abs/1505.05212

% PLEASE NOTE: The function has not been optimized in any way.
% Tested with Matlab R2014b

%  This program is free software: you can redistribute it and/or modify
%  it for research and education purposes as long as 
%  you refer to the source:
%  Barcode Annotations for Medical Image Retrieval: A Preliminary
%  Investigation, H.R.Tizhooh, IEEE ICIP 2015, Sep 27-30, Quebec City, Canada

%  It shall not be used for military and commercial purposes. 
%  For the latter, one shall acquire the permission of the author. 
% 
%  This program is distributed in the hope that it will be useful,
%  but WITHOUT ANY WARRANTY; without even the implied warranty of
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  

    
function barcode  = extractRBC(IMG,nrows,ncols,numRays,showRBC)

    % INPUTS:
    %       IMG : input image
    %       nrows,nclos: new size for normalization (recommended: nrows=ncols)
    %       numRays: number of projections
    %       showRBC: display results or not (TRUE/FALSE)
    % OUTPUT:
    %       barcode: 1D vector containing the barcode

    % check inouts


   switch nargin
        case {0,1,2,3,4}
            disp('Function needs 5 inputs');
            barcode = [];
            return;
        otherwise
            [rows,cols,numFrames] = size(IMG); % get the image size
            if (rows<nrows | cols<ncols)
                disp('Input size not correct. Default size 32x32');
                disp('Size of IMG entered: ');  % Entered for debugging
	        disp(size(IMG));                % Entered for debugging
                nrows = 32;
                ncols = 32;
            end
            numRays = uint8(numRays);
            if (numRays<=0 | numRays>180)
                numRays = 8;
                disp('Number of projections set to default: 8')
            end

            if showRBC    %Do not pring if calling function many times
		disp('Calling the RBC function...');
	    end
    end


     % normalize input image
    if numFrames>1
        normIMG = rgb2gray(IMG);% only process gray-level images
    else 
        normIMG = IMG;
    end
    normIMG = imresize(normIMG,[nrows ncols]); % resize

    % calculate the Radon transform
    rayVector = (0:180.0/double(numRays):179);
    RadonTransform = radon(normIMG,rayVector);

    % now generate the barcode
    barcode = [];
    for i=1:numRays
        % get a normalized projection
        thisColumn = RadonTransform(:,i)/max(RadonTransform(:,i));
        % find a threshold (typical value)
        nonZeroIndices = find(thisColumn>0);
        T = median(thisColumn(nonZeroIndices));
        % bianarize it
        thisColumn = thisColumn > T;
        % append to the barcode
        barcode = [barcode thisColumn'];
    end
    
    
    if showRBC
	disp('RBC extracted.');
        subplot(1,3,1), imagesc(IMG), colormap(gray(256)), axis off, title('Original Image')
        subplot(1,3,2), imshow(normIMG), colormap(gray(256)), axis off, title('Normalized Image')
        subplot(1,3,3), imagesc(barcode),  colormap(gray(256)), axis off, title('Radon Barcode')
    end
 
end

