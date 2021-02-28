from mnist import MNIST


mndata = MNIST('.')
images, label = mndata.load_training()
# images, labels = mndata.load_testing()

print("Read all Images")

# index = random.randrange(0,len(images)) # choose a random index 


#https://stackoverflow.com/questions/11926620/declaring-a-python-function-with-an-array-parameters-and-passing-an-array-argume
def makeBarcodes(images,label):
	import matlab.engine
	eng = matlab.engine.start_matlab()
	import numpy as np

	# Input for extractRBC
	# IMG - passed through images array
	nrows = 28
	ncols = nrows
	numRays = 8 
	showRBC = 0  #false

	for index in range(len(label)):
		# https://stackoverflow.com/questions/40481623/if-statement-with-modulo-operator
		if not index%1000:   # i.e. to show progress - when remainder divided by 1000 is 0 
			print(index,'->',label[index])
		image = images[index]
		IMG = matlab.double(image) # casting image
		IMG.reshape((nrows,ncols))       # create 2D array from 1D array
		bar = eng.extractRBC(IMG,nrows,ncols,numRays,showRBC)   #sending input to the function
		#https://stackoverflow.com/questions/30013853/convert-matlab-double-array-to-python-array
		barcodes.append(bar._data.tolist())
	eng.quit() #Stop the matlab engine
	return barcodes

barcodes = []   # Create an empty python list
barcodes = makeBarcodes(images,label)

print("Output Barcodes")

import numpy as np

#https://thispointer.com/how-to-save-numpy-array-to-a-csv-file-using-numpy-savetxt-in-python/
np.savetxt('barcode_array.csv', barcodes, delimiter=',', fmt='%d')
np.savetxt('barcode_label.csv', label   , delimiter=',', fmt='%d')

