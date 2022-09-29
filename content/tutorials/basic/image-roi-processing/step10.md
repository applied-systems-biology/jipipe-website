+++
title = "Step 10"
weight = 10
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b20/step10.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Go to the Parameters tab of the `Filter ROI by statistics` node (red arrow 1) and use the expression editor (red arrow 2) as shown before to create the filtering formula (red arrow 3):

```
Area > 150 AND Area < 700
```

{{< notice tip >}}
Here you do not need to write `TO_NUMBER(Area)`, as the values are already numeric to begin with. 
Unlike text-based annotations that come from JIPipe's data management functions, `Filter ROI by statistics` extracts its values from ImageJ tables that support numbers.

If you incorporate annotations into your formula, you then should use `TO_NUMBER`, e.g., `TO_NUMBER(numChannels)`.
{{< /notice >}}