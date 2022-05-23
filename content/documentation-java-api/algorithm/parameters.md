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

Use the provided `triggerParameterChange(key)` function to trigger the appropriate parameter change event for a parameter.
Alternatively, you can use the `setParameter(key, value)` method to set parameters.

```java
MyAlgorithm algorithm = new MyAlgorithm(...);

// This will NOT update the UI
algorithm.setRoundness(1.0f);

// Either trigger the event manually
algorithm.setRoundness(1.0f);
algorithm.triggerParameterChange("roundness");

// Or just use the setParameter() function
algorithm.setParameter("roundness", 1.0f);

// DO NOT DO THIS EVER:
algorithm.setRoundness(1.0f);
algorithm.isParameterUIVisible(); // DON'T DO THIS!!! THIS WILL UPDATE THE UI, BUT NOT INFORM DEPENDENT PARAMETERS
```

You can also read parameters via their key using `getParameter()`

```java
MyAlgorithm algorithm = new MyAlgorithm(...);
algorithm.getParameter("roundness", Float.class) // Returns 1.0 
```

## Accessing the whole parameter tree

The mentioned functions `getParameter` and `setParameter` are utilities around [JIPipeParameterTree](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeParameterTree.html),
which manages the whole set of parameters and sub-parameters of a [JIPipeParameterCollection](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeParameterCollection.html).
We recommend to create such an object directly, if you want to access many parameters at once or want to read parameter metadata like names, documentation, annotations, and more.
It also gives you more control on how parameters are accessed (for example it can force using reflection parameters), which can be helpful 
in more special cases.

```java 
MyAlgorithm algorithm = new MyAlgorithm(...);
JIPipeParameterTree tree = new JIPipeParameterTree(algorithm);

// The access object contains the metadata
JIPipeParameterAccess access = tree.getParameters().get("roundness");
access.set(1.0f);

// You can also access sub-parameters (by key or by object)
JIPipeParameterTree.Node subParameterNode = tree.getSourceNode(algorithm.getSubParameter());
subParameterNode.getDescription(); // Access to various settings
```

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

{{% notice tip %}}
Use triggerParameterUIChange() to trigger an update of the UI in the setter function if you have dependencies between parameters. 
This will work for parameters and parameter groups.
{{% /notice %}}

# User-defined parameters

If you want to make it possible for users to create custom parameters, create an [JIPipeDynamicParameterCollection](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeDynamicParameterCollection.html) as sub-parameter.
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
Do not forget to deep-copy the JIPipeDynamicParameterCollection. The class has a copy constructor for
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

You can inherit from [JIPipeCustomParameterCollection](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeCustomParameterCollection.html) to define all parameters manually without the need for an [JIPipeDynamicParameterCollection](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeDynamicParameterCollection.html) or annotations.
