+++
title = "Review results"
description = "Explains how to review results."
weight = 20
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Running the [whole pipeline](documentation/run-pipelines/run/) or executing a [quick run](/documentation/run-pipelines/quick-run/) with HDD output will result in a folder that contains all 
output data and the current project file. JIPipe will automatically open an interface that allows you to navigate through the results, and import them back into ImageJ or JIPipe (if supported by the generated data type).
You can also re-open these folders via `Project > Open analysis output ...`.

The UI has two main components:

1. The **slot tree** shows a hierarchy of all data slots. It is organized by [compartment]({{< ref "/documentation/create-pipelines/compartments" >}}), then [algorithm]({{< ref "/documentation/basic-concepts/batch-processing" >}}), and finally [data slot]({{< ref "/documentation/basic-concepts/batch-processing" >}}). By selecting any of the entries, all data associated to the selection or any n-child is displayed.
2. The **output data table** lists the stored data of the selected slot(s) as table (if you are unfamiliar why this is, please take a look at the explanation on [how JIPipe processes data]({{< ref "/documentation/basic-concepts/batch-processing" >}}))

![Result analysis UI](/img/documentation/result-analysis-ui.png)

After selecting a set of slots in the *slot tree* the *output data table* will update to only display the data of the selected slots.
The table has following columns:

* (Optional) **Compartment** shows in which graph compartment the generating algorithm is located
* (Optional) **Algorithm** shows the name of the algorithm that generated the data.
* **Location** is the folder name where the data is located relative to the slot directory
* **Data** shows a string representation of the data row. The contents vary depending on the slot data type. For example, file system data display their path at this location.
* Additional columns correspond to the [data annotations]({{< ref "/documentation/basic-concepts/batch-processing#data-annotations" >}}) that were attached by various algorithms

## Importing results back into JIPipe/ImageJ/...

On selecting one or multiple rows, additional UI elements are displayed below the table. They contain various actions that can be applied to the output data, such
as opening the results directory, importing the data back into ImageJ or JIPipe, or any other operation.

{{% notice tip %}}
Double-click a row to execute the default action, which is the one most commonly used.
{{% /notice %}}


<!-- <p><video src="/img/documentation/result-analysis-navigation.webm" controls loop/></p> -->
