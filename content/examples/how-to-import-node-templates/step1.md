+++
title = "Where are the node templates?"
weight = 1
hidden = true
type="tutorial-step"
tutorial_image = "/img/examples/how-to-import-node-templates/step1.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Begin by starting JIPipe and navigating into a compartment (by default tab `Analysis`). 

Click an empty area to deselect all nodes.

You should see a tab `Node templates` that reveals a list of all existing node templates.

{{< notice info >}}
In the figure, we already have two templates that are stored application-wide (meaning that they are accessible from all projects). 
There is also the option to only store specific templates into the current project.
{{< /notice >}}

There are three options to add more templates into the list:

1. Create a new node template (click [here](/tutorials/intermediate/create-node-templates-1/) for a tutorial)
2. Import templates from a `*.json` file (usually provided via a `Templates.json` file in our tutorials)
3. Download templates from our online repository

This guide will explain options 2 and 3:

* [Importing a JSON file](#step-2)
* [Downloading templates](#step-5)