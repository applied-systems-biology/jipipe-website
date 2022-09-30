+++
title = "Step 4"
weight = 4
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b22-2/step4.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Now JIPipe will give you options that determine how the file names should be generated. This is required, as JIPipe does not know anymore the name of the original input file unless it is stored in the annotations.

The most important setting is the `File name` expression that defaults to 

```
SUMMARIZE_ANNOTATIONS_MAP(annotations, "#")
```

The expression is applied *for each exported data item* and returns the file name that should be used. The default method will take all known annotations that are marked with a `#` and form a filename based on the following pattern:

```
[Annotation 1 name]=[Annotation 1 value]
```

If you want to know more about `SUMMARIZE_ANNOTATIONS_MAP`, please click `Edit` and search for the function in the function list.

In this case, you can leave the setting as-is.

{{< notice tip >}}
You can build your custom filenames based on annotations. For example, if you just type in `#Filename`, the `#Filename` annotation will be utilized.

You can also create complex filenames by utilizing expression functions. For example, if you want a text `overlay_` in front of all filenames, just type in
```
"overlay_" + #FileName
```
{{< /notice >}}