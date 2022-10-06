+++
title = "Step 10"
weight = 10
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b30/step10.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

In order to utilize a saved model drag the Cellpose model file (a file with a very long name) into JIPipe. This will create a `File list` node as usual.

Alternatively, you can also create a `File list` node manually and use the file browser to select the Cellpose mode (red arrows).

{{< notice info >}}
Cellpose model files look for example like this: "cellpose_residual_on_style_on_concatenation_off_training_2022_10_04_17_53_41.794691"

We do not recommend to rename them, as Cellpose might look for vital information in the file name and will fail to load the model if the information is missing.
{{< /notice >}}
