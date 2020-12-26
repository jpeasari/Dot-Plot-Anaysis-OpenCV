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
In this analysis, we are considering only GREEN dots and the program will count the length of a stretch and how many number of that particular stretche is available in the entire image

## CNN analysis
CNN analysis is also termed as a whole methylation. In this analysis, we are considering the whole methylation i.e., irrespective of CG and CHG methylation.So, the program initially convert the entire image to CHH methylation (CG and CHG to Green dots).


