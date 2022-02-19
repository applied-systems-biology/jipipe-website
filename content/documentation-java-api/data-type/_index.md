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
The only requirements are that there is a function `importFrom(Path, JIPipeProgressInfo)` that imports `JIPipeData` from a row storage folder, and an annotation of type
[@JIPipeStorageDocumentation](/apidocs/org/hkijena/jipipe/core/api/data/JIPipeDataStorageDocumentation.html) that explains the structure of the storage folder. This documentation must include a human-readable description of the items contained in the storage directory, as well as a URL to a [JSON Schema](https://www.json-schema.org/) that describes the structure of the directory, including any nested JSON data (if possible). You can build your schema based on following examples:

* Single text file (`*.txt`): https://jipipe.org/schemas/datatypes/string-data.schema.json
* One of multiple image files: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json
* Single JSON file with known structure: https://jipipe.org/schemas/datatypes/path-data.schema.json
* Multiple image files plus JSON metadata with known structure: https://jipipe.org/schemas/datatypes/imageplus-fft-data.schema.json
* Multiple CSV files plus JSON metadata with known structure: https://jipipe.org/schemas/datatypes/plot-data.schema.json

{{% notice tip %}}
Feel free to re-use schemata for different types if the structure matches.
{{% /notice %}}

The folder that is provided in `storageFilePath` is unique to the data and empty.
The name parameter in `storageFilePath` is usually the data slot name and can be used as template for file names. It can be ignored **unless** `forceName` is true.
The reason behind this is that then the name is pre-generated in a unique way for saving the data at a non-standard location (e.g. exporting the data).
In such cases **all file or folder names** within the storage path should contain the name in some way, **even if the import function cannot load the exported data anymore**.

There are two optional functions that you can override:

* `display()` shows the data in ImageJ, JIPipe, or any other GUI
* `preview()` generates a GUI component that acts as thumbnail/preview of the contained data


```java
// Documentation for this data type (for the GUI)
@JIPipeDocumentation(name = "My data", description = "This is some data")

// Human-readable description plus a JSON Schema that describe the structure of a storage folder 
@JIPipeStorageDocumentation(humanReadableDescription = "Contains exactly one *.json file that stores the string value.", 
jsonSchemaURL = "https://jipipe.org/schemas/datatypes/jipipe-json-data.schema.json")

// You can use @JIPipeHidden to hide this data from data type list UIs
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

    // The display method is optional, but recommended
    @Override
    public void display(String displayName, JIPipeWorkbench workbench) {
        JIPipeTextEditor editor = JIPipeTextEditor.openInNewTab(workbench, displayName);
        editor.setMimeType(getMimeType());
        editor.setText(data);
    }

    // The preview method is optional, but recommended for many cases
    // The width and height are guidelines you should adhere to (especially the height)
    @Override
    public Component preview(int width, int height) {
        // This example would overlap with toString()
        return new JLabel(value);
    }

    // Do not forget to override this
    @Override
   public String toString() {
       return StringUtils.orElse(value, "");
   }

    @Override
    public void saveTo(Path storageFilePath, String name, boolean forceName, JIPipeProgressInfo progress) {
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

    // Do not forget to add this method or JIPipe will refuse to start
    public static MyData importFrom(Path rowStorageFolder, JIPipeProgressInfo progress) {
        // You can use the PathUtils
        Path targetFile = PathUtils.findFileByExtensionIn(storageFilePath, ".json");
        return fromJson(targetFile);
    }
}
```

{{% notice tip %}}
You can use JIPipe's JsonUtils class to get access to a Jackson JSON ObjectMapper.
{{% /notice %}}

{{% notice info %}}
Do not forget to override toString(), as the string representation will be displayed in the cache browser.
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
