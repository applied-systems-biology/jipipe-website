+++
title = "About Python nodes"
weight = 1
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b27/step1.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Load the example pipeline. When additional processing is necessary, e.g., with the results table, Python code can also be applied. 

As an example, add the `Python script (iterating)` node (red arrow 1) to the pipeline and connect it to the Find particles node. The Script field (red rectangle 2) will, e.g., print the table into the Log window of JIPipe (red arrow 3), and puts the table into the node’s output slot (red arrow 4).

{{< notice info >}}
Python (and also R) nodes are currently under heavy development and beta-testing. Please report any issue you encounter. 

Extensive changes are planned with the introduction of improved data management features.
{{< /notice >}}