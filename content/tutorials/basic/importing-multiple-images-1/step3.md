+++
title = "Step 3"
weight = 3
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b09/step3.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Use the `Find matching algorithm` option (red arrows 1 and 2) to look for annotation nodes (red arrow 3) that are compatible with the folder node, and choose the Annotate with path properties node (red arrow 4)

{{< notice info >}}
The node `Annotate with path properties` allows to annotate the incoming `File`/`Folder`/`Path` object with information that can be read by JIPipe. As annotations are preserved during the processing steps, this will enable a multitude of advanced operations .

For example, if an image *file* is annotated with some metadata, the annotation is still present if the image file is imported via `Import image`.
{{< /notice >}}

{{< notice info >}}
There is an alternative option to the `Annotate with path properties` node called `Add path to annotations`, which has fewer options, but requires no configuration in simple cases.
{{< /notice >}}