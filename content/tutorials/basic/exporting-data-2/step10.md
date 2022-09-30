+++
title = "Step 10"
weight = 10
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b22-2/step10.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Move on to the `Export table as XLSX` node. While `Export data` will always export CSV files, this node will instead Excel files. It can even be configured to export multiple tables into one XLSX file.

Again, set the `Output directory` to `ExampleExports/ViaNodes` with `Output relative to project directory` enabled.

The filename expression set to 

```
"measurements_" + #Filename
```

This would yield a file that is for example named `measurements_blobs.xlsx`.