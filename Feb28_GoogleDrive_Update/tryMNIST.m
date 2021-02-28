
mydata = csvread('images.csv');   % Reads all 60000 images from MNIST CSV file

IMG = mydata(4,:);   %Test with Row 4 Image

reshape(IMG,28,28);

barcode=extractRBC(IMG,28,28,8,true);

