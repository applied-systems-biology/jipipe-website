+++
title = "Documentation"
weight = 30
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

This section explains the ACAQ5 user interface, how to create an analysis pipeline,
and some concepts behind how analysis pipelines work.

# Batch processing

ACAQ5 is a tool to create data processing workflows via a graphical language.
A special feature of ACAQ5 processing is always done in *batches*, meaning that workflows
are always designed to scale for large amounts of data without the need of external scripts or
major changes in a pipeline.

The ACAQ5 graphical language is graph-based where nodes represent data processing algorithms
and edges represent that data is transferred from an algorithm output to another algorithm's input.

An example is the application of a gaussian filter to an image after loading it:

{{<mermaid align="left">}}
graph LR;
    A[File] --> B[Load image]
    B --> C[Apply gaussian]
{{< /mermaid >}}

To design efficient and scalable pipelines yourself, it is a good idea to
look into the [ACAQ5 data model](/documentation/batch-pipelines).

# Graph compartments

A common issue with graphical programming languages is that larger pipelines are
hard to navigate. Another issue with such languages is that it is hard to separate functional
units for easier readability.

ACAQ5 solves both issues with the concept of strongly separated *graph components* that
group a set of algorithms together. Components only can interact via special interface algorithms,
making it easier to structure the pipeline.

Please take a look at our [graph compartment documentation](/documentation/graph-compartment) for more information.

# User interface overview

The ACAQ5 user interface is designed around managing an *analysis project*.
A project contains all information to run an analysis, outside of the input data and
can be saved into [JSON](https://www.json.org/json-en.html) files.
The user interface is separated into three sections:

1. **The project menu** contains all operations for the current project / window. It allows you to open/save projects, access and modify [graph compartments](/documentation/graph-compartments), manage [plugins](/documentation/plugins), and run the analysis
2. **The tab bar** allows you to switch between different interfaces associated to the current project. You can close thabs by clicking the `x` icon. If a tab contains some data that will be lost after closing it, you will have to confirm the action. If no question is asked on closing a tab, you will be able to open it later again without losing data.
3. **The current content** depends on the selected tab

![User interface overview](/img/documentation/general-ui.png)

{{% notice tip %}}
You can also close a tab by clicking it with the middle mouse button.
{{% /notice %}}

# Further reading

{{% children description="true" %}}
