+++
title = "Preview from results folder"
weight = 20
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

While [JIPipeData](/apidocs/org/hkijena/jipipe/api/data/JIPipeData.html) allows you to
define a function for previewing, this only works for data already present in memory.
To allow previewing of data stored in a results folder, you need to suppy a [JIPipeResultDataSlotPreviewUI](/apidocs/org/hkijena/jipipe/ui/resultanalysis/JIPipeResultDataSlotPreviewUI.html) that loads the data from disk and
generates a preview.
We recommend to use [JIPipeAsyncResultDataPlotPreviewUI](/apidocs/org/hkijena/jipipe/ui/resultanalysis/JIPipeAsyncResultDataPlotPreviewUI.html),
which only requires you to supply a method for loading the data from disk. This class will offload the loading and
preview generation into a separate thread to prevent the UI from freezing.

```java
public class MyDataPreviewUI extends JIPipeAsyncResultDataPlotPreviewUI {

    public MyDataPreviewUI(JTable table) {
      super(table);
    }

    @Override
    protected JIPipeData loadData(Path storageFolder) {
        Path jsonFile = PathUtils.findFileByExtensionIn(storageFolder, ".json");
        return MyData.fromJson(jsonFile);
    }
}
```

The preview class is registered as last argument of `registerDataType()`:

```java
@Plugin(type = JIPipeJavaExtension.class)
public class MyExtension extends JIPipeDefaultJavaExtension {

    // ... See previous tutorial for other methods
    @Override
    public void register() {
        // The last null parameter will be handled in the next tutorial
        registerDataType("my-data", MyData.class, ResourceUtils.getPluginResource("/icons/data-types/data-type.png"), MyDataDataSlotRowUI.class, MyDataPreviewUI.class);
    }

}
```
