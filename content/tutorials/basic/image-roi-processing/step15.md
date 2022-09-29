+++
title = "Step 15"
weight = 15
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b20/step15.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Connect the duplicated node to the filtered `ROI` output (red arrow 1) and to the `1-channel` image (red arrow 2).

Create two new input nodes on the `Processing` compartment output node: one for the filtered ROI measurements, and one for the ROI overlay image. 

Connect the old output slots (red arrows 1-3), as well as the two new ones to the output node (red arrow 4-5). 

Now the statistics are extracted from filtered ROIs.