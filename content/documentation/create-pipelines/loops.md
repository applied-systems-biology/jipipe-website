+++
title = "Loop nodes"
description = "Explains the loop node feature."
weight = 110
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

JIPipe processes data [node-per-node](/documentation/basic-concepts/batch-processing), meaning that a node always processes all available input data before passing the results to the next node. 
This is easy to understand and makes no assumptions about the structure of the data. The issue is that such a model allocates all memory required to process the data at once.

[Group nodes]({{< ref groups >}}) provide a feature that allows to loop the contained pipeline for each input data batch, reducing the memory allocated during the processing (if the groups are set up so that memory-intensive tasks are split).
The nodes on the other hand have no access to the project-wide data cache, as groups contain separate pipelines. Loop nodes solve this issue by providing the looping ability of group nodes within the main pipeline.

To make a section of nodes loop, just insert a `Loop start` node. Optionally, you add `Loop end` nodes to indicate where the loop should end.

The `Loop start` node can be switched to following iteration modes:

1. **Per iterating data batch:** Finds data batches where only one data item per slot is found. Iterates through all data batches.
2. **Per merging data batch:** Finds data batches where multiple data items per slot are found. Iterates through all data batches.
3. **Pass data through:** Disables looping

You can also enable the `Pass through` parameter of loop starts and ends to disable their functionality. In the case of loop starts, the pipeline will be run as if there is no loop. 
In case of loop ends, more nodes will be inside the loop.

{{% notice info %}}
Always ensure that there are no multiple loop starts per node. Your pipeline will not run in such cases.
{{% /notice %}}
{{% notice info %}}
We consider loop nodes still as experimental, as complex processing is applied while the pipeline is running to achieve loops.
{{% /notice %}}



![Loop example](/img/documentation/loops.png)