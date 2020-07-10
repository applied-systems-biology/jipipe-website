+++
title = "Customizing slots"
weight = 20
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

In the previous examples, we used the [@AlgorithmInputSlot](/apidocs/org/hkijena/jipipe/api/algorithm/AlgorithmInputSlot.html) and [@AlgorithmOutputSlot](/apidocs/org/hkijena/jipipe/api/algorithm/AlgorithmOutputSlot.html) annotations with `autoCreate = true`
to automatically configure the slots.

This is not sufficient for more complicated algorithms that require

* Restricting the number of slots
* Restricting the allowed data types
* Users to add more slots or remove existing ones

A custom [JIPipeSlotConfiguration](/apidocs/org/hkijena/jipipe/api/data/JIPipeSlotConfiguration.html) can be used to implement such more advanced behaviors.

For many cases, the default implementation [JIPipeMutableSlotConfiguration](/apidocs/org/hkijena/jipipe/api/data/JIPipeMutableSlotConfiguration.html) is sufficient.

The slot configuration can be overriden during instantiation of the algorithm:

```java
public MyAlgorithm(JIPipeAlgorithmDeclaration declaration) {
    super(declaration, JIPipeMutableSlotConfiguration.builder().addInputSlot("Input", ImagePlusData.class).restrictOutputTo(ImagePlusData.class).build());
}
```

{{% notice info %}}
The slots of JIPipeMutableSlotConfiguration are by default unsealed - meaning that
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
