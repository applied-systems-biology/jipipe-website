+++
title = "Data API documentation"
weight = 60
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

JIPipe communicates data with external applications via a standardized file system
hierarchy. The specifications of this format are explained in this page / sub-pages.

The specification is used in following circumstances:

* Pipeline output
* Exported cache results
* Communication with external script languages (R, Python)

The data API is modular due to the different uses. It incorporates following elements:

* Data table row
* Data table
* Pipeline output
* Exported cache

Additionally, the data API incorporates elements from the JSON API to store metadata.

The following graph gives an overview how these relate to tech other:

{{<mermaid align="left">}}
graph LR;
DataTable["Data table"] --> DataTableRow["Data table row"];
PipelineOutput["Pipeline output"] --> DataTable;
ExportedCache["Exported cache"] --> DataTable;
{{< /mermaid >}}

The smallest unit is the *data table row*. It stores the files of a data type in its own standardized way. Please use the 

# Detailed descriptions

You will find detailed descriptions on the other pages.

{{% children description="true" %}}
