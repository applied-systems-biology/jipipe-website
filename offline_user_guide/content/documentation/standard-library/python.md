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

You can find the nodes in the `Miscellaneous` menu. You can find algorithms equivalent
to each of the Java standard algorithms:

| Algorithm type                                                                                              | Purpose                                                                                                                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [JIPipeAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeAlgorithm.html)                           | The base class of all algorithms. It provides no included functionality outside of absolutely necessary ones.                                                                                                                   |
| [JIPipeParameterSlotAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeParameterSlotAlgorithm.html) | This algorithm allows users to run multiple parameter sets by optionally enabling an additional slot `Parameters`.                                                                                                              |
| [JIPipeSimpleIteratingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeAlgorithm.html)            | A JIPipeParameterSlotAlgorithm that has one input slot and iterates over the input rows.                                                                                                                                        |
| [JIPipeIteratingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeIteratingAlgorithm.html)         | A JIPipeParameterSlotAlgorithm that can have multiple input slots and match annotations of the input data to create data batches.                                                                                               |
| [JIPipeMergingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeMergingAlgorithm.html)             | A JIPipeParameterSlotAlgorithm that can have multiple input slots and match annotations of the input data to create data batches. The difference to JIPipeIteratingAlgorithm is that a batch can have duplicate items per slot. |

{{% notice info %}}
Due to restrictions in the Jython library, Python libraries that are built
on a native backend (such as Numpy) will not work.
{{% /notice %}}
{{% notice info %}}
As JIPipe builds on the functionality provided by ImageJ. Please refer to the ImageJ documentation to find information on
how to expand Jython with additional libraries.
{{% /notice %}}
