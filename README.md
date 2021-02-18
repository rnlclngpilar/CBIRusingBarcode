# CBIRusingBarcode
Content-Based Image Retrieval (CBIR) Using Barcode

Objectives of Project : 
    Solving a real-world problemby designing, implementation, and comparative analysis of algorithms in terms of accuracy, time 
    and memory complexities.
    
Problem Statement : 
    Searching image in a large dataset effectively and efficientlyis the aim of this project. The image search should be based on 
    image content not labelor file name. We want to design an algorithm,whichgeneratesa barcodefor all images in the dataset and when 
    we search an image,we compare the barcode of the current under queryimage with the barcode of all other images  in  the  dataset 
    tofind bestmatching image.Our both algorithms,which  generate  the barcode  and conduct  the search  based  on  the 
    barcode,should  be  fast.  Our designed barcode should  be  shortin  size. Our utilized dataset is the 
    MNIST(http://yann.lecun.com/exdb/mnist/), 70,000 handwrittendigits’images. The deigned algorithmsshouldbe applicable onother 
    datasets with variant image typesand dataset sizes, such asmillionsof x-ray imagescaptured from differentparts of human body. 
    
Required Algorithms :
    Our two  main algorithmsare Barcode_Generatoralgorithmto  generate barcode for an imageandSearch_Algorithmto search a query image 
    in the dataset.You need to compare  your algorithmwith Radon based barcode  method. You  will  try  to  design algorithmswhich 
    generateshort barcodeand offers fast,and accuratesearches.

Required Measurements and Analysis : 
    You  need  to  compare  your  methodand  Radon  based method on the following items: 
    1)Time in seconds to generate barcode for all 70,000 images in MINST dataset, 
    2)Timein seconds to search all 70,000 images to find the bestmatching image for each  image, 
    3)Accuracy  in  term  of hit  ratio  (over  all 70,000 imagesearch  what percentageof search is correct; i.e., retrievedimage  is  
      from the  same  class  of  the  query  images), 
    4)Big-oh complexityanalysis for Barcode_Generator and Search_Algorithm. 

Deliverables : 
    A comprehensive  report  with  the source codesshould  be  submitted. The  report should  cover: 
    A)Algorithms Explanation in  detail, 
    B)Required Measurements  and Analysis, 
    C)Results Comparison, 
    D)Search Results (at least 3 search perclass),
    E)ConclusionRemarks. 
  
Project Delivery : 
    The project will be deliveredto the course TA. The TA will ask some questions from all group members.All group members should be 
    involved in all componentsof project.
    
Project Presentation : 
    Project presentationswill be done in the class. Dates will beannouncedin the CANVAS. 
    
Note:
    You  need  to  compare  your  designed algorithmwith the Radon  based algorithm. Your designed barcode can be generated in any method 
    which you prefer, there is no a limitation. 
