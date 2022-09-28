+++
title = "Step 10"
weight = 10
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/ui/b14/step10.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

We use this value for filtering in an expression, where we look for channel numbers equaling 3. 

The figure now shows the default configuration of the `Split & filter by annotations` node that can be opened by selecting the node (red arrow 1) and going to the `Parameters` tab.

Please observe the examples that are provided in the description field (red arrow 2) and in the expression field (red arrow 3):

> One filter is created for each output slot of this node. The filter is an expression that should return a boolean value that indicates whether a data item should be put into the corresponding output.Annotation values are available as variables. 
> If an annotation has spaces special characters, use $ to access its value.
>  
> Examples:
>
>```
> #Dataset CONTAINS "Raw" AND condition EQUALS "mock"
>```
> ```
> TO_NUMBER($"my column")  10
> ```