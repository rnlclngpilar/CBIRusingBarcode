from mnist import MNIST

mndata = MNIST('.')

images, label = mndata.load_training()
# images, labels = mndata.load_testing()

# index = random.randrange(0,len(images)) # choose an index 
index = 4
print(mndata.display(images[index]))

