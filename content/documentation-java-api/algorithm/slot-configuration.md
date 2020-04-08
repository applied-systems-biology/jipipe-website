+++
title = "Customizing slots"
weight = 20
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

In the previous examples, we used the [@AlgorithmInputSlot](/external/apidocs/org/hkijena/acaq5/api/algorithm/AlgorithmInputSlot.html) and [@AlgorithmOutputSlot](/external/apidocs/org/hkijena/acaq5/api/algorithm/AlgorithmOutputSlot.html) annotations with `autoCreate = true`
to automatically configure the slots.

This is not sufficient for more complicated algorithms that require

* Restricting the number of slots
* Restricting the allowed data types
* Users to add more slots or remove existing ones

A custom [ACAQSlotConfiguration](/external/apidocs/org/hkijena/acaq5/api/data/ACAQSlotConfiguration.html) can be used to implement such more advanced behaviors.

For many cases, the default implementation [ACAQMutableSlotConfiguration](/external/apidocs/org/hkijena/acaq5/api/data/ACAQMutableSlotConfiguration.html) is sufficient.

The slot configuration can be overriden during instantiation of the algorithm:

```java
public MyAlgorithm(ACAQAlgorithmDeclaration declaration) {
    super(declaration, ACAQMutableSlotConfiguration.builder().addInputSlot("Input", ImagePlusData.class).restrictOutputTo(ImagePlusData.class).build());
}
```

{{% notice info %}}
The slots of ACAQMutableSlotConfiguration are by default unsealed - meaning that
users can add more slots. Use the seal() functions to prevent this.
{{% /notice %}}

{{% notice warning %}}
Do not create static slot configurations. Each algorithm should have its own instance.
Use a private static function if you want to work outside the capabilities of the builder.
{{% /notice %}}

{{% notice warning %}}
You should keep the @AlgorithmInputSlot and @AlgorithmOutputSlot annotations.
They are required for the algorithm finder and generating tooltips.
{{% /notice %}}
