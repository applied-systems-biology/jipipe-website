+++
title = "Step 4"
weight = 4
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b25/step4.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Go back to Parameters (red arrow 1) and add the following macro code to the indicated place (red arrow 2) that needs to be executed here (red arrow 3):

```
run("Auto Local Threshold", 
"method=[Try all] radius=5 parameter_1=0 parameter_2=0 white")
```

This example macro executes the 15 local thresholding methods of ImageJ on the blob image, using a radius of 5.