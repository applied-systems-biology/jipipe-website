+++
title = "Merging input data"
weight = 15
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

You might need to develop an algorithm that does not simply iterate through its input(s),
but organize it into groups to be merged.
JIPipe comes with [JIPipeMergingAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeMergingAlgorithm.html) that uses the annotation attached during processing to find data rows that belong to the same data set. The implementation creates [JIPipeMergingDataBatch](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeMergingDataBatch.html) instances that represent multiple data rows merged into one group.

{{% notice warning %}}
Please access data via the data interface.
{{% /notice %}}

The only difference to [JIPipeAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeAlgorithm.html) is that you need to override a different function called `runIteration`.

```java
// Annotates documentation to the algorithm
@JIPipeDocumentation(name = "My Algorithm", description = "Does something")

// Sets the algorithm category
@JIPipeNode(nodeTypeCategory = MiscellaneousNodeTypeCategory.class)

// Input and output slots
@JIPipeInputSlot(value = ImagePlusData.class, slotName = "Input", description="The input", autoCreate = true)
@JIPipeOutputSlot(value = ImagePlusData.class, slotName = "Output", description="The output", autoCreate = true)
public class MyAlgorithm extends JIPipeMergingAlgorithm {

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
    public runIteration(JIPipeMergingDataBatch dataBatch, JIPipeProgressInfo progress) {
        // Run your workload here
    }
}
```
