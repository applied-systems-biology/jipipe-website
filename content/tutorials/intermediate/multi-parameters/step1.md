+++
title = "Step 1"
weight = 1
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b24/step1.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

{{< notice info >}}
Many JIPipe nodes have the ability to apply multiple parameter sets. 
The following steps will guide you through how this feature is used.
{{< /notice >}}

{{< notice tip >}}
👉 This tutorial requires that you have installed node template `Import images`.

If you do not have the template, you can download it via `Manage > Download more templates` or by importing the `Templates.json` file that is provided in the data package. If you do not know how to download or import node templates, please check out [our tutorial](/examples/how-to-import-node-templates).
{{< /notice >}}

Create a new project from the one-compartment template (red arrow 1), open the `Analysis` compartment (red arrow 2).

Download and extract the [data package](/b24/Tutorial_B24.zip) for this tutorial and drag the `data` directory into the `Analysis` compartment.

Click anywhere in the white area of the UI  (red arrow 3) and select the `Node templates` tab (red arrow 4). 

Select the `Import images` group node (red arrow 5) and drag it to the UI (red arrow 6). Connect `Folder list` to the `Import images` input.