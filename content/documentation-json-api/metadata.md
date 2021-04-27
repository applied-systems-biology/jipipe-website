+++
title = "Metadata"
weight = 70
description = "Commonly used metadata type in JIPipe."
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++



This document describes the properties of the JSON API object. You also can access
the document in [JSON Schema](https://json-schema.org/) format: [metadata.schema.json](https://jipipe.org/schemas/metadata.schema.json)

<div class="panel-body">
 <section class="json-schema-description">
  <p>
   Commonly used metadata type in JIPipe.
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
     A name
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
     A description
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="authors">
    <span class="json-property-name">
     authors:
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
     Comma-separated list of authors
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="website">
    <span class="json-property-name">
     website:
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
     Website of the project
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="license">
    <span class="json-property-name">
     license:
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
     Name of the license
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="citation">
    <span class="json-property-name">
     citation:
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
     Citation for the publication
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
  "name" : "Image property annotations",
  "description" : "Commonly used annotations for describing image properties",
  "authors" : "Zoltán Cseresnyés, Ruman Gerst",
  "website" : "https://jipipe.org/",
  "license" : "BSD-2",
  "citation" : ""
}
```
