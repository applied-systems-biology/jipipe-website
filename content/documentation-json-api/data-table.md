+++
title = "Data table"
weight = 110
description = "Defines a data table"
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++



This document describes the properties of the JSON API object. You also can access
the document in [JSON Schema](https://json-schema.org/) format: [data-table.schema.json](https://jipipe.org/schemas/data-table.schema.json)

<div class="panel-body">
 <section class="json-schema-description">
  <p>
   Defines a data table
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

# Example

```json
{
  "node-id" : "ij1-fft-forward2d",
  "slot" : "Output",
  "internal-path" : "/fastdata/projects/JIPipe/Output",
  "rows" : [ {
    "index" : 0,
    "annotations" : [ ],
    "true-data-type" : "imagej-imgplus-fft-2d"
  } ],
  "data-type" : "imagej-imgplus-fft-2d"
}
```
