+++
title = "Step 4"
weight = 4
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b30/step4.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Accordingly, we need to read the TIFF and ZIP files separately. 

This can be achieved by establishing two branches, one each for the two file types by the introduction of two `List files` nodes that we renamed to `List TIFF` and `List ZIP` in our figure (red rectangle 1). 

The `List files` node can be configured with a filter expression to only detect specific files. In the case of the the `List ZIP` node, set the expression to 

```
STRING_MATCHES_GLOB(name, "*.zip")
```

For `List TIFF`, set the expression to 

```
STRING_MATCHES_GLOB(name, "*.tif")
```

After the `List TIFF` node, add another `Add path to annotations` to also save the image file name.