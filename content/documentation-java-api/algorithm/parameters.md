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
Then you annotate the getter **and** setter with the same [@JIPipeParameter](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeParameter.html) keys. Also add an [@JIPipeDocumentation](/apidocs/org/hkijena/jipipe/api/JIPipeDocumentation.html) annotation to **either** the getter or setter.

Parameters are automatically serialized and deserialized.

Please make sure to send an event when the parameter is set, so the UI can update.

```java
// ... see previous tutorials
public class MyAlgorithm extends JIPipeIteratingAlgorithm {

    private float roundness = 0.5f;

    // ... see previous tutorials

    @JIPipeParameter("roundness")
    @JIPipeDocumentation(name = "Roundness", description = "Value within [0, 1]")
    public float getRoundness() {
        return roundness;
    }

    @JIPipeParameter("roundness")
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
Your setter can return a boolean. If the output is true, JIPipe considers the value as valid. If false, the JIPipe UI re-loads a valid value via the getter.
{{% /notice %}}
{{% notice warning %}}
Please make sure that your parameter key is unique. Only one getter and one setter should have the same key.
{{% /notice %}}
{{% notice warning %}}
Not all data types are supported. Data types are registered into JIPipe and available via JIPipeUIParametertypeRegistry.getInstance(). In a later tutorial we show how to register custom data types. JIPipe supports common primitives like boolean, int, float, double, String, and all enum data types.
{{% /notice %}}

# Parameter settings

Some parameter types have different styles or other settings that can change the behavior of the parameter editor UI. An example is [StringParameterSettings](/apidocs/org/hkijena/jipipe/extensions/standardparametereditors/ui/parametereditors/StringParameterSettings.html) that allows to change between single-line and multi-line editors.

# Sub-parameters

[JIPipeAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeAlgorithm.html), like any [JIPipeParameterHolder](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeParameterHolder.html) allows sub-parameters.

To create a sub-parameter create a getter to an [JIPipeParameterHolder](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeParameterHolder.html) and annotate it with [@JIPipeParameter](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeSubParameters.html). The key provided with the annotation should be an unique parameter key. The parameters in the sub-parameter instance are automatically displayed as new group in the parameter editor.

{{% notice warning %}}
Please do not forget to listen for the ParameterStructureChangedEvent and pass it to the algorithm's event bus. Otherwise there can be issues with the extension builder.
You can use the registerSubParameter() method in the constructor and copy constructor as a shortcut.
{{% /notice %}}

# User-defined parameters

If you want to make it possible for users to create custom parameters, create an [JIPipeDynamicParameterHolder](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeDynamicParameterHolder.html) as sub-parameter.
You can control the list of allowed parameter types and other settings.

{{% notice warning %}}
Do not forget to deep-copy the JIPipeDynamicParameterHolder. The class has a copy constructor for
such an operation.
{{% /notice %}}
{{% notice warning %}}
Please do not forget to listen for the ParameterStructureChangedEvent and pass it to the algorithm's event bus. Otherwise there can be issues with the extension builder.
JIPipeAlgorithm comes with a pre-made function registerSubParameters() that should be called in the constructors.
{{% /notice %}}

# Full control

You can inherit from [JIPipeCustomParameterHolder](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeCustomParameterHolder.html) to define all parameters manually without the need for an [JIPipeDynamicParameterHolder](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeDynamicParameterHolder.html) or annotations.
