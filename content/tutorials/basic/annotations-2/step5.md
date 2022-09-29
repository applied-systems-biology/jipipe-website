+++
title = "Step 5"
weight = 5
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b15/step5.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Enter the same filtering formula for the 1-channel slot (red arrow 1). 

Easiest is to copy-paste the content of the Three-channel slot expression (red arrow 2) and change the channel number to `1` (red arrow 3). 

The formulas now should be:

* Three channels: `TO_NUMBER($"Image composite channel count") == 3`
* 1-channel: `TO_NUMBER($"Image composite channel count") == 1`