+++
title = "Creating a data type"
description = "Explains how to create custom data types"
weight = 50
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Custom JIPipe data types must inherit from [JIPipeData](/apidocs/org/hkijena/jipipe/api/data/JIPipeData.html). It is required to add an [@JIPipeDocumentation](/apidocs/org/hkijena/jipipe/api/JIPipeDocumentation.html) annotation that provides a name and brief description of the data type.

JIPipe requires that data can be saved to a folder within the output directory. We also
recommend that you include code that can load the data back into JIPipe or ImageJ in some form.

There are no requirements on the constructor of the data type.

The folder that is provided in `storageFilePath` is unique to the data and empty.
The name parameter in `storageFilePath` is usually the data slot name and can be used as template for file names or ignored.


```java
public class MyData implements JIPipeData {
    String value;

    public MyData() {
    }

    // Constructor that initializes the data
    public MyData(String value) {
          this.value = value;
    }

    @JsonGetter("value")
    public String getValue() {
        return value;
    }

    @JsonSetter("value")
    public String setValue(String value) {
        this.value = value;
    }

    // This should return a deep copy
    @Override
    public JIPipeData duplicate() {
        return new MyData(value);
    }

    @Override
    public void saveTo(Path storageFilePath, String name) {
        try {
            JsonUtils.getObjectMapper().writeValue(storageFilePath.resolve(name + ".json").toFile(), this);
        }
        catch(Exception e) {
            throw new RuntimeException(e);
        }
    }

    // We will use this method later to load the data back from disk
    public static MyData fromJson(Path jsonFile) {
      try {
          return JsonUtils.getObjectMapper().readValue(jsonFile.toFile(), MyData.class);
      }
      catch(Exception e) {
          throw new RuntimeException(e);
      }
    }

}
```

{{% notice tip %}}
You can use JIPipe's JsonUtils class to get access to a Jackson JSON ObjectMapper.
{{% /notice %}}

To register the data type and provide it with an id, and icon, use [JIPipeJavaExtension](/apidocs/org/hkijena/jipipe/JIPipeJavaExtension.html):

```java
@Plugin(type = JIPipeJavaExtension.class)
public class MyExtension extends JIPipeDefaultJavaExtension {

    // ... See previous tutorial for other methods
    @Override
    public void register() {
        // The two null parameters will be handled in the next tutorials
        // You can leave them null if you want. This is valid.
        registerDataType("my-data", MyData.class, ResourceUtils.getPluginResource("/icons/data-types/data-type.png"), null, null);
    }

}
```
