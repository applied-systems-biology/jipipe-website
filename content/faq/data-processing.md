+++
title = "Data processing"
description = "Questions about how data is processed"
weight = 3
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

## What are those compartments for?

Imagine you have a large complicated pipeline. Most certainly, you could split it into multiple
sub-pipelines like "preprocessing" or "segmentation". Compartments allow you to do exactly this.

## What is the difference between groups and compartments?

If you use compartments, JIPipe is still aware of the whole pipeline. This allows it to run
all dependency nodes via *Update cache* or *Quick run*.
Groups are independent pipelines that are not aware where they are used. You can only extract the
final outputs, not intermediate steps.

## What happens if I put multiple inputs into a slot?

Because each slot holds a table of data and metadata, those tables are merged row-wise.

<div class="expand">
    <div class="expand-label" style="cursor: pointer;" onclick="$h = $(this);$h.next('div').slideToggle(100,function () {$h.children('i').attr('class',function () {return $h.next('div').is(':visible') ? 'fa fa-chevron-down' : 'fa fa-chevron-right';});});">
        <i style="font-size:x-small;" class="fa fa-chevron-right"></i>
        Show example
    </div>
    <div class="expand-content" style="display: none;">
      <img src="/img/documentation/multi-input-example.svg" />
    </div>
</div>

## Why should I care to add those annotations?

Annotations are optional for single data analyses or pipelines without multi-input nodes, but helpful anyways.
They will allow you to quickly find out from which data set your data was generated.

If you have a multi-input node, you **will** need annotations, as JIPipe needs to figure out which data from which input belongs together.

You will find more information [here](/documentation/basic-concepts/batch-processing).

## Can you give me an example of multi-input processing?

<div class="expand">
    <div class="expand-label" style="cursor: pointer;" onclick="$h = $(this);$h.next('div').slideToggle(100,function () {$h.children('i').attr('class',function () {return $h.next('div').is(':visible') ? 'fa fa-chevron-down' : 'fa fa-chevron-right';});});">
        <i style="font-size:x-small;" class="fa fa-chevron-right"></i>
        Show example
    </div>
    <div class="expand-content" style="display: none;">
      <div>
      The merge channels node has two inputs (one for each channel) and at some point needs to assign which of the input images belong together.
      This assignment is here visualized as "intermediate merged input table".
      To achieve this with multiple rows in the input tables, JIPipe utlizes the additional annotation columns (here #Dataset) to group the input rows by these columns.
      </div>
      <img src="/img/documentation/channel-merge-example.svg" />
    </div>
</div>

## Why do you create annotations with a '#'?

There are two kinds of annotations: Ones that only **you** care about (e.g. the resolution) and the ones the **JIPipe** should care about.
By default all JIPipe's multi-input nodes are configured to only care about annotation columns that begin with `#`.

You can extensively configure this behavior in the node's properties and also manually define which columns JIPipe should look at.

## What happens if a reference column is missing?

JIPipe will assume an `ANY` for such columns.

<div class="expand">
    <div class="expand-label" style="cursor: pointer;" onclick="$h = $(this);$h.next('div').slideToggle(100,function () {$h.children('i').attr('class',function () {return $h.next('div').is(':visible') ? 'fa fa-chevron-down' : 'fa fa-chevron-right';});});">
        <i style="font-size:x-small;" class="fa fa-chevron-right"></i>
        Show example
    </div>
    <div class="expand-content" style="display: none;">
      <div>
      In this example, one set of images has a data set, while the other set has no such information. This is interpreted as "any".
      </div>
      <img src="/img/documentation/channel-merge-example-any.svg" />
    </div>
</div>

## Can I preview what the multi-input processing will do without running the node?

Yes, switch to the "Data batches" tab in the properties panel. It allows you to configure
how JIPipe merges data together and previews the results.

Do not forget to refresh after changing a setting.

## How does JIPipe store its data during the analysis?

JIPipe stores all necessary inputs and the outputs of each processing step. This means that any kind of large data set will be loaded into the memory at the
same time if you set up an iteration.

For example, an `Import image` step will load **all** the images and then continue with the next steps.

## I have a very large data set. How can I prevent loading it at the same time?

You have two options:

1. Run a JIPipe project within a another
2. Use a node group and set it to iterative mode

### Nested JIPipe projects

You can run JIPipe projects within other JIPipe projects. This will separate them and into individual runs that are iterated one-by-one.
JIPipe comes with nodes to extract specific results from those outputs.

Create the analysis for only one data set and export project-wide parameters via its project settings. Those parameters will be later modified and should contain anything you need for the project setup.
Save it into a `*.jip` project.

Then create a separate project and add the nodes `Run JIPipe project` and `Define JIPipe project parameters`.
In both nodes, you load the main analysis projects.

### Iterative group nodes

Group a set of nodes that contains functions with a large memory footprint. This will create a `Group` node.
By default group nodes will just act as simple group and pass data from its slots to the wrapped graph.
To reduce the memory footprint, set the `Graph iteration mode` to iterate/merge, which changes the behavior of the node:
The code now will be repeated for each data batch, which prevents loading all data at once.

Please ensure that the wrapped nodes can handle this kind of iteration.

## I do not want to always put in the credentials into each OMERO node. What can I do?

Go to `Project > Application settings > Extensions > OMERO` and set your credentials there.
Any OMERO node will supplement unset credentials by those settings.

## Where can I find information about the formats used in JIPipe output?

You will find information in the data type compendium.
Concerning the standardized JIPipe output format, you will find information [here](/documentation/result-analysis/#using-third-party-software-for-further-analysis)
