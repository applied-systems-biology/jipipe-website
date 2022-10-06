+++
title = "Step 8"
weight = 8
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b30/step8.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

The `Cellpose training (2.x)` node is then added (red arrow 1) and connected to the training (red arrow 2) and validation (red arrow 3) output of the `Split data randomly (percentage)` node. 

The number of training epochs (red arrow 4) and the mean diameter of the object that we seek (red arrow 5) are the most important setting here. 

Make sure to activate the GPU if the PC has one (red arrow 6 and 7) to expedite the learning process. 

Finally, the training setting can be easily adjusted in the UI (red rectangle 8). 