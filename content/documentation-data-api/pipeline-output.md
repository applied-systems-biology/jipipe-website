+++
title = "Pipeline output"
weight = 30
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

A pipeline output folder is generated on running a pipeline using the [Run](/documentation/result-analysis/)
function or via other means of running the pipeline and saving the results to the hard drive.

The generated folder follows a hierarchical structure that is based on the location of
data within graph compartments, nodes, and slots. It also contains a copy
of the project that generated the data in a file `project.jip`.

{{<mermaid align="left">}}
graph LR;
Root["/"] --> DataTable["project.jip"];
Root --> Compartment["[Compartment ID]/"];
Compartment --> Node["[Node ID]/"];
Node --> Slot["[Slot ID]/"];
Slot --> DT["Data table"];
{{< /mermaid >}}

* Compartment ID: The human-readable unique ID of the graph compartment the node is located in. This ID can change if the compartment is renamed.
* Node ID: The human-readable unique ID of the generating node. The ID can change if the node is renamed.
* Slot ID: The name of the slot the stores the data
* Data table: An instance of a [data table](/documentation-data-api/data-table). Stores all the data.

The data table contains a property `internal-path` that can be used to recover the node and compartment
the data was generated in.
