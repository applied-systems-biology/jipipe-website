+++
title = "Step 9"
weight = 9
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b22-2/step9.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Select the `Export image` node and navigate to its parameters. Unlike the generic data exporter `Export data`, it allows you to change the output type of the generated file from TIFF to PNG or other formats.

Again, set the `Output directory` to `ExampleExports/ViaNodes` with `Output relative to project directory` enabled.

The filename expression set to 

```
"overlay_" + #Filename
```

This would yield a file that is for example named `overlay_blobs.png`.