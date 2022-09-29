+++
title = "Step 8"
weight = 8
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b14/step8.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Go to the `Parameters` tab and examine the filter expression in the category `Filters` (red arrow 1).

The figure shows an expression (by default the expression is empty)

```
TO_NUMBER($"Image composite channel count") == 3
```

This text is called an [expression](/documentation/create-pipelines/expressions/) and determines the filter conditions that determine wether an input data item is pass through the output.

*In the following steps, we will briefly explain the functionality behind the expression.*

{{< notice info >}}
The settings within the `Filters` category correspond to each output of the `Split & filter by annotations` node.
{{< /notice >}}