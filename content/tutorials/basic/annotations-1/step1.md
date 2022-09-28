+++
title = "Step 1"
weight = 1
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/ui/b14/step1.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Load the [project file](/tutorials/ui/b14/Tutorial_B14.zip) of this tutorial into JIPipe. 

Select the `Import image` node (red arrow 1), we will use the image properties provided by this node to annotate the data. Use the `Annotations` tab (red arrow 2) to seek the necessary node in the `Annotations > Generate` menu (red arrow 3). 

Add the node `Annotate with image properties` (red arrow 4). 

{{< notice info >}}
The node `Annotate with image properties` can create JIPipe-managed annotations from properties (width, height, physical sizes, ...) of an image. As annotations are preserved during all processing steps, this allows to apply a multitude of powerful operations in later steps.
{{< /notice >}}