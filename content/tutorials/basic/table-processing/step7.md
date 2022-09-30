+++
title = "Step 7"
weight = 7
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b21/step7.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Look for Table processing nodes in the `Tables` menu (red arrow 1) and select the node `Apply expression per row`  (red arrow 2).

Connect the node to the `Measurements` output of the `Simple blob finder`.

{{< notice info >}}
The `Apply expression per row` node applies a custom mathematical expression for each row of the input table. The result of the expression is written into a new or existing column of the same row.

The mathematical expression has access to the annotations of the incoming table, as well as the values of each column within the same row.
{{< /notice >}}