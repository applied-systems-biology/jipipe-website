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
| Data row directories | Names have following RegEx format: `\\d+` (e.g., `0`, `1`, `52`). Number corresponds to the row in the data table. **The numeric folders are also referred as "Row folders"**. Please visit the [row folder documentation](/documentation-data-api/row-folder) for more info. |
| Data annotation column contents | Used to store data annotation [row folders](/documentation-data-api/row-folder).<br/> **Info:** No standardized naming or content. To comply to the standard, you can store row folders anywhere relative to the data table directory. <br/>**Suggested structure (Implemented in JIPipe):** Names are generated with following format: `_\\d+` (e.g., `_0`, `_1`, `_120`) to prevent collisions with data row folders. Each directory contains a data table that stores the whole column of data annotations. |

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

