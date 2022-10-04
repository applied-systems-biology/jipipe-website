+++
title = "Step 2"
weight = 2
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b29/step2.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Add a `Cellpose (2.x)` node to the UI (red arrow 1) and connect it to the `Import images` node (red arrow 2). 

In the `Parameters` tab (red arrow 3) observe the default annotation `Diameter` (which is the size guidance for the objects to be found; red arrow 4) and set the `Average object diameter` parameter to `Enabled` and its value to `120` (red arrow 5). 

Set the segmentation model to `Cytoplasm` (red arrow 6), which is one of the pre-trained models of Cellpose, and it should work well with the general circular shape of the droplets. 