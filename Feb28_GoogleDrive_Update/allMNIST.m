mydata = csvread('images.csv'); % Reads all 60000 images from MNIST CSV file

disp('Number of rows in mydata: ');
disp(size(mydata,1));

Aint = int16.empty(0, 43*8);        % Barcodes are 43 * # of rays
barcode = double.empty(size(Aint));

for i=1:size( mydata,1)
    IMG = mydata(i,:);   %Test with Row i Image
    IMG = reshape(IMG,28,28);
    barcode(i,:)=extractRBC(IMG,28,28,8,false);  % 8 rays is default
end

disp('Number of rows in barcode: ');
disp(size(barcode,1));

writematrix(barcode,'barcode.csv')
% writematrix(barcode,'barcode.csv','WriteMode','append')
% writecell(all_barcodes,'c:\temp\barcode.csv') 