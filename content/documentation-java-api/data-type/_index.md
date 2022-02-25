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

# Data class 

Custom JIPipe data types must inherit from [JIPipeData](/apidocs/org/hkijena/jipipe/api/data/JIPipeData.html). Please implement all required functions as suggested by the interface if it is a non-abstract or interface data type.
## Required annotations

* [@JIPipeDocumentation](/apidocs/org/hkijena/jipipe/api/JIPipeDocumentation.html) provides a name and description
* [@JIPipeStorageDocumentation](/apidocs/org/hkijena/jipipe/core/api/data/JIPipeDataStorageDocumentation.html) explains the structure of the storage folder. This documentation must include a human-readable description of the items contained in the storage directory, as well as a URL to a [JSON Schema](https://www.json-schema.org/) that describes the structure of the directory, including any nested JSON data (if possible)
### Examples for storage documentations 

* Single text file (`*.txt`): https://jipipe.org/schemas/datatypes/string-data.schema.json
* One of multiple image files: https://jipipe.org/schemas/datatypes/imageplus-data.schema.json
* Single JSON file with known structure: https://jipipe.org/schemas/datatypes/path-data.schema.json
* Multiple image files plus JSON metadata with known structure: https://jipipe.org/schemas/datatypes/imageplus-fft-data.schema.json
* Multiple CSV files plus JSON metadata with known structure: https://jipipe.org/schemas/datatypes/plot-data.schema.json

{{% notice tip %}}
Feel free to re-use schemata for different types if the structure matches.
{{% /notice %}}

## Constructor

A data type has no suggested constrains for constructors.

## Reading data

JIPipe reads the data type by calling a static function `importData(JIPipeReadDataStorage, JIPipeProgressInfo)`, which must **be always present in any data type class**.

To allow future abstraction of data storage, JIPipe provides a [JIPipeReadDataStorage](/apidocs/org/hkijena/jipipe/api/data/storage/JIPipeReadDataStorage.html) instance that contains methods for storing data into arbitrary locations. The current only implementation is [JIPipeFileSystemReadDataStorage](/apidocs/org/hkijena/jipipe/api/data/storage/JIPipeFileSystemReadDataStorage.html) that encapsulates an empty and unique directory where data can be written. 


You can use the [getFileSystemPath()](/apidocs/org/hkijena/jipipe/api/data/storage/JIPipeFileSystemReadDataStorage.html#getFileSystemPath--) function to get the absolute path to this directory. As a file system mapping is already present, this has no additional cost.

We recommend to not make use of this function, as non-filesystem backends might create a full copy of all data in a temporary file cache for reading, slowing down the data transfer. We recommend to utilize the provided methods of the interface:

* `resolve` for navigating to sub directories
* `list` for listing items
* `isFile` / `isDirectory` 
* `findFilesByExtension` to find files of interest
* `readJSON` / `readText` / `readBytes` to read data 
* `open` to create an InputStream for reading the data

## Writing data

On implementing JIPipeData interface, you will implement a method `exportData(JIPipeWriteDataStorage, String name, boolean forceName, JIPipeProgressInfo)`

As with reading data, the storage is encapsulated into a dedicated interface, here [JIPipeWriteDataStorage](/apidocs/org/hkijena/jipipe/api/data/storage/JIPipeWriteDataStorage.html). Here, you can again access the file system path via [getFileSystemPath()](/apidocs/org/hkijena/jipipe/api/data/storage/JIPipeFileSystemWriteDataStorage.html#getFileSystemPath--).

We again recommend to utilize non-filesystem functions to improve the performance of other backends:

* `resolve` for navigating to sub directories
* `list` for listing items
* `writeJSON` / `writeText` / `writeBytes` to write data 
* `write` to create an Output for writing the data

Additionally, a name parameter is present and contains information about possible file names. It can be ignored **unless** `forceName` is true. The reason behind this is that then the name is pre-generated in a unique way for saving the data at a non-standard location (e.g. exporting the data). In such cases **all file or folder names** within the storage path should contain the name in some way, **even if the import function cannot load the exported data anymore**.

## Additional methods

There are two optional functions that you can override:

* `display()` shows the data in ImageJ, JIPipe, or any other GUI
* `preview()` generates a GUI component that acts as thumbnail/preview of the contained data

## Registering the data type

To register the data type and provide it with an id, and icon, use [JIPipeJavaExtension](/apidocs/org/hkijena/jipipe/JIPipeJavaExtension.html):

```java
@Plugin(type = JIPipeJavaExtension.class)
public class MyExtension extends JIPipeDefaultJavaExtension {

    // ... See previous tutorial for other methods
    @Override
    public void register() {
        // The two null parameters will be handled in the next tutorials
        // You can leave them null if you want. This is valid.
        registerDataType("my-data", MyData.class, ResourceUtils.getPluginResource("/icons/data-types/data-type.png"));
    }

}
```
# Example

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
    public void exportData(JIPipeWriteDataStorage storage, String name, boolean forceName, JIPipeProgressInfo progress) {
        // This uses the helper function of JIPipeWriteDataStorage
        storage.writeJSON(name + ".json", this);

        // Alternative 1: If you require an OutputStream
        try(OutputStream stream = storage.write(name + ".json")) {
            // Write to OutputStream [...]
        }

        // Alternative 2: You can generate an absolute file path that can be used if no stream-based writing is available:
        Path outputPath = storage.getFileSystemPath().resolve(name + ".json");
        // write to output path [...]
        // The storage backend will automatically ensure that the file is included
    }

    // Do not forget to add this method or JIPipe will refuse to start
    public static MyData importData(JIPipeReadDataStorage storage, JIPipeProgressInfo progress) {
        Path path = storage.findFileByExtension(".json").get();
        return storage.readJSON(path, MyData.class);

        // Alternative options are equivalent to exportData()
    }
}
```

{{% notice tip %}}
You can use JIPipe's JsonUtils class to get access to a Jackson JSON ObjectMapper.
{{% /notice %}}

{{% notice info %}}
Do not forget to override toString(), as the string representation will be displayed in the cache browser.
{{% /notice %}}
