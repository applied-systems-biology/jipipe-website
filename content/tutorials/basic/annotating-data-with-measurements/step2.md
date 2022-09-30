+++
title = "Step 2"
weight = 2
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b23/step2.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Add the node `Annotate data with table values` to the UI (red arrow 1). 

In the `Parameters` tab (red arrow 2) add the average density as an image annotation (red arrows 3 and 4). 

Each annotation consists of two parts:

1. The `Name` is the name of the annotation. Set it to `"Density"`. Please note that this is an expression (as the text is colored) and text should be put into quotes.
2. The `Value` setting generates the annotation value. It has access to all incoming annotations and variables that contain all values of each table column. Set it to `FIRST_OF($"AVG density")

{{< notice info >}}
The `Value` setting is provided with access to the annotations of the data (for example you can access the `#Filename` annotation), as well as variables that contain all values of the column with the same name.

In our case, we have a input table column `AVG density`. The `AVG density` variable inside the expression will be a list that contains all the `AVG density` values: 

```
AVG density = [ 1.06705, 0, 0, 0, 0, ... ]
```

All other columns will also be available: 

```
Solidity = [ 0.91845, 0.94189, 0.97469, ... ]
SliceZ = [ 0, 0, 0, ...]
SliceC = [ 0, 0, 0, ...]
...
```

If we type in `AVG density` into the expression, it fails because of the space character. This is why the variable is accessed via `$"AVG density"`, which is a special operator designed to handle such issues.

The valid expression then would be 

```
$"AVG density"
```

This will create an annotation with the name `Density` and the value `[ 1.06705, 0, 0, 0, 0, ... ]`, as there are multiple values in a column. To only access the first of these items, we used `FIRST_OF`:

```
FIRST_OF($"AVG density")
```

Depending on your project, you might want other integration functions, e.g., `SUM($"AVG density")`, `MEAN($"AVG density")`, or access the second number via `GET_ITEM($"AVG density", 1)`.


{{< /notice >}}