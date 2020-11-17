+++
title = "Custom algorithm info"
weight = 40
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

In the previous tutorials we used the standard way of creating algorithms.
This might not be sufficient if you want to generate algorithms, for example
by importing *ImageJ* algorithms, loading algorithms from *JSON* or generate
algorithms for an unknown list of data types.

# How algorithms are registered

Algorithm instances are created by an [JIPipeNodeInfo](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeNodeInfo.html). This info
is the object that is actually registered into JIPipe. It is able to create
new instances of the declared algorithm, or copy it. It also carries basic metadata
such as a name, description, or annotation preferences.

Declarations should be unique and have a unique ID within the JIPipe algorithm registry.

On registering an algorithm like in previous tutorials, following code is run:

```java
public void registerNodeType(String id, Class<? extends JIPipeAlgorithm> algorithmClass) {
    registerNodeType(new JIPipeJavaAlgorithmRegistrationTask(id, algorithmClass, this));
}
```

The code generates a task that just checks if all algorithm dependencies are loaded.
If all dependencies are available, the task runs:

```java
JIPipeAlgorithmRegistry.getInstance().register(new JIPipeNodeInfo(id, algorithmClass), source);
```

The important bit is [JIPipeNodeInfo](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeNodeInfo.html). In the end an algorithm info is created
that extract algorithm information from the class annotations.

# Creating a custom info

To create a custom info, inherit from [JIPipeNodeInfo](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeNodeInfo.html). The most important functions are `clone()` and `newInstance()`.

Register the info either via a direct call to `registerNodeType(JIPipeNodeInfo)` or (recommended) via a task that inherits from [JIPipeNodeRegistrationTask](/apidocs/org/hkijena/jipipe/api/registries/JIPipeNodeRegistrationTask.html). You can inherit from the default implementation [JIPipeDefaultNodeRegistrationTask](/apidocs/org/hkijena/jipipe/api/registries/JIPipeDefaultNodeRegistrationTask.html) that comes with pre-made functionality to check for common dependencies.
The reason behind using a task is that some algorithm-internal classes might require that data types or annotation types are already registered.
