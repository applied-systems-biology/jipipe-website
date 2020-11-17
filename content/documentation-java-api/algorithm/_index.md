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


Any algorithm should have the following basic structure:

```java
// Annotates documentation to the algorithm
@JIPipeDocumentation(name = "My Algorithm", description = "Does something")

// Sets the algorithm category
@JIPipeOrganization(nodeTypeCategory = MiscellaneousNodeTypeCategory.class)

// Input and output slots autoCreate automatically creates the slots if set to true and no slot configuration was provided
@AlgorithmInputSlot(value = ImagePlusData.class, slotName = "Input", autoCreate = true)
@AlgorithmOutputSlot(value = ImagePlusData.class, slotName = "Output", autoCreate = true)
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
    public void register() {
        // Registers our algorithm with a unique ID and an icon
        registerNodeType("my-algorithm", MyAlgorithm.class, UIUtils.getIconURLFromResources("actions/viewimage.png"));
    }

}
```
