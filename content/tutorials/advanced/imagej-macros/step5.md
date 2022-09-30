+++
title = "Step 5"
weight = 5
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b25/step5.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Now we build-in another macro node, this time we will only use the *Phansalkar* method, as this is judged to be the most successful thresholding method after examining the output of the first macro node. The new node (red arrow 1) was set up as the first one, the macro code (red arrow 2) will run this specific method only (red arrow 3).

```
run("Auto Local Threshold", 
"method=Phansalkar radius=5 parameter_1=0 parameter_2=0 white")
```