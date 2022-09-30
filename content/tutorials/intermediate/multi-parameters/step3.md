+++
title = "Step 3"
weight = 3
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b24/step3.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Gaussian blurring and thresholding are both sensitive to their parameter settings. 

Thus it is often useful to test multiple parameters for such nodes by connecting them up to a selection of parameters that can be tested within the same run of the project. 

In JIPipe, multiple parameter sets are defined by a dedicated set of nodes, one of which is termed `Define multiple parameters`. 

Begin by adding `Define multiple parameters` into the pipeline (red arrow 1). Select the node and click the `Edit parameters` option in the node `Parameters` tab (reds arrow 2). 

{{< notice info >}}
`Define multiple parameters` allows you to interactively design parameter sets that are represented as table.
{{< /notice >}}