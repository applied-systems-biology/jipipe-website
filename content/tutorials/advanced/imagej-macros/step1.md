+++
title = "Step 1"
weight = 1
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b25/step1.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

{{< notice tip >}}
👉 This tutorial requires that you have installed node template `Import images`.

If you do not have the template, you can download it via `Manage > Download more templates` or by importing the `Templates.json` file that is provided in the data package. If you do not know how to download or import node templates, please check out [our tutorial](/examples/how-to-import-node-templates).
{{< /notice >}}

Create a new project with one compartment.

Drag the [data folder of the tutorial](/tutorials/b25/Tutorial_B25.zip) to the UI. 

Add the `Import images` template from the node templates list. Connect the output of the  `Folder list` node to `Import images`.

Add an `ImageJ Macro` node to the UI (red arrow 1).


Here you *could* add a new input slot (red arrow 2) and configure the node manually, but we will *instead* load an example for convenience reasons.