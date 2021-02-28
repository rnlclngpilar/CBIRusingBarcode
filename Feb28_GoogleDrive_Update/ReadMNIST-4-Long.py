# http://rasbt.github.io/mlxtend/user_guide/data/loadlocal_mnist/
# http://rasbt.github.io/mlxtend/installation/#conda

from mlxtend.data import loadlocal_mnist
import platform

if not platform.system() == 'Windows':
    X, y = loadlocal_mnist(
            images_path='train-images-idx3-ubyte', 
            labels_path='train-labels-idx1-ubyte')

else:
    X, y = loadlocal_mnist(
            images_path='train-images.idx3-ubyte', 
            labels_path='train-labels.idx1-ubyte')

print('Dimensions: %s x %s' % (X.shape[0], X.shape[1]))
print('\n1st row', X[0])

import numpy as np

print('Digits:  0 1 2 3 4 5 6 7 8 9')
print('labels: %s' % np.unique(y))
print('Class distribution: %s' % np.bincount(y))


#matplotlib inline
import matplotlib.pyplot as plt
def plot_digit(X, y, idx):
    img = X[idx].reshape(28,28)
    plt.imshow(img, cmap='Greys',  interpolation='nearest')
    plt.title('true label: %d' % y[idx])
    plt.show()
plot_digit(X, y, 4)      

# Store as CSV Files
np.savetxt(fname='images.csv', X=X, delimiter=',', fmt='%d')
np.savetxt(fname='labels.csv', X=y, delimiter=',', fmt='%d')