+++
title = "Step 2"
weight = 2
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b05-3/step2.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

The search option works based on keywords, providing the closest matches. Using `Import image` (red arrow 1) will produce the proper node close to the top results (red arrow 2), from where the node can simply be dragged to the GUI with the mouse, left button down (red arrow 3). 

{{< notice info >}}
The node `Import image` consumes a JIPipe-managed `File` data and passes it into ImageJ for importing. The resulting ImageJ image is packaged into a JIPipe-managed image type.
{{< /notice >}}