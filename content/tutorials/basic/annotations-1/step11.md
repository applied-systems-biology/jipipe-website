+++
title = "Step 11"
weight = 11
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/ui/b14/step11-1.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

To simplify the creation of expressions, JIPipe includes an expression editor component that shows all available functions and validates the code.

Open the expression editor by clicking the *Edit f(x)* button (red arrow 1) that opens a new window (red arrow 2). 

But before we proceed, we need to establish some fundamentals on how the annotation system and the splitter work:

{{< notice info >}}
The `Split & filter by annotation` node iterates through each individual input data item and executes the user-provided expression where *variables* are set to the column value in the data table (the one you can review in the cache browser).

*Annotations in JIPipe are always strings, thus also all variables that reference annotations are strings.*
{{< /notice >}}