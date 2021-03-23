+++
title = "Running a pipeline"
description = "Explains how to run a pipeline and navigate through the results."
weight = 40
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

# Result analysis

After all results are generated, the result analysis UI will be automatically opened.
It allows you to navigate through the results, and import them back into ImageJ (if supported by the generated data type).

The UI has two main components:

1. The **slot tree** shows a hierarchy of all data slots. It is organized by [compartment]({{< ref "/documentation/graph-compartment" >}}), then [algorithm]({{< ref "/documentation/batch-pipelines" >}}), and finally [data slot]({{< ref "/documentation/batch-pipelines" >}}). By selecting any of the entries, all data associated to the selection or any n-child is displayed.
2. The **output data table** lists the stored data of the selected slot(s) as table (if you are unfamiliar why this is, please take a look at the explanation on [how JIPipe processes data]({{< ref "/documentation/batch-pipelines" >}}))

![Result analysis UI](/img/documentation/result-analysis-ui.png)

After selecting a set of slots in the *slot tree* the *output data table* will update to only display the data of the selected slots.
The table has following columns:

* (Optional) **Compartment** shows in which graph compartment the generating algorithm is located
* (Optional) **Algorithm** shows the name of the algorithm that generated the data.
* **Location** is the folder name where the data is located relative to the slot directory
* **Data** shows a string representation of the data row. The contents vary depending on the slot data type. For example, file system data display their path at this location.
* Additional columns correspond to the [data annotations]({{< ref "/documentation/batch-pipelines#data-annotations" >}}) that were attached by various algorithms

## Importing results back into JIPipe/ImageJ/...

On selecting one or multiple rows, additional UI elements are displayed below the table. They contain various actions that can be applied to the output data, such
as opening the results directory, importing the data back into ImageJ or JIPipe, or any other operation.

{{% notice tip %}}
Double-click a row to execute the default action, which is the one most commonly used.
{{% /notice %}}


<!-- <p><video src="/img/documentation/result-analysis-navigation.webm" controls loop/></p> -->

## Using third-party software for further analysis

JIPipe stores outputs in a standardized format that can be easily read with third-party software.
The output folder of always contains a file `project.jip`, which is the project that generated the output.

This folder contains sub-folders named according to the graph compartment. The ID is the unique ID of the graph compartment
and can be looked up in the `project.jip` file or the compartment graph editor.

Each of these compartment folders contains a set of additional sub-folders based on
unique ID of the node (also visible in the graph editor).

A node folder contains a set of folders, one for each output slot. This folder may be empty if JIPipe is instructed
to not save the output slot.

Each slot folder contains a metadata file `data-table.json` that contains information about all stored outputs,
including the data type and annotations. The metadata is also usually available as `data-table.csv` file that can be
read more easily. The folder contains sub-folders with numeric names that correspond to the table rows. The contents of
each of these folders is determined by the standardized storage format of the data type (`true-data-type` in the data table).

{{% notice tip %}}
You can open existing project folders in JIPipe. Just go to Project > Open analysis output and select the folder that
contains the project.jip file.
{{% /notice %}}

{{% notice info %}}
We recommend to always copy the whole project folder. This will ensure the highest reproducibility.
{{% /notice %}}

{{% notice info %}}
Slot output folders are used beyond result analysis for importing/exporting cache states and to communicate
with external applications like Python or R. Only the JSON file carries the metadata.
{{% /notice %}}

{{% notice info %}}
A description of the contents of a table row folder can be viewed in the data type compendium (help menu).
{{% /notice %}}

<img src="/img/documentation/output-format.png" width="20%" />
