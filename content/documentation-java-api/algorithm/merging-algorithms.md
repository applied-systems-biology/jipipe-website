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
ACAQ5 comes with [ACAQMergingAlgorithm](/external/apidocs/org/hkijena/acaq5/api/algorithm/ACAQMergingAlgorithm.html) that uses the annotation attached during processing to find data rows that belong to the same data set. The implementation creates [ACAQMultiDataInterface](/external/apidocs/org/hkijena/acaq5/api/algorithm/ACAQMultiDataInterface.html) instances that represent multiple data rows merged into one group.

{{% notice warning %}}
Please access data via the data interface.
{{% /notice %}}

The only difference to [ACAQAlgorithm](/external/apidocs/org/hkijena/acaq5/api/algorithm/ACAQAlgorithm.html) is that you need to override a different function called `runIteration`.

```java
// Annotates documentation to the algorithm
@ACAQDocumentation(name = "My Algorithm", description = "Does something")

// Sets the algorithm category
@ACAQOrganization(algorithmCategory = ACAQAlgorithmCategory.Processor)

// Input and output slots
@AlgorithmInputSlot(value = ImagePlusData.class, slotName = "Input", autoCreate = true)
@AlgorithmOutputSlot(value = ImagePlusData.class, slotName = "Output", autoCreate = true)
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
    public runIteration(ACAQMultiDataInterface dataInterface, ACAQRunnerSubStatus subProgress, Consumer<ACAQRunnerSubStatus> algorithmProgress, Supplier<Boolean> isCancelled) {
        // Run your workload here
    }
}
```
