+++
title = "Step 5"
weight = 5
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b30/step5.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Cellpose training requires label images or masks.

The can be created directly from ROI, for example via the node `Convert ROI to mask`, given the input image as reference (red arrow 1).

The generated mask  will be dilated before being used for the Cellpose training (red arrow 2). The dilation serves the purpose of adding environment to the manual annotations, which should help the learning process (red arrows 3-5). 

Setting the `Radius` parameter (red arrow 4) to various values may help to optimize the learning process. 