+++
title = "Macro node"
description = "The macro node allows to run ImageJ macros."
weight = 21
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

The macro node allows to run existing ImageJ macros or execute algorithms that are not directly
available as JIPipe nodes. You will find it in `Images > ImageJ Macro`.

![](/img/documentation/macro_node.png)

# Inputs and outputs

By default, the node has no inputs and outputs. Use to the `+` button to add them.
For example, if you want to process one image and output the processed result,
create one input and one output.

![](/img/documentation/macro_node_with_slots.png)

By default, there are four data types that can be used as input and output:

1. Any image data type
2. Results table
3. ROI List
4. Paths

Depending on the data type, JIPipe converts inputs into a format that can be processed by
an ImageJ macro. The other way around, JIPipe extracts outputs from via modes that are
commonly used in macros.

{{% notice info %}}
Developers can provide their own integrations to add more data types.
{{% /notice %}}

## Image data

**As input:** The image is opened as ImageJ image window, named according to the slot name. We recommend to use the macro command `select(<window name>)` to first select the image window before applying the processing.

**As output:** The image is extracted from an image window, named according to the slot name. Use the `rename()` command to rename outputs accordingly.


**Example** (for the node shown above)
```C
// The input is created as window "Input"
selectWindow("Input");
run("Gaussian Blur...", "sigma=2");
// The node expects an image window "Output"
rename("Output");
```

## Results table

**As input:** The table is opened as ImageJ table window with the same name as the slot. If you set the slot name to `Results`, the special "Results" table is utilized.

**As output:** The table data is extracted from the table with the same name as the slot. If the slot name is `Results`, the special "Results" table is extracted. Please ensure that you use `table.rename(old, new)` to rename the output table to the slot name.

```C
// The input is created as window "Input"
selectWindow("Input");
run("Gaussian Blur...", "sigma=2");
run("Auto Threshold", "method=Default white");
run("Analyze Particles...", "display clear include summarize add");

// Results table output "Results"
// Results table output "Summary"
// ROI list output "ROIs"
```

## ROI data

**As input:** The ROI are added to the ROI manager. The existing ROI manager is cleared.

**As output:** The ROI are extracted from the ROI manager.

{{% notice info %}}
ImageJ currently only supports one ROI Manager. JIPipe cannot work around this issue.
{{% /notice %}}

## Path data

**As input:** Paths are defined as string variable, named according to the input slot name. Please note that the slot name must be a valid variable name.

**As output:** A path is extracted from a results table window (row 0, column 0). We do not recommend to extact paths as output, as ImageJ does not have native handling for such data.

{{% notice warning %}}
We recommend to only use paths as input. The extraction as output is unpredictable, as ImageJ has not a native way to display this type in a way that can be distinguished from result tables.
{{% /notice %}}

# Parameters

The most important parameters are

1. The macro code
2. The list of variables
3. Importer/exporter configurations

![](/img/documentation/macro_node_parameters.png)

The `Code` parameter contains the macro code. You can hide it with `Collapse` or open
the code in a larger editor (in a separate tab).

# Variables

The macro node allows you to create parameters that can be directly accessed from within JIPipe.
The benefit is that those variables can be exported (custom nodes/group node) for ease of use
or applying multiple parameter sets.

![](/img/documentation/macro_node_variables.png)

Click the `Add parameter` button in the `Macro parameters` category to add a variable/parameter.

![](/img/documentation/add_parameter.png)

In the dialog, you have to set following options:

* Select the data type of the parameter
* The `Unique identifier` acts both as identifier inside JIPipe and the variable name inside the macro.
* The `Name` is displayed in the JIPipe GUI
* The `Description` field allows you to provide a documentation displayed at the bottom of the parameter list


## Variables inside macros

On running the macro node, the final code is assembled by adding variables at the top.

Variables are assembled as `var <Unique identifier> = <Value>`.
The values are converted as following:

| JIPipe parameter type | ImageJ macro variable type |
| --------------------- | -------------------------- |
| String                | String                     |
| Byte                  | Integer                    |
| Short                 | Integer                    |
| Double                | Double                     |
| Float                 | Double                     |
| Path                  | String                     |
| Boolean               | Boolean                    |

For example, a Gaussian blur node with a `Sigma` parameter will generate following code:

```C
// Code generated from parameters
var sigma = 2.0;

// Code written in the "Code" parameter
selectWindow("Input");
run("Gaussian Blur...", "sigma=" + sigma);
rename("Output");
```

{{% notice info %}}
Path inputs are converted in a similar way.
{{% /notice %}}

## Importer/export configurations

JIPipe provides standardized components for the data exchange with ImageJ that support multiple options. These are also utilized in the macro node and can be configured in the `ImageJ to JIPipe` and `JIPipe to ImageJ` parameter sections.

For each input and output, one item is generated that supports two options:

* Clicking the button or the "Edit" icon allows to change the importer/exporter type
* Clicking the configuration button allows to override the parameters passed to the importer/exporter

{{% notice info %}}
Override the name to transfer data independent of the slot name.
{{% /notice %}}

![](/img/documentation/macro_node_importers_exporters.png)