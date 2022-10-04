+++
title = "Step 7"
weight = 7
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b29/step7.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

This task will be carried out by adding a `Filter ROI by statistics` node (red arrow 1), connecting it to the `ROI` output of the `Cellpose (2.x)` node (red arrow 2), and setting the roundness threshold to 0.7 (red arrow 3):

```
Round > 0.7
```

