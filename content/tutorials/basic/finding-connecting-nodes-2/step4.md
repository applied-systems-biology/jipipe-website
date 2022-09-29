+++
title = "Step 4"
weight = 4
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b05-2/step4.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

To connect the `Import image` node to the `File` node, simply draw a line with the mouse, left button pushed, to connect the bottom white zone of the `File` node (red arrow 1) to the top white zone of the `Import image` node (red arrow 2).

{{< notice info >}}
The node `Import image` consumes a JIPipe-managed `File` data and passes it into ImageJ for importing. The resulting ImageJ image is packaged into a JIPipe-managed image type.
{{< /notice >}}