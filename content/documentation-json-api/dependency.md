+++
title = "Dependency"
weight = 30
description = "Project or extension dependency. Refers to an JIPipe extension."
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++



This document describes the properties of the JSON API object. You also can access
the document in [JSON Schema](https://json-schema.org/) format: [dependency.schema.json](https://applied-systems-biology.github.io/jipipe/schemas/dependency.schema.json)

<div class="panel-body">
 <section class="json-schema-description">
  <p>
   Project or extension dependency. Refers to a JIPipe extension.
  </p>
 </section>
 <section class="json-schema-properties">
  <dl>
   <dt data-property-name="metadata">
    <span class="json-property-name">
     metadata:
    </span>
    <span class="json-property-type">
     <a class="json-schema-ref" href="https://applied-systems-biology.github.io/jipipe/documentation-json-api/metadata">
      See metadata
     </a>
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <div class="json-inner-schema">
    </div>
   </dd>
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
     Unique ID of this dependency should have format
     <groupid>
      .
      <artifactid>
       :
       <extensionid>
       </extensionid>
      </artifactid>
     </groupid>
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="version">
    <span class="json-property-name">
     version:
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
     Version of this dependency
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
  "metadata" : {
    "name" : "Filesystem types and algorithms",
    "description" : "Data types and algorithms for interacting with files and folders",
    "authors" : "Zoltán Cseresnyés, Ruman Gerst",
    "website" : "https://applied-systems-biology.github.io/jipipe/",
    "license" : "BSD-2",
    "citation" : ""
  },
  "id" : "org.hkijena.jipipe:filesystem",
  "version" : "1.0.0"
}
```
