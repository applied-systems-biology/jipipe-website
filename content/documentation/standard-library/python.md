+++
title = "Python integration"
description = "This library provides nodes that allow to run Python scripts."
weight = 70
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

The standard library contains nodes that allow to run Python scripts using
the [Jython](https://www.jython.org/) library. Python scripts have access to all
JIPipe and ImageJ APIs that are available at runtime.

{{% notice info %}}
Due to restrictions in the Jython library, Python libraries that are built
on a native backend (such as Numpy) will not work.
{{% /notice %}}
{{% notice info %}}
As JIPipe builds on the functionality provided by ImageJ. Please refer to the ImageJ documentation to find information on
how to expand Jython with additional libraries.
{{% /notice %}}

You can find the nodes in the `Miscellaneous` menu. You can find algorithms equivalent
to each of the Java standard algorithms:

| Node                                    | Based on                                                                                                | Purpose                                                                                                                                                                                                                         |
| --------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Python script (multi-parameter capable) | [JIPipeParameterSlotAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeParameterSlotAlgorithm.html) | This algorithm allows users to run multiple parameter sets by optionally enabling an additional slot `Parameters`.                                                                                                              |
| Python script (simple iterating)        | [JIPipeSimpleIteratingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeAlgorithm.html)            | A JIPipeParameterSlotAlgorithm that has one input slot and iterates over the input rows.                                                                                                                                        |
| Python script (iterating)               | [JIPipeIteratingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeIteratingAlgorithm.html)         | A JIPipeParameterSlotAlgorithm that can have multiple input slots and match annotations of the input data to create data batches.                                                                                               |
| Python script (merging)                 | [JIPipeMergingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeMergingAlgorithm.html)             | A JIPipeParameterSlotAlgorithm that can have multiple input slots and match annotations of the input data to create data batches. The difference to JIPipeIteratingAlgorithm is that a batch can have duplicate items per slot. |

## Common functions

All Python script nodes share a set of variables that are available in the code:

| Variable          | Purpose                                                                                                                                                                                                                                                                                                      |
| ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `input_slots`     | A list of all effective input slots. This means, slots like the 'Parameters' slot are not listed here. Each slot is using the Jython API to access the native Java data type. Refer to the [JIPipeDataSlot](/apidocs/org/hkijena/jipipe/api/data/JIPipeDataSlot.html) documentation for further information. |
| `output_slots`    | A list of all output slots.   Each slot is using the Jython API to access the native Java data type. Refer to the [JIPipeDataSlot](/apidocs/org/hkijena/jipipe/api/data/JIPipeDataSlot.html) documentation for further information.                                                                          |
| `input_slot_map`  | A dictionary from input slot name to input slot instance.                                                                                                                                                                                                                                                    |
| `output_slot_map` | A dictionary from output slot name to output slot instance.                                                                                                                                                                                                                                                  |

## Data batch access

Python nodes based on [JIPipeSimpleIteratingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeAlgorithm.html),  [JIPipeIteratingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeIteratingAlgorithm.html), and
 [JIPipeMergingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeMergingAlgorithm.html) repeat the script for each data batch (or at least once if there is none).
 Data batches organize the data of various input slots into one bundle that should be processed. Access to this data batch is provided via a variable `data_batch`.

This variable points to an instance of [JIPipeDataBatch](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeDataBatch.html) (or [JIPipeMergingDataBatch](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeMergingDataBatch.html) for the merging algorithm).

## Script parameters

Each node provides means to define Python variables inside the JIPipe environment via custom parameters. Each parameter value is passed as variable into Python - the name of the variable
being determined by the unique ID of the parameter.

All Python nodes are multi-parameter capable (including iterating and merging nodes). "Python script (multi-parameter capable)" provides a unique variable `parameter_annotations`
that contains any annotations of the current parameter set.
