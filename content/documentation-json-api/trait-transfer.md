+++
title = "Annotation transfer"
weight = 140
description = "Transfers annotations from the input slot to the output slot"
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++



This document describes the properties of the JSON API object. You also can access
the document in [JSON Schema](https://json-schema.org/) format: [trait-transfer.schema.json](https://applied-systems-biology.github.io/acaq5/schemas/trait-transfer.schema.json)

<div class="panel-body">
 <section class="json-schema-description">
  <p>
   Transfers annotations from the input slot to the output slot
  </p>
 </section>
 <section class="json-schema-properties">
  <dl>
   <dt data-property-name="input-slot">
    <span class="json-property-name">
     input-slot:
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
     Unique name of the input slot
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="output-slot">
    <span class="json-property-name">
     output-slot:
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
     Unique name of the output slot
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="trait-restrictions">
    <span class="json-property-name">
     trait-restrictions:
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
     Restricts the types of transferred annotations. Currently without inheritance.
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
         ID of an ACAQ annotation
        </p>
       </section>
      </div>
     </section>
    </div>
   </dd>
  </dl>
 </section>
</div>
