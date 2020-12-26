# Identifying RdDM strength based on the methylation pattern.

RNA directed DNA methylation (RdDM). A stretch of methylation signifies strong RdDM, whereas intermittent methylation 
suggest inefficient maintenance of methylation and not RdDM. Here, we were trying to differentiate long stretches from short stretches.

* Types of methylation

  CG - Cytosine is immediately follwed any a Guanine
  
  CHG - Cytosine followed by any nucleotide, expect Gaunine and immediately followed by A Guanine
  
  CHH - No Gaunine around Cytosine nucleotide
  

* Types of methylation pattern analysis

<p float="left">
  <img src="Samples/Picture1.png" width="200"/>
  <img src="Samples/Picture3.png" width="170" /> 
  <img src="Samples/Picture4.png" width="100" /> 
</p>
<p>
    <em>CHH analysis and CNN analysis</em>
</p>

## CHH analysis
In this analysis, we are considering only Green dots and the program will count the length of a stretch and how many number of that particular stretche is available in the entire image.

## CNN analysis
CNN analysis is also termed as a whole methylation. In this analysis, we are considering the whole methylation i.e., irrespective of CG and CHG methylation. So, the program initially convert the entire image to an image with only Green dots (CG and CHG to Green dots).

```
System requirements
1.Windows or Mac OS
2.Python 3.7
3.Anaconda3-2020
4.Jupyter Notebook

```
## Methodology

In this analysis, OpenCV library was used to detect the stretches from the dot plots. Template matching strategy from the OpenCV was used.
The Template matching is a technique, by which a patch or template can be matched from an actual image. This is basically a pattern matching mechanism.
In Python there is OpenCV module. Using OpenCV, we can easily find the match. So, in this problem, the OpenCV template matching techniques are used.
For template matching task, there is an accuracy factor, this factor is known as threshold. As an example, we can say that we can easily create face recognizing scheme using this template matching solution. We can provide some images of eyes or any other parts of faces, then using those images as template, it can easily find the match, but there are different variations in eyes. So, if we set the accuracy level to 50%, it will detect better than accuracy level 100%.Generally, the accuracy level is 80% in different cases.

Steps to match Templates

•	Take the actual image and convert it into a gray scale image.

•	Take template as gray scale image.

•	The template slides over the actual image and find the location where accuracy level matches.

•	When result is greater than the accuracy level, mark that position as detected.

<p float="left">
  <img src="Samples/Picture1.png" width="200"/>
</p>
<p>
    <em>CHH analysis and CNN analysis</em>
</p>





