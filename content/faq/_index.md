+++
title = "Frequently asked questions"
weight = 25
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

# User interface

## How can I make long connections without zooming out?

Click the arrow button at the input/output slot. It lists all compatible sources/targets ordered by distance.

# Compartments

## What are those compartments for?

Imagine you have a large complicated pipeline. Most certainly, you could split it into multiple
sub-pipelines like "preprocessing" or "segmentation". Compartments allow you to do exactly this.

## What is the difference between groups and compartments?

If you use compartments, JIPipe is still aware of the whole pipeline. This allows it to run
all dependency nodes via *Update cache* or *Quick run*.
Groups are independent pipelines that are not aware where they are used. You can only extract the
final outputs, not intermediate steps.

# Data processing

## Why should I care to add those annotations?

Annotations are optional for single data analyses or pipelines without multi-input nodes, but helpful anyways.
They will allow you to quickly find out from which data set your data was generated.

If you have a multi-input node, you **will** need annotations, as JIPipe needs to figure out which data from which input belongs together.

You will find more information [here](/documentation/batch-pipelines).

## Can you give me an example of multi-input processing?

OK, let's imaginge you have two sets of greyscale images (C1 and C2). You want to merge them as channels into an RGB image.

| Data |
| ---- |
| C1_1 |
| C1_2 |
| C1_3 |

| Data |
| ---- |
| C2_1 |
| C2_2 |
| C2_3 |

The merge channels node has two inputs (one for each channel) and at some point needs to have a table like this to work on:

| Data (Slot 1) | Data (Slot 2) |
| ------------- | ------------- |
| C1_1          | C2_1          |
| C1_2          | C2_2          |
| C1_3          | C2_3          |

The issue is now: JIPipe is not aware that **you** call the images C1_1, C2_1, [...] and that C1_1 and C2_1 should go together. That's why have to put annotation columns next to the data that will be used by JIPipe:

| Data | #Dataset |
| ---- | -------- |
| C1_1 | D1       |
| C1_2 | D2       |
| C1_3 | D3       |

| Data | #Dataset |
| ---- | -------- |
| C2_1 | D1       |
| C2_2 | D2       |
| C2_3 | D3       |

JIPipe will look at `#Dataset` and match the rows together that have the same values.

## Why do you create annotations with a '#'?

There are two kinds of annotations: Ones that only **you** care about (e.g. the resolution) and the ones the **JIPipe** should care about.
By default all JIPipe's multi-input nodes are configured to only care about annotation columns that begin with `#`.

You can extensively configure this behavior in the node's properties and also manually define which columns JIPipe should look at.

## What happens if a reference column is missing?

JIPipe will assume an `ANY` for such columns.

Let's create an example: Uploading OMERO images require a dataset Id. But often, you only want to upload all images to just one dataset.
Here we have three annotated images and just one unannotated OMERO data set.

| Data   | #Dataset |
| ------ | -------- |
| Image1 | D1       |
| Image2 | D2       |
| Image3 | D3       |

| Data             |
| ---------------- |
| OMERO dataset Id |

What will to the OMERO data set happen if JIPipe combines the tables?

| Data             | #Dataset |
| ---------------- | -------- |
| OMERO dataset Id | `{ANY}`    |

It will assume that the one row matches to any `#Dataset`.

The final table will look like this:

| Data (Slot 1) | Data (Slot 2)    |
| ------------- | ---------------- |
| Image1        | OMERO dataset Id |
| Image2        | OMERO dataset Id |
| Image3        | OMERO dataset Id |

## Can I preview what the multi-input processing will do without running the node?

Yes, switch to the "Data batches" tab in the properties panel. It allows you to configure
how JIPipe merges data together and previews the results.

Do not forget to refresh after changing a setting.

# ImageJ integration

## Can I use existing ImageJ macros in JIPipe?

Yes, use `Images > ImageJ macro`. The input slots are opened as image windows and can be addressed from within the macro with `selectWindow()`.
You can also load an example that shows how to use the node.

## Can I use JIPipe from within ImageJ macros?

Yes. You can use both pipelines and individual JIPipe algorithms from within ImageJ
macros and the GUI.

## Why are some JIPipe algorithms not availabe from within ImageJ?

JIPipe has a very general data model that makes it possible to develop pipelines for processing **any** kind of data.
The communication between JIPipe's data types and ImageJ is handled by adaptors that will handle the "translation" back & forth.
For some of such data types, there is no adaptor. The reason behind this is that ImageJ might not have an equivalent data type or feature.

# Result analysis

## Can I open a table in ImageJ instead of JIPipe or vice versa?

Yes, and even more: Depending on the data type there are multiple options on displaying data available.
Select the data in the result view or cache browser and click the `...` button at the bottom.
JIPipe will even remember the last setting for you.

## Can I save data by their metadata?

Yes, use the node `Miscellaneous > Export data`. It will export all incoming data into one or multiple folders and
generates names based on metadata.
