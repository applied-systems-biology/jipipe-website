+++
title = "Table cell view"
weight = 20
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

For some data types, it is more convenient to display a short summary or the whole data
directly within the corresponding cell in result data slot table.

To create such a cell renderer, inherit from [ACAQResultDataSlotCellUI](http://localhost:1313/acaq5/external/apidocs/org/hkijena/acaq5/ui/resultanalysis/ACAQResultDataSlotCellUI.html)

```java
public class MyDataSlotCellUI extends ACAQResultDataSlotCellUI {

    public MyDataSlotCellUI() {
        setOpaque(true);
        setBorder(BorderFactory.createEmptyBorder(4, 4, 4, 4));
    }

    // This is very similar as in MyDataDataSlotRowUI
    private Path findJsonFile(ACAQDataSlot slot, ACAQExportedDataTable.Row row) {
        if (ACAQResultDataSlotCellUI.getRowStorageFolder(slot, row) != null && Files.isDirectory(getRowStorageFolder())) {
            return PathUtils.findFileByExtensionIn(getRowStorageFolder(), ".json");
        }
        return null;
    }

    @Override
    public void render(ACAQProjectWorkbench workbenchUI, ACAQDataSlot slot, ACAQExportedDataTable.Row row) {
        // Set the icon
        setIcon(ACAQUIDatatypeRegistry.getInstance().getIconFor(slot.getAcceptedDataType()));
        Path jsonFile = findListFile(slot, row);
        if (jsonFile != null) {
            MyData data = MyData.fromJson(jsonFile);
            setText(data.getValue());
        } else {
            setText("<Not found>");
        }
    }
}
```
