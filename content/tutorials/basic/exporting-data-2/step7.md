+++
title = "Step 7"
weight = 7
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b22-2/step7.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

We begin with the `Export data` node. It encapsulates the same functionality as the cache browser's data exporter.

Here we will export the `AVG density` table into a directory `ExampleExports/ViaNodes` relative to the project file. Begin by selecting the node and changing the following parameters:

* `Output directory` to `ExampleExports/ViaNodes` (red arrow 1)
* Enable `Output relative to project directory`. If this is not done, the files will be stored in a [temporary directory](/tutorials/ui/change-temp-directory/) (red arrow 2)

{{< notice warning >}}
`Output relative to project directory` only works if you loaded the project from a *.jip file or have saved it at least once.
{{< /notice >}}

It is common that the type of the output is stored within the filename. To to this in JIPipe, modify the `File name` property as follows:

```
"density_" + #Filename
```

The exporter will use the expression to determine the filename of each exported data item. As the images are annotated with a `#Filename` annotation, we can combine it with a custom text `"density_"` to generate files with that pattern.