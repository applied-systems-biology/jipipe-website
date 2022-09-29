+++
title = "Step 1"
weight = 1
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b16/step1.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Load the [example pipeline](/tutorials/b16/Tutorial_B16.zip). The output of the workflow is the three channels of the `FluorescentCells` image, and the single channel of the `blobs` image.

Before we start processing these images, we shall separate the processing nodes from the preprocessing nodes. The latter includes the steps that  we have entered until now: folder structure, annotations, image import, image filtering based on annotations, and channel splitting (if necessary). It is easier to organize the pipeline if we now start a new work place as introduced earlier when we discussed compartments.  

{{< notice info >}}
Compartments segment the pipeline into organizational units. The difference between groups and compartments is that groups are separate pipelines and thus subject to limitations.

Compartments on the other hand are are feature of the JIPipe GUI to segment the main project pipeline.
{{< /notice >}}

Begin by navigating to the `Compartments` tab (red arrow 1) and renaming the `Analysis` compartment (red arrow 2) to `Preprocessing` (red arrow 3). 