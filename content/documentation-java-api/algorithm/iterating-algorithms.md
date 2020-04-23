+++
title = "Handling multiple inputs"
weight = 10
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

ACAQ data slots store multiple data rows. This means that algorithms have to
iterate their workload for each input row and generate equivalent output in the
respective output slots.

There can be issues if data from multiple input slots need to be combined (e.g. merge channels into RGB, see [user documentation](/documentation/data_flow#handling-multiple-inputs)). [ACAQAlgorithm](/external/apidocs/org/hkijena/acaq5/api/algorithm/ACAQAlgorithm.html) has no capabilities to help with such cases.

A solution can be [ACAQIteratingAlgorithm](/external/apidocs/org/hkijena/acaq5/api/algorithm/ACAQIteratingAlgorithm.html) that uses the annotation attached during processing to find data rows that belong to the same data set. The implementation creates [ACAQDataInterface](/external/apidocs/org/hkijena/acaq5/api/algorithm/ACAQDataInterface.html) instances that represent one data set iteration.

{{% notice tip %}}
For simple algorithms, ACAQIteratingAlgorithm can be still useful, as a manually created for loop is not required anymore.
{{% /notice %}}

{{% notice warning %}}
Please access data via the data interface. It reads exactly one ACAQData for each input.
{{% /notice %}}

The only difference to [ACAQAlgorithm](/external/apidocs/org/hkijena/acaq5/api/algorithm/ACAQAlgorithm.html) is that you need to override a different function:

```java
// Annotates documentation to the algorithm
@ACAQDocumentation(name = "My Algorithm", description = "Does something")

// Sets the algorithm category
@ACAQAlgorithmMetadata(category = ACAQAlgorithmCategory.Enhancer)

// Input and output slots
@AlgorithmInputSlot(value = ImagePlusData.class, slotName = "Input", autoCreate = true)
@AlgorithmOutputSlot(value = ImagePlusData.class, slotName = "Output", autoCreate = true)

// Optional: Annotate with annotation Ids (you can look up the Ids in the plugin manager)
@GoodForTrait("bioobject-preparations-labeling-uniform")
@BadForTrait("bioobject-preparations-labeling-membrane")

// Optional: Adds / Removes annotations from input
@AddsTrait("bioobject-count-cluster")
@RemovesTrait("image-quality")
public class MyAlgorithm extends ACAQIteratingAlgorithm {

    /*
    This is the main constructor of the algorithm.
    It contains a reference to the algorithm declaration that contains
    some important metadata
    */
    public MyAlgorithm(ACAQAlgorithmDeclaration declaration) {
        super(declaration);
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
    public run(ACAQDataInterface dataInterface, ACAQRunnerSubStatus subProgress, Consumer<ACAQRunnerSubStatus> algorithmProgress, Supplier<Boolean> isCancelled) {
        // Run your workload here
    }
}
```
