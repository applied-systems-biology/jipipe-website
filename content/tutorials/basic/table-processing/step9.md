+++
title = "Step 9"
weight = 9
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b21/step9.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Let us calculate the ratio between the mean value and the area.

Select the `Apply expression per row` node (red arrow 1), open the `Parameters` tab and apply the following changes:

In parameter `Expressions` set the value of `Expression` to `Mean / Area`.

{{< notice info >}}
`Mean` and `Area` reference the mean and area column values of the currently processed row. Always keep in mind that the `Expression` is applied *per row*.
{{< /notice >}}

In parameter `Expressions` set the value of `Column name` to `Density`.

{{< notice info >}}
The meaning of this instruction is that the calculated result of `Mean / Area` will be written into a column `Density` in the output table.

If the column does not exist, the node will automatically create a new one.
{{< /notice >}}