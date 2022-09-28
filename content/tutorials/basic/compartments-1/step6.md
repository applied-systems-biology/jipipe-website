+++
title = "Step 6"
weight = 6
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/ui/b16/step6.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Now the new input slot of the `Preprocessing` output node will appear (red arrow 1). 

Repeat the same process for the next three input slots, one each for the green and blue fluorescence channel and for the single channel of the blob image (red arrows 2 to 4). 

Please ensure that the following slots are present in the `Preprocessing output` node:

* `Red_3channel` (type should be *Image*)
* `Green_3channel` (type should be *Image*)
* `Blue_3channel` (type should be *Image*)
* `1-channel` (type should be *Image*)