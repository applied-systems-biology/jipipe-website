+++
title = "Use results in external software"
weight = 30
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

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