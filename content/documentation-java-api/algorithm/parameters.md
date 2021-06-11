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

# Accessing parameters from within code

When a user sets a parameter within the UI, it goes through an instance of [JIPipeParameterAccess](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeParameterAccess.html).
This object is responsible for triggering the required events to notify the UI.

If you set a parameter setter via code, you will notice that any open parameter UI does not respond to this change - due to the absence of the [JIPipeParameterAccess.ParameterChangedEvent](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeParameterCollection.ParameterChangedEvent.html).
To notify the UI, you can either trigger this event manually via the `EventBus` of the parameter collection, or use the 
[parameter setter utility](/apidocs/org/hkijena/jipipe/utils/ParameterUtils.html#setParameter-org.hkijena.jipipe.api.parameters.JIPipeParameterCollection-java.lang.String-java.lang.Object-).
This requires the unique key of the parameter, which can be different to the key defined in [@JIPipeParameter](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeParameter.html) (if it is a sub-parameter).

# Parameter settings

Some parameter types have different styles or other settings that can change the behavior of the parameter editor UI. An example is [StringParameterSettings](/apidocs/org/hkijena/jipipe/extensions/standardparametereditors/ui/parametereditors/StringParameterSettings.html) that allows to change between single-line and multi-line editors.

# Sub-parameters

[JIPipeAlgorithm](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeAlgorithm.html), like any [JIPipeParameterCollection](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeParameterCollection.html) allows sub-parameters.

To create a sub-parameter create a getter to an [JIPipeParameterCollection](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeParameterCollection.html) and annotate it with [@JIPipeParameter](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeSubParameters.html). The key provided with the annotation should be an unique parameter key. The parameters in the sub-parameter instance are automatically displayed as new group in the parameter editor.

```java
@JIPipeDocumentation(name = "Gaussian filter")
@JIPipeParameter(value = "gaussian-algorithm")
public GaussianBlur2DAlgorithm getGaussianAlgorithm() {
    return gaussianAlgorithm;
}
```

The [@JIPipeParameter](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeSubParameters.html) annotation allows you to determine various properties, like 
if the sub-parameter should be collapsed or hidden by default.

{{% notice warning %}}
Please do not forget to listen for the ParameterStructureChangedEvent and pass it to the algorithm's event bus. Otherwise there can be issues with the extension builder.
You can use the registerSubParameter() method in the constructor and copy constructor as a shortcut.
{{% /notice %}}

# Conditional parameters

Each parameter collection (including nodes) allow the conditional display of parameters or sub-parameters.
To setup this display, override the [isParameterUIVisible](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeParameterCollection.html#isParameterUIVisible-org.hkijena.jipipe.api.parameters.JIPipeParameterTree-org.hkijena.jipipe.api.parameters.JIPipeParameterAccess-)
method. There are two overloads, one for displaying or hiding single parameters, and one for controlling the display of sub-parameters.

```java
// Example for conditional showing/hidding of single parameters
 @Override
public boolean isParameterUIVisible(JIPipeParameterTree tree, JIPipeParameterAccess access) {
    if (access.getKey().equals("mode"))
        return true;
    if (mode == Mode.Automatic) {
        return !access.getKey().equals("custom-name");
    } else {
        if (access.getKey().equals("ignore-missing-metadata"))
            return true;
        if (access.getKey().equals("missing-string"))
            return true;
        return access.getKey().equals("custom-name");
    }
} 

// Example for sub-parameters
@Override
public boolean isParameterUIVisible(JIPipeParameterTree tree, JIPipeParameterCollection subParameter) {
    if(!scaleToModelSize && subParameter == getScale2DAlgorithm()) {
        return false;
    }
    return super.isParameterUIVisible(tree, subParameter);
}
```

# User-defined parameters

If you want to make it possible for users to create custom parameters, create an [JIPipeDynamicParameterHolder](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeDynamicParameterHolder.html) as sub-parameter.
You can control the list of allowed parameter types and other settings.

```java
// Field that initializes the dynamic parameter collection with all supported parameter types
private JIPipeDynamicParameterCollection scriptParameters = new JIPipeDynamicParameterCollection(true,
            JIPipe.getParameterTypes().getRegisteredParameters().values());
            
public MyClass() {
    registerSubParameter(scriptParameters);
}

public MyClass(MyClass other) {
    this.scriptParameters = new JIPipeDynamicParameterCollection(other.scriptParameters);
    registerSubParameter(scriptParameters);
}

@JIPipeDocumentation(name = "Script parameters")
@JIPipeParameter(value = "script-parameters", persistence = JIPipeParameterPersistence.Object) // Important: Set persistence
public JIPipeDynamicParameterCollection getScriptParameters() {
    return scriptParameters;
}
```

{{% notice warning %}}
Do not forget to deep-copy the JIPipeDynamicParameterHolder. The class has a copy constructor for
such an operation.
{{% /notice %}}
{{% notice warning %}}
Please do not forget to listen for the ParameterStructureChangedEvent and pass it to the algorithm's event bus. Otherwise there can be issues with the extension builder.
JIPipeAlgorithm comes with a pre-made function registerSubParameters() that should be called in the constructors.
{{% /notice %}}
{{% notice warning %}}
We recommend setting the persistence of the getter to JIPipeParameterPersistence.Object. Otherwise, JIPipe will have issues with 
de-serializing the parameter and lose all settings.
{{% /notice %}}

# Full control

You can inherit from [JIPipeCustomParameterHolder](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeCustomParameterHolder.html) to define all parameters manually without the need for an [JIPipeDynamicParameterHolder](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeDynamicParameterHolder.html) or annotations.
