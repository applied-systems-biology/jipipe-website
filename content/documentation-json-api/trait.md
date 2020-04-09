+++
title = "Annotation type"
weight = 150
description = "A JSON-defined annotation type"
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++



This document describes the properties of the JSON API object. You also can access
the document in [JSON Schema](https://json-schema.org/) format: [trait.schema.json](https://applied-systems-biology.github.io/acaq5/schemas/trait.schema.json)

<div class="panel-body">
 <section class="json-schema-description">
  <p>
   A JSON-defined annotation type
  </p>
 </section>
 <section class="json-schema-properties">
  <dl>
   <dt data-property-name="id">
    <span class="json-property-name">
     id:
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
     Unique annotation type ID
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="is-discriminator">
    <span class="json-property-name">
     is-discriminator:
    </span>
    <span class="json-property-type">
     boolean
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     If true, the annotation carries a string value
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="hidden">
    <span class="json-property-name">
     hidden:
    </span>
    <span class="json-property-type">
     boolean
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     If true, users cannot assign this annotation
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
     Name of this annotation
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="description">
    <span class="json-property-name">
     description:
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
     Description of this annotation
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="inherited-annotation-ids">
    <span class="json-property-name">
     inherited-annotation-ids:
    </span>
    <span class="json-property-type">
     string[]
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     Annotations to inherit from
    </p>
    <div class="json-inner-schema">
     <section class="json-schema-array-items">
      <span class="json-property-type">
       string
      </span>
      <span class="json-property-range" title="Value limits">
      </span>
      <div class="json-inner-schema">
       <section class="json-schema-description">
        <p>
         An annotation ID
        </p>
       </section>
      </div>
     </section>
    </div>
   </dd>
   <dt data-property-name="icon">
    <span class="json-property-name">
     icon:
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
     An icon within ACAQ5's standard icon library
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
  "id" : "image-quality-brightness",
  "is-discriminator" : false,
  "hidden" : true,
  "name" : "Image brightness",
  "description" : "Provides information about the image brightness",
  "inherited-annotation-ids" : [ "image-quality" ]
}
```
