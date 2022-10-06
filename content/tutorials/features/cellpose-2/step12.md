+++
title = "Step 12"
weight = 12
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b30/step12.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

To check the quality of the segmentation results visually, add a `Convert ROI to RGB` node to the UI (red arrow 1), connect it to the `ROI` output of the `Cellpose (2.x)` node (red arrow 2) and to the `Test` dataset (red arrow 3) of the `Split data randomly (Percentage)` node. 

Observe the output in a viewer (red arrow 4) and notice the high quality of the segmentation (yellow circles outlining the peroxisomes). 