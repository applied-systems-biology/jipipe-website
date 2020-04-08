+++
title = "Creating a parameter type"
weight = 60
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Any parameter type must be JSON-serializable via the [Jackson](https://github.com/FasterXML/jackson) library. To create an editor UI, you have to inherit from [ACAQParameterEditorUI](/external/apidocs/org/hkijena/acaq5/ui/grapheditor/settings/ACAQParameterEditorUI.html).

The UI class provides access to the [ACAQParameterHolder](/external/apidocs/org/hkijena/acaq5/api/parameters/ACAQParameterHolder.html) object and the [ACAQParameterAccess](/external/apidocs/org/hkijena/acaq5/api/parameters/ACAQParameterAccess.html) object that encapsulates the getter and setters, as well as additional annotations.

There is also access to the SciJava context object.

{{% notice warning %}}
Please be careful to avoid infinite loops between reloading and setting parameters from UI elements.
{{% /notice %}}

Register the parameter type and its UI in [ACAQJavaExtension](/external/apidocs/org/hkijena/acaq5/ACAQJavaExtension.html):

```java
@Plugin(type = ACAQJavaExtension.class)
public class MyExtension extends ACAQDefaultJavaExtension {

    // ... See previous tutorial for other methods
    @Override
    public void register() {
        registerParameterType(MyParamter.class, MyParameterParameterEditorUI.class, "My parameter", "A custom parameter type");
    }

}
```
