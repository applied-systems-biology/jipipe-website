+++
title = "Step 11"
weight = 11
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b22-2/step11.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Finally, edit the parameters of `Export ROI` node. `Export data` will export a *.roi file if only one ROI is present and otherwise compress all ROIs into a *.zip file. This node can optionally turn off this export behavior and export all ROIs into an individual *.roi file.

Again, set the `Output directory` to `ExampleExports/ViaNodes` with `Output relative to project directory` enabled.

The filename expression set to 

```
"rois_" + #Filename
```

This would yield a file that is for example named `rois_blobs.zip` or `rois_blobs.roi` depending on whether one or multiple ROIs are present.