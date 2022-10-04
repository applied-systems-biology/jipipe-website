+++
title = "Step 1"
weight = 1
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b29/step1.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Load a 1-compartment template into JIPipe and add the `data` folder of [the tutorial](/tutorials/b29/Tutorial_B29.zip) to the UI (red arrow 1). 

{{< notice tip >}}
👉 This tutorial requires that you have installed node template `Import images`.

If you do not have the template, you can download it via `Manage > Download more templates` or by importing the `Templates.json` file that is provided in the data package. If you do not know how to download or import node templates, please check out [our tutorial](/examples/how-to-import-node-templates).
{{< /notice >}}

Drag the `Import images` template node from the Node templates list to the UI and connect it to the `Folders` node (red arrows 2). Run this node and observe that cache browser (red arrow 3) that now shows 20 images of the droplet example (red rectangle 4). 