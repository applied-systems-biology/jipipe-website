+++
title = "Custom algorithm declaration"
weight = 30
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

Algorithm instances are created by an [ACAQAlgorithmDeclaration](/external/apidocs/org/hkijena/acaq5/api/algorithm/ACAQAlgorithmDeclaration.html). This declaration
is the object that is actually registered into ACAQ5. It is able to create
new instances of the declared algorithm, or copy it. It also carries basic metadata
such as a name, description, or annotation preferences.

Declarations should be unique and have a unique ID within the ACAQ5 algorithm registry.

On registering an algorithm like in previous tutorials, following code is run:

```java
public void registerAlgorithm(String id, Class<? extends ACAQAlgorithm> algorithmClass) {
    registerAlgorithm(new ACAQJavaAlgorithmRegistrationTask(id, algorithmClass, this));
}
```

The code generates a task that just checks if all algorithm dependencies are loaded.
If all dependencies are available, the task runs:

```java
ACAQAlgorithmRegistry.getInstance().register(new ACAQJavaAlgorithmDeclaration(id, algorithmClass), source);
```

The important bit is [ACAQJavaAlgorithmDeclaration](/external/apidocs/org/hkijena/acaq5/api/algorithm/ACAQJavaAlgorithmDeclaration.html). In the end an algorithm declaration is created
that extract algorithm information from the class annotations.

# Creating a custom declaration

To create a custom declaration, inherit from [ACAQAlgorithmDeclaration](/external/apidocs/org/hkijena/acaq5/api/algorithm/ACAQAlgorithmDeclaration.html). The most important functions are `clone()` and `newInstance()`.
