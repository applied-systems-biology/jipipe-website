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

To create such a cell renderer, inherit from [JIPipeResultDataSlotCellUI](http://localhost:1313/jipipe/apidocs/org/hkijena/jipipe/ui/resultanalysis/JIPipeResultDataSlotCellUI.html)

```java
public class MyDataSlotCellUI extends JIPipeResultDataSlotCellUI {

    public MyDataSlotCellUI() {
        setOpaque(true);
        setBorder(BorderFactory.createEmptyBorder(4, 4, 4, 4));
    }

    // This is very similar as in MyDataDataSlotRowUI
    private Path findJsonFile(JIPipeDataSlot slot, JIPipeExportedDataTable.Row row) {
        if (JIPipeResultDataSlotCellUI.getRowStorageFolder(slot, row) != null && Files.isDirectory(getRowStorageFolder())) {
            return PathUtils.findFileByExtensionIn(getRowStorageFolder(), ".json");
        }
        return null;
    }

    @Override
    public void render(JIPipeProjectWorkbench workbenchUI, JIPipeDataSlot slot, JIPipeExportedDataTable.Row row) {
        // Set the icon
        setIcon(JIPipeUIDatatypeRegistry.getInstance().getIconFor(slot.getAcceptedDataType()));
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
