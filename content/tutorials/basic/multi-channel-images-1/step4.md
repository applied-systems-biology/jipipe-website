+++
title = "Step 4"
weight = 4
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/ui/b11/step4.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

The image will be split into three channels, as revealed by the image viewer. To set up the Split image node, we need to add three output channels, corresponding to the red, green, and blue channels of the raw image. Click on the “+” sign to add a new slot to the Split channels node (red arrow 1). This will open the Add slot window (red arrow 2), where we search for “image” as data type (red arrow 3). It’s not necessary to be more specific about the image format, the general Image type (red arrow 4) will take care of any conversion automatically. We name the first channel “Red” (red arrow 5) and add the new slot (red arrow 6). 