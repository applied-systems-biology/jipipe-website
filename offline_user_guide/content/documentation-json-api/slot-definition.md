+++
title = "Slot definition"
weight = 100
description = "Defines a data slot"
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++



This document describes the properties of the JSON API object. You also can access
the document in [JSON Schema](https://json-schema.org/) format: [slot-definition.schema.json](https://applied-systems-biology.github.io/jipipe/schemas/slot-definition.schema.json)

<div class="panel-body">
 <section class="json-schema-description">
  <p>
   Defines a data slot
  </p>
 </section>
 <section class="json-schema-properties">
  <dl>
   <dt data-property-name="slot-data-type">
    <span class="json-property-name">
     slot-data-type:
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
     The data type ID of the data stored in this slot
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="slot-type">
    <span class="json-property-name">
     slot-type:
    </span>
    <span class="json-property-type">
     string
    </span>
    <span class="json-property-enum" title="Possible values">
     , x ∈ {
     <span class="json-property-enum-item">
      Input
     </span>
     ,
     <span class="json-property-enum-item">
      Output
     </span>
     }
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     Determines if the slot is an input or an output
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="inherited-slot">
    <span class="json-property-name">
     inherited-slot:
    </span>
    <span class="json-property-type">
     object
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
   </dt>
   <dd>
    <p>
     Only valid for output slot. Defines from which slot to inherit the data type. Can be '*' to select the first available slot.
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
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
     Unique slot name
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="custom-name">
    <span class="json-property-name">
     custom-name:
    </span>
    <span class="json-property-type">
     object
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
   </dt>
   <dd>
    <p>
     User-customizable name. Only displayed in UI.
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="inheritance-conversions">
    <span class="json-property-name">
     inheritance-conversions:
    </span>
    <span class="json-property-type">
     object
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-default-value">
     [object Object]
    </span>
   </dt>
   <dd>
    <p>
     Only valid for slot inheritance. Applies conversiuons to the inherited type. Must contain map from input data type ID to output data type ID. Conversion is a finite text replacement system.
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
  "slot-data-type" : "imagej-imgplus-2d",
  "slot-type" : "Output",
  "inherited-slot" : "Input",
  "inheritance-conversions": {
    "imagej-imgplus-2d-greyscale-mask": "imagej-imgplus-2d-greyscale-8u"
  },
  "name" : "Output"
}
```
