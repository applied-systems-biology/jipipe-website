+++
title = "Step 6"
weight = 6
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b14/step6.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Now we will filter the incoming images based on image properties. Since the next node will be a Split channel operation, we will need to limit our processing to images with three channels. For this we will use an annotations-based filter node. 

Do a search in the upper search bar (red arrow 2) for filters and annotations. The first hit is an example of the node that we need (red arrow 3), this will provide an example of the syntax for filtering. 

{{< notice info >}}
The `Split & filter by annotations` allows to filter the incoming data by the values of their annotation columns. For example, if you provide multiple images that are annotated with the number of channels, you can setup the node to only output the images with three channels.

The node has a configurable number of outputs, each linked to a different filter. This allows to use filtering to split the incoming data into multiple pipeline branches, e.g., into a branch for three channels and one for four channels.
{{< /notice >}}