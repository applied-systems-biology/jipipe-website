+++
title = "Step 10"
weight = 10
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b29/step10.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

The last three nodes will convert the mask back to ROIs (red arrow 1), split them in case more than one full droplet is found (red arrow 2), and show the quality of the segmentation by overlaying the ROIs with the image (red arrow 3). 

{{< notice info >}}
`Mask to ROI` is basically the ImageJ particle finder without the measurements output and filtering settings.
{{< /notice >}}
{{< notice info >}}
`Split multi-component ROI` splits ImageJ ROI that consist of multiple components into their individual basic shapes. This is helpful in our case, as `Mask to ROI` might create compound ROIs.
{{< /notice >}}