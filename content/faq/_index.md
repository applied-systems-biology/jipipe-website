+++
title = "Frequently asked questions"
weight = 25
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

# General

## Can I make the startup faster?

Many JIPipe extensions rely on other ImageJ plugins to work. That is why JIPipe always checks if all necessary ImageJ plugins are available.
If you are sure that you have everything installed, you can disable this check at `Project > Application settings > General > Extensions`.
Disable `Validate ImageJ dependencies`.

# User interface

## Does JIPipe have a dark mode?

Yes, you can enable it in `Project > Application settings > UI > General > Theme`.
Set the theme to `Modern dark` and restart JIPipe/ImageJ.

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

## What happens if I put multiple inputs into a slot?

Because each slot holds a table of data and metadata, those tables are merged row-wise.

<div class="expand">
    <div class="expand-label" style="cursor: pointer;" onclick="$h = $(this);$h.next('div').slideToggle(100,function () {$h.children('i').attr('class',function () {return $h.next('div').is(':visible') ? 'fa fa-chevron-down' : 'fa fa-chevron-right';});});">
        <i style="font-size:x-small;" class="fa fa-chevron-right"></i>
        Show example
    </div>
    <div class="expand-content" style="display: none;">
      <table>
        <thead>
          <tr>
            <th>Data</th>
          </tr>
        </thead>
        <tbody>
        <tr>
          <td>C1_1</td>
        </tr>
        <tr>
          <td>C1_2</td>
        </tr>
        <tr>
          <td>C1_3</td>
        </tr>
        </tbody>
      </table>
      <div>and</div>
      <table>
        <thead>
          <tr>
            <th>Data</th>
          </tr>
        </thead>
        <tbody>
        <tr>
          <td>C1_4</td>
        </tr>
        <tr>
          <td>C1_5</td>
        </tr>
        <tr>
          <td>C1_6</td>
        </tr>
        </tbody>
      </table>
      <div>are merged into</div>
      <table>
        <thead>
          <tr>
            <th>Data</th>
          </tr>
        </thead>
        <tbody>
        <tr>
          <td>C1_1</td>
        </tr>
        <tr>
          <td>C1_2</td>
        </tr>
        <tr>
          <td>C1_3</td>
        </tr>
        <tr>
          <td>C1_4</td>
        </tr>
        <tr>
          <td>C1_5</td>
        </tr>
        <tr>
          <td>C1_6</td>
        </tr>
        </tbody>
      </table>
    </div>
</div>

## Why should I care to add those annotations?

Annotations are optional for single data analyses or pipelines without multi-input nodes, but helpful anyways.
They will allow you to quickly find out from which data set your data was generated.

If you have a multi-input node, you **will** need annotations, as JIPipe needs to figure out which data from which input belongs together.

You will find more information [here]({{< ref "/documentation/batch-pipelines" >}}).

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

# Performance

## How does JIPipe store its data during the analysis?

JIPipe stores all necessary inputs and the outputs of each processing step. This means that any kind of large data set will be loaded into the memory at the
same time if you set up an iteration.

For example, an `Import image` step will load **all** the images and then continue with the next steps.

## I have a very large data set. How can I prevent loading it at the same time?

You can run JIPipe projects within other JIPipe projects. This will separate them and into individual runs that are iterated one-by-one.
JIPipe comes with nodes to extract specific results from those outputs.

Create the analysis for only one data set and export project-wide parameters via its project settings. Those parameters will be later modified and should contain anything you need for the project setup.
Save it into a `*.jip` project.


Then create a separate project and add the nodes `Run JIPipe project` and `Define JIPipe project parameters`.
In both nodes, you load the main analysis projects.

# Result analysis

## Can I open a table in ImageJ instead of JIPipe or vice versa?

Yes, and even more: Depending on the data type there are multiple options on displaying data available.
Select the data in the result view or cache browser and click the `...` button at the bottom.
JIPipe will even remember the last setting for you.

## Can I save data by their metadata?

Yes, use the node `Miscellaneous > Export data`. It will export all incoming data into one or multiple folders and
generates names based on metadata.

# OMERO

## I do not want to always put in the credentials into each OMERO node. What can I do?

Go to `Project > Application settings > Extensions > OMERO` and set your credentials there.
Any OMERO node will supplement unset credentials by those settings.
