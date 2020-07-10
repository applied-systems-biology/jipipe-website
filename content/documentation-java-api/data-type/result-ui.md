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
This UI can be replaced with a custom one that is designed to handle this specific data type.

Such UIs inherit from [ACAQResultDataSlotRowUI](/external/apidocs/org/hkijena/jipipe/ui/resultanalysis/ACAQResultDataSlotRowUI.html), which is a panel that has access to

* the data location
* the annotation of this data row
* the project workbench UI

We recommend to inherit from [ACAQDefaultResultDataSlotRowUI](/external/apidocs/org/hkijena/jipipe/ui/resultanalysis/ACAQDefaultResultDataSlotRowUI.html) that allows to inherit actions
from inherited data types.

[ACAQDefaultResultDataSlotRowUI](/external/apidocs/org/hkijena/jipipe/ui/resultanalysis/ACAQDefaultResultDataSlotRowUI.html) requires you to register actions with a name, description and function. The action that was added last is shown in the main UI and triggered by double-clicking the data row in the table. All other actions are put into the `...` menu.

```java
public class MyDataDataSlotRowUI extends ACAQDefaultResultDataSlotRowUI {

    public MyDataDataSlotRowUI(ACAQProjectWorkbench workbenchUI, ACAQDataSlot slot, ACAQExportedDataTable.Row row) {
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

The UI class can be directly registered in [ACAQJavaExtension](/external/apidocs/org/hkijena/jipipe/ACAQJavaExtension.html):

```java
@Plugin(type = ACAQJavaExtension.class)
public class MyExtension extends ACAQDefaultJavaExtension {

    // ... See previous tutorial for other methods
    @Override
    public void register() {
        // The last null parameter will be handled in the next tutorial
        registerDataType("my-data", MyData.class, ResourceUtils.getPluginResource("/icons/data-types/data-type.png"), MyDataDataSlotRowUI.class, null);
    }

}
```
