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

All algorithms inherit from [ACAQAlgorithm](/external/apidocs/org/hkijena/jipipe/api/algorithm/ACAQAlgorithm.html). An algorithm consists of following parts:

* A `run()` function that runs the workload
* A reference to an [algorithm declaration](/external/apidocs/org/hkijena/jipipe/api/algorithm/ACAQAlgorithmDeclaration.html) that describes the general properties of the algorithm
* A [slot configuration](/external/apidocs/org/hkijena/jipipe/api/data/ACAQSlotConfiguration.html) that describes which slots the algorithm should have

For developing algorithms in Java, you can either directly inherit from [ACAQAlgorithm](/external/apidocs/org/hkijena/jipipe/api/algorithm/ACAQAlgorithm.html) or inherit from [ACAQIteratingAlgorithm](/external/apidocs/org/hkijena/jipipe/api/algorithm/ACAQIteratingAlgorithm.html).

Any algorithm should have the following basic structure:

```java
// Annotates documentation to the algorithm
@ACAQDocumentation(name = "My Algorithm", description = "Does something")

// Sets the algorithm category
@ACAQOrganization(algorithmCategory = ACAQAlgorithmCategory.Processor)

// Input and output slots autoCreate automatically creates the slots if set to true and no slot configuration was provided
@AlgorithmInputSlot(value = ImagePlusData.class, slotName = "Input", autoCreate = true)
@AlgorithmOutputSlot(value = ImagePlusData.class, slotName = "Output", autoCreate = true)
public class MyAlgorithm extends ACAQAlgorithm {

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
    */
    @Override
    public run(ACAQRunnerSubStatus subProgress, Consumer<ACAQRunnerSubStatus> algorithmProgress, Supplier<Boolean> isCancelled) {
        // Run your workload here
    }
}
```

To register the algorithm and provide it with an Id, use [ACAQJavaExtension](/external/apidocs/org/hkijena/jipipe/ACAQJavaExtension.html):

```java
@Plugin(type = ACAQJavaExtension.class)
public class MyExtension extends ACAQDefaultJavaExtension {

    // ... See previous tutorial for other methods
    @Override
    public void register() {
        registerAlgorithm("my-algorithm", MyAlgorithm.class);
    }

}
```
