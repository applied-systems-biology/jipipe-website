+++
title = "Result view"
weight = 10
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

After processing, users should be able to continue processing the data from within
JIPipe. The data instances are cleared from memory after processing, meaning that
the data needs to be loaded from its output folder after processing.

An user interface is shown when a user select a row in the results table.
There are two ways to modify the user interface:

1. Registering additional operations that will be available to users (recommended)
2. Replacing the interface with a custom one

# Adding custom operations

JIPipe already comes with some default operations, such as opening the containing folder.
Any other operation must be added manually to each data type.

There are two types of operations: one for importing data written into a results folder, and one
for displaying already loaded data from memory.
The corresponding interfaces are [JIPipeDataImportOperation](/apidocs/org/hkijena/jipipe/api/data/JIPipeDataImportOperation.html) and [JIPipeDataDisplayOperation](/apidocs/org/hkijena/jipipe/api/data/JIPipeDataDisplayOperation.html).

You can implement one or both interfaces as shown here:

```java
public class MyOperation implements JIPipeDataImportOperation, JIPipeDataDisplayOperation {
    @Override
    public void display(JIPipeData data, String displayName, JIPipeWorkbench workbench) {
        // Here you can pu a custom display function
        // Currently it just uses the default function
        data.display(displayName, workbench);
    }

    @Override
    public String getName() {
        // Name as shown in the menu
        // The name should be unique
        return "Open in JIPipe";
    }

    @Override
    public String getDescription() {
        return "Opens the table in JIPipe";
    }

    @Override
    public int getOrder() {
        // The lower the order the higher it is placed in the menu
        // The lowest ist used as default
        return 100;
    }

    @Override
    public Icon getIcon() {
        return UIUtils.getIconFromResources("apps/jipipe.png");
    }

    @Override
    public JIPipeData show(JIPipeDataSlot slot, JIPipeExportedDataTable.Row row, Path rowStorageFolder, String compartmentName, String algorithmName, String displayName, JIPipeWorkbench workbench) {
        // This function should import the data contained in the rowStorageFolder and display it
        // You can return the data (which is currently not used) or return null
        if (rowStorageFolder == null || !Files.isDirectory(rowStorageFolder))
            return null;
        Path csvFile = PathUtils.findFileByExtensionIn(rowStorageFolder, ".csv");
        if (csvFile != null) {
            ResultsTableData result = JIPipeTableEditor.importTableFromCSV(csvFile, (JIPipeProjectWorkbench) workbench);
            workbench.getDocumentTabPane().switchToLastTab();
            return result;
        }
        return null;
    }
}
```

The operations must be registered in [JIPipeJavaExtension](/apidocs/org/hkijena/jipipe/JIPipeJavaExtension.html) either via the data type ID or when registering a new data type.

{{% notice warning %}}
Currently you have to register all your operations per data type. It its not enough to register them for the base class only.
{{% /notice %}}

```java
@Plugin(type = JIPipeJavaExtension.class)
public class MyExtension extends JIPipeDefaultJavaExtension {

    // ... See previous tutorial for other methods
    @Override
    public void register() {

        // Registering the operation when registering the data type
        registerDataType("my-data", MyData.class, ResourceUtils.getPluginResource("/icons/data-types/data-type.png"), null, null, new MyOperation());

        // alternative ...

        // Registering the operation by itself
        registerDatatypeOperation("my-data", new MyOperation());
    }

}
```

{{% notice tip %}}
You can register an operation for all data types by leaving the data type ID empty.
{{% /notice %}}

# Using a custom interface

This UI can be replaced with a custom one that is designed to handle this specific data type.

Such UIs inherit from [JIPipeResultDataSlotRowUI](/apidocs/org/hkijena/jipipe/ui/resultanalysis/JIPipeResultDataSlotRowUI.html), which is a panel that has access to

* the data location
* the annotation of this data row
* the project workbench UI

We recommend to inherit from [JIPipeDefaultResultDataSlotRowUI](/apidocs/org/hkijena/jipipe/ui/resultanalysis/JIPipeDefaultResultDataSlotRowUI.html) that allows to inherit actions
from inherited data types.

[JIPipeDefaultResultDataSlotRowUI](/apidocs/org/hkijena/jipipe/ui/resultanalysis/JIPipeDefaultResultDataSlotRowUI.html) requires you to register actions with a name, description and function. The action that was added last is shown in the main UI and triggered by double-clicking the data row in the table. All other actions are put into the `...` menu.

```java
public class MyDataDataSlotRowUI extends JIPipeDefaultResultDataSlotRowUI {

    public MyDataDataSlotRowUI(JIPipeProjectWorkbench workbenchUI, JIPipeDataSlot slot, JIPipeExportedDataTable.Row row) {
        super(workbenchUI, slot, row);
    }

    // This method is required because we need to find the JSON file
    // we can load MyData from it
    private Path findJsonFile() {
        if (getRowStorageFolder() != null && Files.isDirectory(getRowStorageFolder())) {
            return PathUtils.findFileByExtensionIn(getRowStorageFolder(), ".json");
        }
        return null;
    }

    @Override
    protected void registerActions() {
        super.registerActions();

        Path jsonFile = findJsonFile();
        if (imageFile != null) {
            registerAction("Show value", "Shows the value as message box",
                    UIUtils.getIconFromResources("open.png"), e -> {
                        MyData data = MyData.fromJson(jsonFile);
                        JOptionPane.showMessageDialog(this, data.value, "The value is ...")
                    });
        }
    }
}
```

The UI class can be directly registered in [JIPipeJavaExtension](/apidocs/org/hkijena/jipipe/JIPipeJavaExtension.html):

```java
@Plugin(type = JIPipeJavaExtension.class)
public class MyExtension extends JIPipeDefaultJavaExtension {

    // ... See previous tutorial for other methods
    @Override
    public void register() {
        // The last null parameter will be handled in the next tutorial
        registerDataType("my-data", MyData.class, ResourceUtils.getPluginResource("/icons/data-types/data-type.png"), MyDataDataSlotRowUI.class, null);
    }

}
```
