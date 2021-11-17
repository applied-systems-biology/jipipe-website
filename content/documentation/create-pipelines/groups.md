+++
title = "Group nodes"
description = "Explains the group node feature."
weight = 100
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

While [compartments]({{<ref compartments >}}) offer a simple way to structure pipelines into functional units, they are not suitable for 
creating "user-defined" nodes that can be re-used. Node groups cover this use case by providing a node that contains a dedicated pipeline inside of it.
Data is communicated between the main and the inner pipeline via interface nodes that can be customized by users.

The group node can be found in `Miscellaneous > Group`, or can be created from a set of selected nodes by right-clicking them and selecting the `Group` option (which will also create inputs and outputs that match the selection).

![A node group](/img/documentation/node-group.png)

Double-clicking the group (or clicking the `Edit graph` inside the properties) opens the pipeline that is contained inside the group. 
It contains two interface nodes (`Group input` and `Group output`) that define which data is passed from outside the group or exported to the group outputs.
Modifying the slots of these interface nodes changes the slots of the group node itself.

![A node group's inner pipeline](/img/documentation/node-group-inner.png)

# Exporting parameters

Users can export parameters from nodes that are inside the group to the group node itself. To do this, click the `Edit parameters` button in the node group's parameter list. 
You can either create custom parameter groups and add parameters one-by-one, or add a whole node from the pipeline into the list. 

![Adding parameters to a node group](/img/documentation/node-group-parameters.png)

{{% notice tip %}}
If you want to hide all other parameters of the group, select the 'Show limited parameters' option.
{{% /notice %}}
{{% notice tip %}}
If you want to configure multiple nodes with the same parameter, use a 'Define parameter' node to create the parameter value and then either directly make use of it via the multi-parameter slot or generate annotations (via 'Parameters to annotations') and read the values back in with adaptive parameters.
{{% /notice %}}

# Looping data

JIPipe processes data [node-per-node](/documentation/basic-concepts/batch-processing), meaning that a node always processes all available input data before passing the results to the next node. 
This is easy to understand and makes no assumptions about the structure of the data. The issue is that such a model allocates all memory required to process the data at once.

To solve this issue, group nodes can loop through the data batches of its input and repeat the embedded pipeline for each of the batches. Just set the `Graph iteration mode` parameter to a different value than `Pass data through`.

{{% notice tip %}}
JIPipe provides loop nodes that offer the same functionality as group node looping, but without the need for encapsulating nodes into a group.
{{% /notice %}}

{{% notice tip %}}
We suggest to prepare file data and paths outside the group and then apply all steps that are working on image data (e.g., loading and processing) inside the group.
{{% /notice %}}

![Benefits of node group looping](/img/documentation/node-group-loop.png)