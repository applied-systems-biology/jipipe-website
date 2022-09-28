+++
title = "Step 3"
weight = 3
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/ui/b05-1/step3.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

This will show a list of compatible nodes, i.e., nodes that can accept the datatype from the active node. In this example node, which provides an image file location, the 2nd hit is the proper choice: `Import image` (red arrow 1)

{{< notice info >}}
The node `Import image` consumes a JIPipe-managed `File` data and passes it into ImageJ for importing. The resulting ImageJ image is packaged into a JIPipe-managed image type.
{{< /notice >}}