+++
title = "Annotation"
weight = 130
description = "Defines an annotation"
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++



This document describes the properties of the JSON API object. You also can access
the document in [JSON Schema](https://json-schema.org/) format: [annotation.schema.json](https://jipipe.org/schemas/annotation.schema.json)

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


# Example

```json
{
    "name" : "#Dataset",
    "value": "Experiment 1"
}
```
