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
define a custom function for previewing, this only works for data already present in memory.
To allow previewing of data stored in a results folder, you need to suppy a [JIPipeResultDataSlotPreviewUI](/apidocs/org/hkijena/jipipe/ui/resultanalysis/JIPipeAsyncResultDataPlotPreview.html) that loads the data from disk and
generates a preview.
We recommend to use [JIPipeAsyncResultDataPlotPreviewUI](/apidocs/org/hkijena/jipipe/ui/resultanalysis/JIPipeAsyncResultDataPlotPreview.html)
This class will offload the loading and preview generation into a separate thread to prevent the UI from freezing. By default it will use the already defined `importFrom(Path)` method present in the `JIPipeData` class
and use its already defined preview function.

You can override the data loading and other methods for customization.



```java
public class MyDataPreviewUI extends JIPipeAsyncResultDataPlotPreview {

    public MyDataPreviewUI(JTable table) {
      super(table);
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
