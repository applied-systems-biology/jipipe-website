+++
title = "ImageJ integration"
description = "Explains functionality that allows ImageJ to run ACAQ5 algorithms or pipelines."
weight = 60
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

ACAQ5 algorithms and pipelines can be executed from within an ImageJ environment.
There are two ways ACAQ5 integrates back into ImageJ:

1. You can run a pipeline project from a macro/command
2. You can run ACAQ5 algorithms from a macro/command if the slot data types are supported by ImageJ

# Running a pipeline

You can run an ACAQ5 pipeline via the command `Plugins > ACAQ5 > Run ACAQ5 project`. It will ask you
the project file and the output directory.

To run the command via a macro, run:

```
run("Run ACAQ5 project", "parameterFile=<Project>, outputDirectory=<Directory>")
```

{{% notice info %}}
There can be issues using the macro recorder depending on which ImageJ algorithms are used.
This issue is especially prevalent in ImageJ macro algorithm nodes.
{{% /notice %}}

# Running a single algorithm

ACAQ5 algorithms can be run from ImageJ macros/commands if the slot data types are compatible with ImageJ.
By default, this includes any image data type, result tables, and regions of interest (via ROIManager).
If you run the command `Plugins > ACAQ5 > Run ACAQ5 algorithm`, a dialog with all available algorithms,
parameters, and more information is shown.

A difference to the parameter panel of an algorithm within the graph editor UI is that you have to select the
input image.

![Single algorithm setup dialog](/img/documentation/run-single-algorithm.png)

Output data is created according to the *slot name*. For example if the output slot name is `Output`,
the created image window will also be named `Output`.

{{% notice info %}}
Just as in a graph, images are converted automatically to the data type specified by the algorithm.
{{% /notice %}}

{{% notice warning %}}
There may be issues if multiple ROI or result table outputs are generated.
{{% /notice %}}

{{% notice info %}}
There can be issues using the macro recorder depending on which ImageJ algorithm is executed.
This issue is especially prevalent in ImageJ macro algorithm nodes.
{{% /notice %}}
