+++
title = "Step 6"
weight = 6
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b30/step6.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

We continue with assigning the annotation masks to the actual images. 

In preparation for this, we first correct the image for illumination inhomogeneities via `Illumination correction 2D` (red arrow 1), where we use `20 px` radius for both `Sigma (X)` and `Sigma (Y)` in underlying Gaussian filter.

Both the image and the annotations are scaled (red arrows 2 and 3) with a factor of 2.5 (red arrow 4 and 5):

* `X axis` set to `width * 2.5`
* `Y axis` set to `height * 2.5`


The raw image and the labels are now merged together via a *data annotations*.

{{< notice info >}}
Data annotations are a special type of annotation that contain JIPipe data instead of text. Data annotations are managed separately from the more commonly used text annotations and thus can share column names.
{{< /notice >}}

`Annotate with data` is utilized to annotate each raw image with its corresponding mask (red arrow 6). This will generate a new column next to the text annotations that can be read by the Cellpose training node.

Finally, connect the annotated data to a node `Split data randomly (percentage)`.