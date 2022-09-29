+++
title = "Step 1"
weight = 1
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/ui/b17/step1.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Load the [example pipeline](/tutorials/ui/b17/Tutorial_B17.zip). 

In the `Processing` compartment, disconnect the output node from the `Auto threshold 2D` node (red arrow 1). 

Locate the particle finder node by searching with keywords (red arrow 2, e.g., in the `Find matching algorithm` window. Chose the `Find particles 2D` node (red arrow 3) and add it to the pipeline (red arrow 4).

{{< notice info >}}
The `Find particles 2D` node is the JIPipe equivalent of the ImageJ command `Analyze > Analyze Particles...`.
{{< /notice >}}