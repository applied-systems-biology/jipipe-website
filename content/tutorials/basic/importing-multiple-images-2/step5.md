+++
title = "Step 5"
weight = 5
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b10/step5.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

The file names also need to be annotated. Here we will use a simpler approach via the `Add path to annotations` node (red arrow 1); add this node via any of the ways we have seen before. 

Rename the `Generated annotations` field to `#Filename`, to make it more specific (the default name of Dataset, which is very general). The `#` before the name indicates that this annotation is of primary importance, e.g., the results will be grouped based on annotations that are marked with `#` as especially important. 

{{< notice info >}}
JIPipe uses annotations marked with a `#` to find matching data if multiple inputs are present. For example, if two channels should be merged into a composite image, JIPipe would use the `#`-annotations to find the pairs of matching input images. 
{{< /notice >}}