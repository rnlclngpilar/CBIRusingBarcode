from mnist import MNIST

mndata = MNIST('.')

images, label = mndata.load_training()
# images, labels = mndata.load_testing()

# index = random.randrange(0,len(images)) # choose an index 
index = 4
image = images[index]
print(len(image))
print(mndata.display(image))

print("starting MatLAB part")

import matlab.engine
eng = matlab.engine.start_matlab()

#
#  https://www.mathworks.com/help/matlab/creating_plots/image-types.html
#  Grayscale is double, uint8, or uint16
#
#  https://www.mathworks.com/help/matlab/matlab_external/matlab-arrays-as-python-variables.html
#  Hints about casting python lists to matlab arrays
#     .tolist() not used if passing a string
# IMG = matlab.double(image.tolist()) # casting image as list
# IMG = matlab.uint8(image.tolist()) # casting image as list
# IMG = matlab.uint16(image.tolist()) # casting image as list

# image_array = image.reshape((28,28))
IMG = matlab.double(image) # casting image
IMG.reshape((28,28))       # create 2D array from 1D array

# Input: 
# IMG
nrows = 28
ncols = nrows
numRays = 2
showRBC = 'FALSE'
#
print("Entering MatLAB function")
bar = eng.extractRBC(IMG,nrows,ncols,numRays,showRBC)   #sending input to the function
print("BarCode : ")
print(len(bar[0]))
print(bar)