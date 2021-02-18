# CBIRusingBarcode
Content-Based Image Retrieval (CBIR) Using Barcode

Objectives of Project : 
    Solving a real-world problemby designing, implementation, and comparative analysis of algorithms in terms of accuracy, time 
    and memory complexities.
    
Problem Statement : 
    Searching image in a large dataset effectively and efficiently is the aim of this project. The image search should be based on 
    image content not label or file name. We want to design an algorithm, which generatesa barcode for all images in the dataset and when 
    we search an image, we compare the barcode of the current under query image with the barcode of all other images in the dataset 
    to find bestmatching image. Our both algorithms, which generate the barcode and conduct the search  based on the barcode, should be  
    fast. Our designed barcode should be shortin size. Our utilized dataset is the MNIST(http://yann.lecun.com/exdb/mnist/), 70,000 
    handwritten digits’images. The deigned algorithms should be applicable on other datasets with variant image typesand dataset sizes, 
    such as millions of x-ray images captured from different parts of human body. 
    
Required Algorithms :
    Our two main algorithms are Barcode_Generator algorithmto generate barcode for an image and Search_Algorithm to search a query image 
    in the dataset. You need to compare your algorithm with Radon based barcode method. You will try to  design algorithms which 
    generate short barcode and offers fast, and accurate searches.

Required Measurements and Analysis : 
    You need to compare your methodand Radon based method on the following items: 
    1)Time in seconds to generate barcode for all 70,000 images in MINST dataset, 
    2)Time in seconds to search all 70,000 images to find the best matching image for each image, 
    3)Accuracy in term of hit ratio (over all 70,000 image search what percentage of search is correct; i.e., retrieved image is  
      from the same class of the query images), 
    4)Big-oh complexity analysis for Barcode_Generator and Search_Algorithm. 

Deliverables : 
    A comprehensive report with the source codesshould be submitted. The report should cover: 
    A)Algorithms Explanation in detail, 
    B)Required Measurements and Analysis, 
    C)Results Comparison, 
    D)Search Results (at least 3 search perclass),
    E)Conclusion Remarks. 
  
Project Delivery : 
    The project will be delivered to the course TA. The TA will ask some questions from all group members. All group members should be 
    involved in all components of project.
    
Project Presentation : 
    Project presentations will be done in the class. Dates will be announced in the CANVAS. 
    
Note:
    You need to compare your designed algorithm with the Radon based algorithm. Your designed barcode can be generated in any method 
    which you prefer, there is no a limitation. 
