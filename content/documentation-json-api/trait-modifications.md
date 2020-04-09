+++
title = "Annotatation modifications"
weight = 130
description = "Modifies a set of annotations (e.g. data slot, or globally)."
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++



This document describes the properties of the JSON API object. You also can access
the document in [JSON Schema](https://json-schema.org/) format: [trait-modifications.schema.json](https://applied-systems-biology.github.io/acaq5/schemas/trait-modifications.schema.json)

<div class="panel-body">
 <section class="json-schema-description">
  <p>
   Modifies a set of annotations (e.g. data slot, or globally).
  </p>
 </section>
 <section class="json-schema-additionalProperties">
  <span class="json-property-type">
   <span class="json-property-type">
    <a class="json-schema-ref" href="../trait-modification-type">
     See trait-modification-type
    </a>
   </span>
   <span class="json-property-range" title="Value limits">
   </span>
  </span>
  <section class="json-schema-description">
   <p>
    Property keys are data type Ids
   </p>
  </section>
 </section>
</div>

# Example

```json
{
  "per-slot" : {
    "Image" : {
      "image-quality-brightness-uniform" : "Add",
      "bioobject-morphology-round" : "Add",
      "bioobject-preparations-labeling-uniform" : "Add"
    }
  }
}
```
