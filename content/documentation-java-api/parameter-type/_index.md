+++
title = "Creating a parameter type"
description = "Explains how to create an UI for a parameter"
weight = 60
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

ACAQ5 requires you to register custom parameter types, where they are assigned an unique
identifier. This is done to allow future refactoring without breaking a user's project.

A custom parameter type must be JSON-serializable via the [Jackson](https://github.com/FasterXML/jackson) library.
It is associated to an editor UI that is responsible for updating the parameter value from the GUI.

## Creating an editor

To create an editor UI, you have to inherit from [ACAQParameterEditorUI](/external/apidocs/org/hkijena/acaq5/ui/grapheditor/settings/ACAQParameterEditorUI.html).

The UI class provides access to the [ACAQParameterHolder](/external/apidocs/org/hkijena/acaq5/api/parameters/ACAQParameterHolder.html) object and the [ACAQParameterAccess](/external/apidocs/org/hkijena/acaq5/api/parameters/ACAQParameterAccess.html) object that encapsulates the getter and setters, as well as additional annotations.

There is also access to the SciJava context object.

{{% notice warning %}}
Please be careful to avoid infinite loops between reloading and setting parameters from UI elements.
{{% /notice %}}

## Registering a parameter

Register the parameter type and its UI in [ACAQJavaExtension](/external/apidocs/org/hkijena/acaq5/ACAQJavaExtension.html):

```java
@Plugin(type = ACAQJavaExtension.class)
public class MyExtension extends ACAQDefaultJavaExtension {

    // ... See previous tutorial for other methods
    @Override
    public void register() {
        // You have to provide an unique ID, the parameter class, a method to create a new instance, a method to create a deep copy, and an UI class
        registerParameterType("my-parameter",
                              MyParameter.class,
                              MyParameter::new,
                              p -> p.clone(),
                              "My parameter",
                              "A custom parameter type",
                              MyParameterParameterEditorUI.class);

        // If you have a hierarchy of parameters, you can register the editor for the whole hierarchy:
        registerParameterEditor(MyCollectionBase.class, MyCollectionParameterEditorUI.class);

        // There is a predefined method to register enum values:
        registerEnumParameterType("my-enum", MyEnum.class, "My Enum", "Enum of values");
    }

}
```

{{% notice warning %}}
Do not forget to register all algorithm parameter types. ACAQ5 will throw an error if it detects a missing parameter registration.
{{% /notice %}}

## Making use of the parameter registration

You can use the [parameter type registry](/external/apidocs/org/hkijena/acaq5/api/registries/ACAQParameterTypeRegistry.html) to get a
[parameter type declaration](/external/apidocs/org/hkijena/acaq5/api/parameters/ACAQParameterTypeDeclaration.html). The declaration
provides access to all metadata from the registry.

ACAQ5 comes preinstalled with some common Java types (String, numerics, file and folder paths). You can take a look at the [Parameters Extension package](/external/apidocs/org/hkijena/acaq5/extensions/parameters/package-summary.html) for all default parameters that are provided by ACAQ5.
