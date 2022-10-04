+++
title = "Step 4"
weight = 4
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b15-1/step4.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Let's calculate the difference between the threshold and the mean image intensity.

Add a node `Set/Edit annotations` and navigate to its `Annotations` parameter.

* Set the `Value` to `ABS(TO_NUMBER(MeanIntensity) - TO_NUMBER(Threshold))`
* Set the `Name` to `ThresholdDiff`

On running the node you should notice a new annotation `ThresholdDiff` that is set to the absolute difference between the threshold and mean image intensity.

{{< notice info >}}
`Set/Edit annotations` allows you to create new annotations by setting their value and to combine existing annotations or apply operations on them.
{{< /notice >}}
{{< notice info >}}
`TO_NUMBER` is required, as JIPipe annotations can only store text. Thus, they must be converted to numbers if you want to apply mathematical operations.
{{< /notice >}}