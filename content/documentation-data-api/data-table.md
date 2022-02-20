+++
title = "Data table"
description = "Organizes data into an annotated table"
weight = 10
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

The data table structure is the smallest unit of the data API. Its purpose is to
organize data of any supported kind into an annotated table and store all
required metadata to recover the data from the file system.

A data table is located in a directory within the file system and contains
following parts:

| Element | Description |
| ------ | ---- |
| `data-table.json` | Metadata file for this data table. |
| `<data row index>` | Stores the main [data](/documentation-data-api/row-folder) for this row. Names have following RegEx format: `\\d+` (e.g., `0`, `1`, `52`). Number corresponds to the row in the data table. |
| `data-annotations/<data row index>/<data annotation column name>` | Used to store the data annotation `<data annotation column name>` for the table row `<data row index>`. `<data annotation column name>` directories contain [data](/documentation-data-api/row-folder) standard. **Please note that data annotation names are not necessarily file system compatible. Use string manipulation methods to generate approximations if required!** |

Here you see an example of such a folder that stores three data rows. Here we assume that the stored data types are
`imagej-imgplus` (ImageJ images).

{{<mermaid align="left">}}
graph LR;
Root["/"] --> DataTable["data-table.json"];
Root --> R0["0/"];
Root --> R1["1/"];
Root --> R2["2/"];
R0 --> R0Img["data.tif"];
R1 --> R1Img["data.tif"];
R2 --> R2Img["data.tif"];
Root --> DataAnnotations["data-annotations"];
DataAnnotations --> DR0["0/"];
DataAnnotations --> DR1["1/"];
DataAnnotations --> DR2["2/"];
DR0 --> Label0["Label"];
DR1 --> Label1["Label"];
DR2 --> Label2["Label"];
Label0 --> Label0Img["data.tif"];
Label1 --> Label1Img["data.tif"];
Label2 --> Label2Img["data.tif"];
{{< /mermaid >}}

# data-table.json

Here you will find the structure of the `data-table.json` file. You also can access
the document in [JSON Schema](https://json-schema.org/) format: [data-table.schema.json](https://jipipe.org/schemas/data-table.schema.json).
Please note that the description for a data table row ([data-table-row.schema.json](https://jipipe.org/schemas/data-table-row.schema.json)) can be found below.

*Here is an example data table that stores FFT images:*

```json
{
  "node-id" : "ij1-fft-forward2d",
  "slot" : "Output",
  "internal-path" : "/fastdata/projects/JIPipe/Output",
  "rows" : [ {
    "index" : 0,
    "annotations" : [ ],
    "data-annotations": [ ],
    "true-data-type" : "imagej-imgplus-fft-2d"
  } ],
  "data-type" : "imagej-imgplus-fft-2d"
}
```

## Data table

<div class="panel-body">
 <section class="json-schema-description">
  <p>
   Defines a data table row
  </p>
 </section>
 <section class="json-schema-properties">
  <dl>
   <dt data-property-name="node-id">
    <span class="json-property-name">
     node-id:
    </span>
    <span class="json-property-type">
     string
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
   </dt>
   <dd>
    <p>
     The node type ID that generated the data. Optional.
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="slot">
    <span class="json-property-name">
     slot:
    </span>
    <span class="json-property-type">
     string
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
   </dt>
   <dd>
    <p>
     The slot name that generated the data. Optional.
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="rows">
    <span class="json-property-name">
     rows:
    </span>
    <span class="json-property-type">
     object[]
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     The data row items
    </p>
    <div class="json-inner-schema">
     <section class="json-schema-array-items">
      <span class="json-property-type">
       <a class="json-schema-ref" href="/documentation-json-api/data-table-row">
        See data-table-row
       </a>
      </span>
      <span class="json-property-range" title="Value limits">
      </span>
      <div class="json-inner-schema">
      </div>
     </section>
    </div>
   </dd>
   <dt data-property-name="data-type">
    <span class="json-property-name">
     data-type:
    </span>
    <span class="json-property-type">
     string
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     The data type ID behind the row
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
  </dl>
 </section>
</div>

## Data table row

<div class="panel-body">
 <section class="json-schema-description">
  <p>
   Defines a data table row
  </p>
 </section>
 <section class="json-schema-properties">
  <dl>
   <dt data-property-name="id">
    <span class="json-property-name">
     id:
    </span>
    <span class="json-property-type">
     number
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
   </dt>
   <dd>
    <p>
     Row index within the data table
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="annotations">
    <span class="json-property-name">
     annotations:
    </span>
    <span class="json-property-type">
     object[]
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     Annotations attached to the data row
    </p>
    <div class="json-inner-schema">
     <section class="json-schema-array-items">
      <span class="json-property-type">
       <a class="json-schema-ref" href="https://applied-systems-biology.github.io/jipipe/documentation-json-api/annotation">
        See annotation
       </a>
      </span>
      <span class="json-property-range" title="Value limits">
      </span>
      <div class="json-inner-schema">
      </div>
     </section>
    </div>
   </dd>
   <dt data-property-name="data-annotations">
    <span class="json-property-name">
     data-annotations:
    </span>
    <span class="json-property-type">
     object[]
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
   </dt>
   <dd>
    <p>
     Data annotations attached to the data row
    </p>
    <div class="json-inner-schema">
     <section class="json-schema-array-items">
      <span class="json-property-type">
       <a class="json-schema-ref" href="https://applied-systems-biology.github.io/jipipe/documentation-json-api/data-annotation">
        See data-annotation
       </a>
      </span>
      <span class="json-property-range" title="Value limits">
      </span>
      <div class="json-inner-schema">
      </div>
     </section>
    </div>
   </dd>
   <dt data-property-name="true-data-type">
    <span class="json-property-name">
     true-data-type:
    </span>
    <span class="json-property-type">
     string
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     The true (not the slot) data type ID behind the row
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
  </dl>
 </section>
</div>

## Annotation 

<div class="panel-body">
 <section class="json-schema-description">
  <p>
   An annotation
  </p>
 </section>
 <section class="json-schema-properties">
  <dl>
   <dt data-property-name="name">
    <span class="json-property-name">
     name:
    </span>
    <span class="json-property-type">
     string
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     Name of the annotation
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="value">
    <span class="json-property-name">
     value:
    </span>
    <span class="json-property-type">
     string
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     Value of the annotation
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
  </dl>
 </section>
</div>


## Data annotation

<div class="panel-body">
 <section class="json-schema-description">
  <p>
   A data annotation
  </p>
 </section>
 <section class="json-schema-properties">
  <dl>
   <dt data-property-name="name">
    <span class="json-property-name">
     name:
    </span>
    <span class="json-property-type">
     string
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     Name of the annotation
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="true-data-type">
    <span class="json-property-name">
     true-data-type:
    </span>
    <span class="json-property-type">
     string
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     Data type ID of the stored data annotation
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="row-storage-folder">
    <span class="json-property-name">
     row-storage-folder:
    </span>
    <span class="json-property-type">
     string
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     Relative path to the current data table containing the data annotation data row
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
  </dl>
 </section>
</div>

