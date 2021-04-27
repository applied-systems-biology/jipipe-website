+++
title = "Data table row"
weight = 120
description = "Defines a data table row"
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++



This document describes the properties of the JSON API object. You also can access
the document in [JSON Schema](https://json-schema.org/) format: [data-table-row.schema.json](https://jipipe.org/schemas/data-table-row.schema.json)

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
       <a class="json-schema-ref" href="/documentation-json-api/annotation">
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


# Example

```json
{
    "index" : 0,
    "annotations" : [ ],
    "true-data-type" : "imagej-imgplus-fft-2d"
}
```
