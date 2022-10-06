+++
title = "Step 9"
weight = 9
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b30/step9.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

The trained model can be saved from the cache browser (see [Tutorial](/tutorials/basic/exporting-data-1/)), and it can be used directly to visualize the segmentation quality using the test dataset. 

For the latter, use the output model of the training node (red arrow 1) to guide a `Cellpose (2.x)` node (red arrow 2) via connecting the newly trained model to the corresponding input of the `Cellpose (2.x)` node (red arrow 3). 

The data input of the `Cellpose (2.x)` node (red arrow 4) will come from the test output of the random data splitter (red arrow 5). 

In the `Cellpose (2.x)` node parameters, set the diameter to the same value as the model (red rectangle 6). 

Very importantly, set the `Model` to `Custom` (red arrow 7, red rectangle) to have the Cellpose node accept an outside model connection.  