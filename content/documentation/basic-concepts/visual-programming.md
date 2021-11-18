+++
title = "Visual programming"
description = "Explains the basics of visual programming."
weight = 10
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

If you are familiar with ImageJ, you already know how processing is applied in this software: 
All operations are directly applied after selecting them in the graphical user interface (GUI). 
For example, a simple analysis protocol would consist of opening the image via `File > Open`, 
applying a Gaussian Blur filter, and then thresholding the image via Otsu's method.

![Processing in ImageJ](/img/documentation/imagej-example.png)

This allows to easily develop image analysis protocols that can be manually adjusted if needed.
There are two main disadvantages:

1. The exact parameters and the order of functions need to be written down separately
2. The protocol must be executed manually, which is time-consuming if hundreds or thousands of images need to be processed (batch processing)

ImageJ already provides a method to write down any steps applied in the GUI - the macro recorder. These macro scripts also can be 
executed by ImageJ to repeat the recorded steps.
To adapt macros into an automated analysis, or change steps inside the macro (for example, to choose a different filter) requires *programming knowledge* - a skill that is 
hard to acquire. And programmers still need to adapt the script and introduce code to manage data, metadata, and parameters.

An alternative concept to text programming languages are *visual programming languages*. These are based on the idea that data processing pipelines (such as an image analysis workflow)
can be represented as easy-to-understand flow chart. Therefore, the need for programming can be circumvented by just letting users design the flow chart and derive 
all technical details from it.

![Visual programming in ImageJ](/img/documentation/imagej-visual-programming.png)

JIPipe provides such a language for ImageJ that not only allows to write down the processing steps, but also 
handles data, metadata, and batch processing. For example the pipeline shown above can be adapted to JIPipe:

![Visual programming in JIPipe](/img/documentation/imagej-visual-programming-jipipe.png)