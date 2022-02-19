+++
title = "Handling multiple inputs"
weight = 10
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

JIPipe data slots store multiple data rows. This means that algorithms have to
iterate their workload for each input row and generate equivalent output in the
respective output slots.

There can be issues if data from multiple input slots need to be combined (e.g. merge channels into RGB, see [user documentation](/documentation/basic-concepts/batch-processing#handling-multiple-inputs)). [JIPipeAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeAlgorithm.html) has no capabilities to help with such cases.

A solution can be [JIPipeIteratingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeIteratingAlgorithm.html) or [JIPipeSimpleIteratingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeSimpleIteratingAlgorithm.html) that use the annotation attached during processing to find data rows that belong to the same data set. The implementation creates [JIPipeDataBatch](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeDataBatch.html) instances that represent one data set iteration.

{{% notice tip %}}
For simple algorithms, we recommend JIPipeSimpleIteratingAlgorithm. It does not have the additional parameters that might confuse some users, but creates the same runIteration(...) command
as JIPipeIteratingAlgorithm. It only works for algorithms with at most one input and will generate error messages if you have more than one input.
{{% /notice %}}

{{% notice warning %}}
Please access data via the data interface. It reads exactly one JIPipeData for each input.
{{% /notice %}}

The only difference to [JIPipeAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeAlgorithm.html) is that you need to override a different function called `runIteration`.

```java
// Annotates documentation to the algorithm
@JIPipeDocumentation(name = "My Algorithm", description = "Does something")

// Sets the algorithm category
@JIPipeNode(nodeTypeCategory = MiscellaneousNodeTypeCategory.class)

// Input and output slots
@JIPipeInputSlot(value = ImagePlusData.class, slotName = "Input", autoCreate = true)
@JIPipeOutputSlot(value = ImagePlusData.class, slotName = "Output", autoCreate = true)
public class MyAlgorithm extends JIPipeIteratingAlgorithm {

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

    Please read and write only via the data interface.
    */
    @Override
    public runIteration(JIPipeDataBatch dataBatch, JIPipeProgressInfo progress) {
        // Run your workload here
    }
}
```
