+++
title = "Custom algorithm declaration"
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

Algorithm instances are created by an [JIPipeAlgorithmDeclaration](/apidocs/org/hkijena/jipipe/api/algorithm/JIPipeAlgorithmDeclaration.html). This declaration
is the object that is actually registered into JIPipe. It is able to create
new instances of the declared algorithm, or copy it. It also carries basic metadata
such as a name, description, or annotation preferences.

Declarations should be unique and have a unique ID within the JIPipe algorithm registry.

On registering an algorithm like in previous tutorials, following code is run:

```java
public void registerAlgorithm(String id, Class<? extends JIPipeAlgorithm> algorithmClass) {
    registerAlgorithm(new JIPipeJavaAlgorithmRegistrationTask(id, algorithmClass, this));
}
```

The code generates a task that just checks if all algorithm dependencies are loaded.
If all dependencies are available, the task runs:

```java
JIPipeAlgorithmRegistry.getInstance().register(new JIPipeJavaAlgorithmDeclaration(id, algorithmClass), source);
```

The important bit is [JIPipeJavaAlgorithmDeclaration](/apidocs/org/hkijena/jipipe/api/algorithm/JIPipeJavaAlgorithmDeclaration.html). In the end an algorithm declaration is created
that extract algorithm information from the class annotations.

# Creating a custom declaration

To create a custom declaration, inherit from [JIPipeAlgorithmDeclaration](/apidocs/org/hkijena/jipipe/api/algorithm/JIPipeAlgorithmDeclaration.html). The most important functions are `clone()` and `newInstance()`.

Register the declaration either via a direct call to `registerAlgorithm(JIPipeAlgorithmDeclaration)` or (recommended) via a task that inherits from [JIPipeAlgorithmRegistrationTask](/apidocs/org/hkijena/jipipe/api/registries/JIPipeAlgorithmRegistrationTask.html). You can inherit from the default implementation [JIPipeDefaultAlgorithmRegistrationTask](/apidocs/org/hkijena/jipipe/api/registries/JIPipeDefaultAlgorithmRegistrationTask.html) that comes with pre-made functionality to check for common dependencies.
The reason behind using a task is that some algorithm-internal classes might require that data types or annotation types are already registered.
