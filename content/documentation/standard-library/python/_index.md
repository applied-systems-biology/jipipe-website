+++
title = "Python integration"
description = "This library provides nodes that allow to run Python scripts."
weight = 75
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

The standard library contains nodes that allow to run Python scripts using an existing
installation of Python. This means you will need to download [Python](https://www.python.org/),
[Anaconda](https://www.anaconda.com/), or [Miniconda](https://docs.conda.io/en/latest/miniconda.html).

## Setting up Python

You have the option to either select an existing Python environment, or let JIPipe install a new
Conda environment into a folder.

To setup Python, navigate to `Project > Application settings > Extensions > Python integration`.
There you will find a setting `Python environment` that, by default, is not set up.

If you want to select an existing Python environment or let JIPipe handle the installation for you,
choose the `Select/Install` button and select the appropriate operation. Follow the instructions provided
in the newly opened window.

You can also edit existing Python environments by selecting the `Edit` button to, for example,
setup environment variables or change command line parameters.

# Included nodes

You can find the nodes in the `Miscellaneous` menu. You can find algorithms equivalent
to each of the Java standard algorithms:

| Node                                    | Based on                                                                                                | Purpose                                                                                                                                                                                                                         |
| --------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Python script | [JIPipeParameterSlotAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeParameterSlotAlgorithm.html) | This algorithm allows users to run multiple parameter sets by optionally enabling an additional slot `Parameters`.                                                                                                              |
| Python script (simple iterating)        | [JIPipeSimpleIteratingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeAlgorithm.html)            | A JIPipeParameterSlotAlgorithm that has one input slot and iterates over the input rows.                                                                                                                                        |
| Python script (iterating)               | [JIPipeIteratingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeIteratingAlgorithm.html)         | A JIPipeParameterSlotAlgorithm that can have multiple input slots and match annotations of the input data to create data batches.                                                                                               |
| Python script (merging)                 | [JIPipeMergingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeMergingAlgorithm.html)             | A JIPipeParameterSlotAlgorithm that can have multiple input slots and match annotations of the input data to create data batches. The difference to JIPipeIteratingAlgorithm is that a batch can have duplicate items per slot. |

## Common functions

All Python script nodes share a set of variables that are available in the code:

| Variable         | Purpose                                                                                                                                                                                      |
| ---------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `jipipe_inputs`  | A dict of slot name to an instance of [DataSlot](/documentation/standard-library/python/api/#dataslot-objects). Each item represents the input data of the current data batch/current input. |
| `jipipe_outputs` | A dict of slot name to an instance of [DataSlot](/documentation/standard-library/python/api/#dataslot-objects). Each item represents the output data of the current data batch/current output. |

## Data I/O

Python nodes based on [JIPipeSimpleIteratingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeAlgorithm.html),  [JIPipeIteratingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeIteratingAlgorithm.html), and
 [JIPipeMergingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeMergingAlgorithm.html) repeat the script for each data batch (or at least once if there is none).
 Data batches organize the data of various input slots into one bundle that should be processed.

Data access is handled through temporary folders that contain input/output data in JIPipe standardized format. The nodes are supplied with a [Python API](/documentation/standard-library/python/api/)
that allows to read/write data and metadata in this format.

You can choose to not use the reading/writing functions provided by this package and access the input/output folders directly.

{{% notice info %}}
Each JIPipe data type provides information about the structure of the data folder. You can find it in [?] > Data type compendium.
{{% /notice %}}

## Script parameters

Each node provides means to define Python variables inside the JIPipe environment via custom parameters. Each parameter value is passed as variable into Python - the name of the variable
being determined by the unique ID of the parameter.

All Python nodes are multi-parameter capable (including iterating and merging nodes). "Python script (multi-parameter capable)" provides a unique variable `parameter_annotations`
that contains any annotations of the current parameter set.
