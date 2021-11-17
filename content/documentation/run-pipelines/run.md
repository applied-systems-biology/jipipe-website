+++
title = "Running the whole pipeline"
description = "Explains the Quick Run feature that allows to test and compare different algorithm parameters without recalculating the whole pipeline."
weight = 10
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

JIPipe stores its results in a user-defined *output folder*. After clicking
{{< icon name="fa-cog" size="medium" >}} **Run** (located at the top right corner of a project window)
JIPipe will query the output folder from you.
You can also generate a random folder that will be located on your operating system's temporary directory
by clicking the <img class="inline-image" src="/img/icons/random.png" /> button.

After confirming the settings by clicking {{< icon name="fa-cog" size="medium" >}} **Run now**,
JIPipe will start processing the pipeline.

![Run settings UI](/img/documentation/run-ui.png)

{{% notice tip %}}
You can have as many runs as you want. Runs will not execute in parallel, but be scheduled to wait
until the current run finishes.
{{% /notice %}}

{{% notice tip %}}
The JIPipe output folder is automatically organized in a standardized way, so JIPipe can open a result folder.
You find the "Open analysis output ..."  button in the "Project" menu.
{{% /notice %}}