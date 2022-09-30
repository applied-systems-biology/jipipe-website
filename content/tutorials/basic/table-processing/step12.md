+++
title = "Step 12"
weight = 12
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b21/step12.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Select the `Integrate table columns` (red arrow 1) and edit the `Processors` parameters in the `Parameters` tab (red arrow 2): 

Set the `Input column` to the following value:

```
"Density"
```

{{< notice info >}}
If you reference existing columns, always put the name in quotation marks. The function for selecting columns can be heavily customized, as it is expression-based an can under certain circumstances yield unexpected results if the name is typed in as is.

For example, if there is an annotation `Density` set to `XYZ`, and the expression is just set to `Density`, the node would search for a column with the name `XYZ`, as the expression system tries to look for a known value with the *name* `Density`.

This will not happen if you put quotation marks around the column name, e.g., `"Density"`.
{{< /notice >}}


Proceed by choosing the `Average` as a mode of operation (red arrow 4), and provide a name for the new results (e.g., `AVG density`, red arrow 5).  

{{< notice info >}}
The `Output column` does *not* require quotation marks, as it is not an expression - just a text.

You can differentiate expressions from text by the UI design:
1. Expressions are *colored*, while pure text is always black
2. Expressions have an *Edit* button, while pure text has a button to clear the current value.
{{< /notice >}}