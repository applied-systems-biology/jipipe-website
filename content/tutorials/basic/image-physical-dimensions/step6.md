+++
title = "Step 6"
weight = 6
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b19/step6.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

We will now apply a look-up table (LUT) to one of the channels.

To do this, use the search bar (red arrow 1) to add the following nodes:

* `Set LUT (color map)` (red arrow 3)
* `Apply LUT` (red arrow 2)

Connect the input of `Set LUT (color map)` node to the `Red` output of `Split channels: three channels R, G, B order`.

Then connect the output of `Set LUT (color map)` to the input of `Apply LUT`

{{< notice info >}}
`Set LUT (color map)` sets the image LUT to a predefined color map. There are also alternative options that generate LUT via two color parameters or apply the LUT from an 1x256 image.
{{< /notice >}}

{{< notice info >}}
`Apply LUT` renders an image with a LUT to an RGB image.
{{< /notice >}}
