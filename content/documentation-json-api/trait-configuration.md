+++
title = "Annotation configuration"
weight = 110
description = "Determines how annotations are transferred from inputs to outputs. This is for the user and independent of data annotations."
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++



This document describes the properties of the JSON API object. You also can access
the document in [JSON Schema](https://json-schema.org/) format: [trait-configuration.schema.json](https://applied-systems-biology.github.io/acaq5/schemas/trait-configuration.schema.json)

<div class="panel-body">
 <section class="json-schema-description">
  <p>
   Determines how annotations are transferred from inputs to outputs. This is for the user and independent of data annotations.
  </p>
 </section>
 <section class="json-schema-properties">
  <dl>
   <dt data-property-name="modification">
    <span class="json-property-name">
     modification:
    </span>
    <span class="json-property-type">
     object
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-default-value">
     [object Object]
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     Instructions on how annotations are modified.
    </p>
    <div class="json-inner-schema">
     <section class="json-schema-properties">
      <dl>
       <dt data-property-name="per-slot">
        <span class="json-property-name">
         per-slot:
        </span>
        <span class="json-property-type">
         object
        </span>
        <span class="json-property-range" title="Value limits">
        </span>
        <span class="json-property-default-value">
         [object Object]
        </span>
        <span class="json-property-required">
        </span>
       </dt>
       <dd>
        <p>
         Map from slot name to annotation modifications. Key should be an output slot name.
        </p>
        <div class="json-inner-schema">
         <section class="json-schema-additionalProperties">
          <span class="json-property-type">
           <span class="json-property-type">
            <a class="json-schema-ref" href="../trait-modifications">
             See trait-modifications
            </a>
           </span>
           <span class="json-property-range" title="Value limits">
           </span>
          </span>
         </section>
        </div>
       </dd>
       <dt data-property-name="global">
        <span class="json-property-name">
         global:
        </span>
        <span class="json-property-type">
         <a class="json-schema-ref" href="../trait-modifications">
          See trait-modifications
         </a>
        </span>
        <span class="json-property-range" title="Value limits">
        </span>
        <span class="json-property-required">
        </span>
       </dt>
       <dd>
        <p>
         Modifications applied to any slot
        </p>
        <div class="json-inner-schema">
        </div>
       </dd>
      </dl>
     </section>
    </div>
   </dd>
   <dt data-property-name="transfer">
    <span class="json-property-name">
     transfer:
    </span>
    <span class="json-property-type">
     object
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-default-value">
     [object Object]
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     Determines how annotations are transferred through the algorithm
    </p>
    <div class="json-inner-schema">
     <section class="json-schema-properties">
      <dl>
       <dt data-property-name="transfers">
        <span class="json-property-name">
         transfers:
        </span>
        <span class="json-property-type">
         <a class="json-schema-ref" href="../trait-transfer">
          See trait-transfer
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
       <dt data-property-name="transfer-all-to-all">
        <span class="json-property-name">
         transfer-all-to-all:
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
         Transfers the union of all input slot annotations to all output slots. This overrides any custom defined transfers.
        </p>
        <div class="json-inner-schema">
        </div>
       </dd>
      </dl>
     </section>
    </div>
   </dd>
  </dl>
 </section>
</div>

# Example

```json
{
  "modification" : {
    "per-slot" : {
      "Image" : {
        "image-quality-brightness-uniform" : "Add",
        "bioobject-morphology-round" : "Add",
        "bioobject-preparations-labeling-uniform" : "Add"
      }
    },
    "global" : { }
  },
  "transfer" : {
    "transfers" : [ ],
    "transfer-all-to-all" : true
  }
}
```
