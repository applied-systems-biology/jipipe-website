+++
title = "Creating an algorithm"
description = "Explains how to create a custom algorithm"
weight = 30
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

All algorithms inherit from [JIPipeAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeAlgorithm.html). An algorithm consists of following parts:

* A `run()` function that runs the workload
* A reference to an [algorithm info](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeNodeInfo.html) that describes the general properties of the algorithm
* A [slot configuration](/apidocs/org/hkijena/jipipe/api/data/JIPipeSlotConfiguration.html) that describes which slots the algorithm should have

JIPipe comes with different base algorithms that provide different feature sets:

| Algorithm type                                                                                              | Purpose                                                                                                                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [JIPipeAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeAlgorithm.html)                           | The base class of all algorithms. It provides no included functionality outside of absolutely necessary ones.                                                                                                                   |
| [JIPipeParameterSlotAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeParameterSlotAlgorithm.html) | This algorithm allows users to run multiple parameter sets by optionally enabling an additional slot `Parameters`.                                                                                                              |
| [JIPipeSimpleIteratingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeAlgorithm.html)            | A JIPipeParameterSlotAlgorithm that has one input slot and iterates over the input rows.                                                                                                                                        |
| [JIPipeIteratingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeIteratingAlgorithm.html)         | A JIPipeParameterSlotAlgorithm that can have multiple input slots and match annotations of the input data to create data batches.                                                                                               |
| [JIPipeMergingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeMergingAlgorithm.html)             | A JIPipeParameterSlotAlgorithm that can have multiple input slots and match annotations of the input data to create data batches. The difference to JIPipeIteratingAlgorithm is that a batch can have duplicate items per slot. |
| [JIPipeSingleIterationAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeSingleIterationAlgorithm.html)            | A JIPipeParameterSlotAlgorithm that can have multiple inputs and acts like a [JIPipeMergingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeMergingAlgorithm.html) where all data rows are always merged into one batch.                                                                                                                                        |


Any algorithm should have the following basic structure:

{{% notice warning %}}
Commonly, you would utilize more higher-order algorithm classes instead of JIPipeAlgorithm.
Usually you would choose a JIPipeSimpleIteratingAlgorithm (for single inputs), JIPipeIteratingAlgorithm (for multiple inputs), or JIPipeMergingAlgorithm (for merging single/multiple inputs). These classes provide the automated organization of data, multiple parameters, adaptive parameters, and more.
{{% /notice %}}

```java
// Annotates documentation to the algorithm
@JIPipeDocumentation(name = "My Algorithm", description = "Does something")

// Sets the algorithm category
@JIPipeNode(nodeTypeCategory = MiscellaneousNodeTypeCategory.class)

// Input and output slots autoCreate automatically creates the slots if set to true and no slot configuration was provided
@JIPipeInputSlot(value = ImagePlusData.class, slotName = "Input", description="The input", autoCreate = true)
@JIPipeOutputSlot(value = ImagePlusData.class, slotName = "Output", description="The input", autoCreate = true)

// You can add multiple JIPipeCitation annotations to provide citations for this node only
@JIPipeCitation("Additional citation")

public class MyAlgorithm extends JIPipeAlgorithm {

    /*
    This is the main constructor of the algorithm.
    It contains a reference to the algorithm info that contains
    some important metadata
    */
    public MyAlgorithm(JIPipeNodeInfo info) {
        super(info);
    }

    /*
    A deep copy constructor. It is required.
    Please do not forget to deep-copy all important fields
    */
    public MyAlgorithm(MyAlgorithm original) {
        super(original);
        // Deep-copy additional fields here
    }

    /*
    The workload is run in this functon.
    You can also have the ability to inform the user about the current algorithm status
    for more complex algorithms.
    You can also query if the user requested cancellation
    */
    @Override
    public run(JIPipeProgressInfo progress) {
        // Run your workload here
    }
}
```

To register the algorithm and provide it with an Id, use [JIPipeJavaExtension](/apidocs/org/hkijena/jipipe/JIPipeJavaExtension.html):

```java
@Plugin(type = JIPipeJavaExtension.class)
public class MyExtension extends JIPipeDefaultJavaExtension {

    // ... See previous tutorial for other methods
    @Override
    public void register(JIPipe jiPipe, Context context, JIPipeProgressInfo progressInfo) {
        // Registers our algorithm with a unique ID and an icon
        registerNodeType("my-algorithm", MyAlgorithm.class, UIUtils.getIconURLFromResources("actions/viewimage.png"));
    }

}
```
