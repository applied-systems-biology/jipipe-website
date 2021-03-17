+++
title = "R integration"
description = "This library provides nodes that allow to run R scripts."
weight = 80
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

The standard library contains nodes that allow to run R scripts using
the [RCaller](https://github.com/jbytecode/rcaller) library that allows to run any existing R installation.
This means that you will need to install a distribution of [R](https://www.r-project.org/).

{{% notice info %}}
You will need to install R (https://www.r-project.org/) and setup JIPipe to find this installation.
{{% /notice %}}

## Setting up R

If not already done, please install [R](https://www.r-project.org/). Then open JIPipe and
navigate to `Project > Application settings > Extensions > R integration`.

Here you will find two settings `Override R executable` and `Override RScript executable`.
Check if both point to the correct R executables. If they are empty or the paths do not exist,
please set them to the correct paths:

* The R executable should point to R.exe (Windows) or R (RScript). Example: `C:\Program Files\R\R-4.0.4\bin\R.exe` or `/usr/bin/R`
* The RScript executable should point to RScript.exe (Windows) or RScript (Linux). Example: `C:\Program Files\R\R-4.0.4\bin\RScript.exe` or `/usr/bin/RScript`

## Included nodes

You can find the R scripting nodes in the `Miscellaneous` menu. You can find algorithms equivalent
to following Java standard algorithms:

| Node                                    | Based on                                                                                                | Purpose                                                                                                                                                                                                                         |
| --------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| R script (iterating)               | [JIPipeIteratingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeIteratingAlgorithm.html)         | A JIPipeParameterSlotAlgorithm that can have multiple input slots and match annotations of the input data to create data batches.                                                                                               |
| R script (merging)                 | [JIPipeMergingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeMergingAlgorithm.html)             | A JIPipeParameterSlotAlgorithm that can have multiple input slots and match annotations of the input data to create data batches. The difference to JIPipeIteratingAlgorithm is that a batch can have duplicate items per slot. |

Both nodes share a similar R API to communicate with JIPipe - the difference being how many data items can be processed in each iteration. All nodes repeat the script for each data batch (or at least once if there is none).
Data batches organize the data of various input slots into one bundle that should be processed.

## Data I/O

As R is run in a separate environment, the data is communicated by writing it to the hard drive from one process and reading it back inside the other process.
Currently, the nodes are designed for following data types:

| Data type           | As input                           | As output                                                 |
| ------------------- | ---------------------------------- | --------------------------------------------------------- |
| Results table       | Provided as CSV file or data frame | Saved as single CSV file. JIPipe will load this CSV file. |
| Colored Image (RGB) | Not supported                      | Saved as single PNG/TIFF/JPG. JIPipe will load the image. |

Other data types *are* supported, although there are no predefined utility functions to load/save them for now.

### Loading results tables

Result tables can be loaded via the `JIPipe.GetInputAsDataFrame(slot, row=0)` function. The `slot` parameter must be identical to the name of the input slot.
The `row` parameter indicates which item of the current data batch should be returned. Please note that `row` can only be zero if you are using R script (iterating).

If you have multiple rows, you can find their count in `JIPipe.InputSlotRowCounts`

```R
for( i in 1:JIPipe.InputSlotRowCounts$Tables) {
  # Note that the row has zero-based indices
  table <- JIPipe.GetInputAsDataFrame(slot="Tables", row=i-1)
}
```

### Writing result tables

Result tables can be written via a function `JIPipe.AddOutputDataFrame(data, slot, annotations=list())`. This will **add** a new result table to the specified output.
Please note, that you can add *multiple* outputs.

The provided data must be of a type compatible with `write.csv`, like `data.frame`.

Optionally, you can provide a list of annotations that should be added to the specified output data as list of named strings.

```R
library(datasets)
JIPipe.AddOutputDataFrame(iris, "Tables", annotations=list("data set"="Iris"))
```

### Writing plots or other images

As R does not have a dedicated data type for images, the JIPipe API will only provide means to generate a valid output file name.
For this, two methods `JIPipe.AddOutputPNGImagePath(data, slot, annotations=list())` and `JIPipe.AddOutputTIFFImagePath(data, slot, annotations=list())`
are available that produce a path for PNG or TIFF files respectively.

{{% notice info %}}
We recommend to use the 'Image (RGB)' or any other RGB output type. This is due to the R behavior of generating images with indexed colors that are detected as greyscale images by JIPipe.
{{% /notice %}}

```R
library(datasets)

# Generate the output file name
png.file.name <- JIPipe.AddOutputPNGImagePath(slot="Plot")

# Use standard R functions. Write into this file.
png(png.file.name, width = 800, height = 600)
plot(iris$Petal.Length, iris$Petal.Width, pch=21, bg=c("red","green3","blue")[unclass(iris$Species)], main="Edgar Anderson's Iris Data")
dev.off()

# JIPipe will automatically load the data
```

### Reading and writing other data types

Currently, only reading and writing of tables, as well as writing of image data is supported via convience functions.
The node supports all other JIPipe data types, although import and export must be written via custom functions.

JIPipe provides the input of each data item via a dedicated folder that contains all files related to this data.
Use `JIPipe.GetInputFolder(slot, row=0)` get obtain the path to this folder.

Outputs are also expected to be provided in standardized JIPipe format. Use `JIPipe.AddOutputFolder(slot, annotations=list())`
to obtain a valid path to such a folder and register the output.

{{% notice info %}}
Each JIPipe data type provides information about the structure of the data folder. You can find it in [?] > Data type compendium.
{{% /notice %}}

## Script parameters

Each node provides means to define R variables inside the JIPipe environment via custom parameters. Each parameter value is passed as variable into R - the name of the variable
being determined by the unique ID of the parameter.

Independent of the compatibility of a parameter's unique key, all variables are also provided as named list entries in `JIPipe.Variables`.
