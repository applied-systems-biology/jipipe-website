+++
title = "Creating an annotation"
description = "Explains how to create a custom annotation type"
weight = 40
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

{{% notice tip %}}
We recommend creating annotation types via the extension builder.
{{% /notice %}}

Annotations inherit from [ACAQTrait](/external/apidocs/org/hkijena/acaq5/api/traits/ACAQTrait.html) or [ACAQDiscriminator](/external/apidocs/org/hkijena/acaq5/api/traits/ACAQDiscriminator.html).

```java
public class MyTrait implements ACAQTrait {

}

public class MyDiscriminator implements ACAQDiscriminator {
    String value;

    public MyDiscriminator() {

    }

    public MyDiscriminator(String value) {
        this.value = value;
    }

    @Override
    public String getValue() {
        return value;
    }
}
```

Add the `@ACAQHidden` annotation to prevent users from assigning the annotation
manually. It still is shown as inherited annotation and can be manipulated
as such by algorithms. For example, a whole annotation category can be removed
by an algorithm.

To register the annotation and provide it with an Id, use [ACAQJavaExtension](/external/apidocs/org/hkijena/acaq5/ACAQJavaExtension.html):

```java
@Plugin(type = ACAQJavaExtension.class)
public class MyExtension extends ACAQDefaultJavaExtension {

    // ... See previous tutorial for other methods
    @Override
    public void register() {
        // You have to provide an icon. You can use the ACAQ5 icon library for this
        registerAlgorithm("my-trait", MyTrait.class, ResourceUtils.getPluginResource("/icons/traits/wind-orange.png"));
    }

}
```

{{% notice tip %}}
ACAQ5 comes with almost 1000 icons in five color variants that were provided by FontAwesome.
You can access them via ACAQ ResourceUtils in the subfolder icons/traits.
The same icons are also available via the extension builder.
{{% /notice %}}
