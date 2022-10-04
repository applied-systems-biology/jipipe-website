+++
title = "Step 8"
weight = 8
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b15-1/step8.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Now let's assume that we do not need `Threshold` and `MeanIntensity` again. These can be removed via dedicated nodes.

Add a node `Remove annotation` and configure its `Removed annotations` parameter as following:

```
key == "Threshold" OR key == "MeanIntensity"
```

This will remove all annotations that either have the name/key `Threshold` or `MeanIntensity`.

{{< notice info >}}
`Remove annotation` executes the expression for each annotation to determine if it should be deleted.
{{< /notice >}}
{{< notice tip >}}
You can also remove annotations by their value or implement even more complex filter expressions.
{{< /notice >}}