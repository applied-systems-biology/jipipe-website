+++
title = "Parameters"
weight = 30
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

You can add parameters to your algorithm by creating a property with a getter and setter.
Then you annotate the getter **and** setter with the same [@ACAQParameter](/external/apidocs/org/hkijena/acaq5/api/parameters/ACAQParameter.html) keys. Also add an [@ACAQDocumentation](/external/apidocs/org/hkijena/acaq5/api/ACAQDocumentation.html) annotation to **either** the getter or setter.

Parameters are automatically serialized and deserialized.

Please make sure to send an event when the parameter is set, so the UI can update.

```java
// ... see previous tutorials
public class MyAlgorithm extends ACAQIteratingAlgorithm {

    float roundness = 0.5f;

    // ... see previous tutorials

    @ACAQParameter("roundness")
    @ACAQDocumentation(name = "Roundness", description = "Value within [0, 1]")
    public float getRoundness() {
        return roundness;
    }

    @ACAQParameter("roundness")
    public boolean setRoundness(float roundness)  {
        if(roundness < 0 || roundness > 1)
            return false; // Reject this value
        this.roundness = roundness;
        // Send the change out to listeners
        getEventBus().post(new ParameterChangedEvent(this, "roundness"));
    }

}
```

{{% notice tip %}}
Your setter can return a boolean. If the output is true, ACAQ considers the value as valid. If false, the ACAQ UI re-loads a valid value via the getter.
{{% /notice %}}
{{% notice warning %}}
Please make sure that your parameter key is unique. Only one getter and one setter should have the same key.
{{% /notice %}}
{{% notice warning %}}
Not all data types are supported. Data types are registered into ACAQ and available via ACAQUIParametertypeRegistry.getInstance(). In a later tutorial we show how to register custom data types. ACAQ supports common primitives like boolean, int, float, double, String, and all enum data types.
{{% /notice %}}

# Parameter settings

Some parameter types have different styles or other settings that can change the behavior of the parameter editor UI. An example is [StringParameterSettings] (http://localhost:1313/acaq5/external/apidocs/org/hkijena/acaq5/extensions/standardparametereditors/ui/parametereditors/StringParameterSettings.html) that allows to change between single-line and multi-line editors.

# Sub-parameters

[ACAQAlgorithm](/external/apidocs/org/hkijena/acaq5/api/algorithm/ACAQAlgorithm.html), like any [ACAQParameterHolder](/external/apidocs/org/hkijena/acaq5/api/parameters/ACAQParameterHolder.html) allows sub-parameters.

To create a sub-parameter create a getter to an [ACAQParameterHolder](/external/apidocs/org/hkijena/acaq5/api/parameters/ACAQParameterHolder.html) and annotate it with [@ACAQSubParameters](/external/apidocs/org/hkijena/acaq5/api/parameters/ACAQSubParameters.html). The key provided with the annotation should be an unique parameter key. The parameters in the sub-parameter instance are automatically displayed as new group in the parameter editor.

{{% notice warning %}}
Please do not forget to listen for the ParameterStructureChangedEvent and pass it to the algorithm's event bus. Otherwise there can be issues with the extension builder.
{{% /notice %}}

# User-defined parameters

If you want to make it possible for users to create custom parameters, create an [ACAQDynamicParameterHolder](/external/apidocs/org/hkijena/acaq5/api/parameters/ACAQDynamicParameterHolder.html) as sub-parameter.
You can control the list of allowed parameter types and other settings.

{{% notice warning %}}
Do not forget to deep-copy the ACAQDynamicParameterHolder. The class has a copy constructor for
such an operation.
{{% /notice %}}
{{% notice warning %}}
We currently recommend only to use Java primitives in ACAQDynamicParameterHolder, as we cannot easily control the copying in other object types.
{{% /notice %}}
{{% notice warning %}}
Please do not forget to listen for the ParameterStructureChangedEvent and pass it to the algorithm's event bus. Otherwise there can be issues with the extension builder.
{{% /notice %}}

# Full control

You can inherit from [ACAQCustomParameterHolder](/external/apidocs/org/hkijena/acaq5/api/parameters/ACAQCustomParameterHolder.html) to define all parameters manually without the need for an [ACAQDynamicParameterHolder](/external/apidocs/org/hkijena/acaq5/api/parameters/ACAQDynamicParameterHolder.html) or annotations.
