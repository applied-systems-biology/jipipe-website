+++
title = "Algorithm node"
weight = 10
description = "Node in a graph"
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++



This document describes the properties of the JSON API object. You also can access
the document in [JSON Schema](https://json-schema.org/) format: [algorithm-node.schema.json](https://applied-systems-biology.github.io/acaq5/schemas/algorithm-node.schema.json)

<div class="panel-body">
 <section class="json-schema-description">
  <p>
   Node in a graph
  </p>
 </section>
 <section class="json-schema-properties">
  <dl>
   <dt data-property-name="acaq:slot-configuration">
    <span class="json-property-name">
     acaq:slot-configuration:
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
     User-defined slots. Might be ignored depending on the algorithm. The keys are the slot names.
    </p>
    <div class="json-inner-schema">
     <section class="json-schema-additionalProperties">
      <span class="json-property-type">
       <span class="json-property-type">
        <a class="json-schema-ref" href="../slot-definition">
         See slot-definition
        </a>
       </span>
       <span class="json-property-range" title="Value limits">
       </span>
      </span>
     </section>
    </div>
   </dd>
   <dt data-property-name="acaq:algorithm-ui-location">
    <span class="json-property-name">
     acaq:algorithm-ui-location:
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
     Locations of this node within the UI. Optional. The keys depend on the UI implementation.
    </p>
    <div class="json-inner-schema">
     <section class="json-schema-additionalProperties">
      <span class="json-property-type">
       <span class="json-property-type">
        <a class="json-schema-ref" href="../point">
         See point
        </a>
       </span>
       <span class="json-property-range" title="Value limits">
       </span>
      </span>
     </section>
    </div>
   </dd>
   <dt data-property-name="acaq:algorithm-type">
    <span class="json-property-name">
     acaq:algorithm-type:
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
     Algorithm type ID
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="acaq:algorithm-compartment">
    <span class="json-property-name">
     acaq:algorithm-compartment:
    </span>
    <span class="json-property-type">
     string
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-default-value">
     DEFAULT
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     Compartment ID. Only important for the UI.
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
     A custom name for this algorithm. Only important for the UI. If null or empty, the UI will default to the algorithm type name.
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="description">
    <span class="json-property-name">
     description:
    </span>
    <span class="json-property-type">
     object
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     A custom description. Only important for the UI.
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="acaq:trait-generation">
    <span class="json-property-name">
     acaq:trait-generation:
    </span>
    <span class="json-property-type">
     <a class="json-schema-ref" href="../point">
      See point
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
  </dl>
 </section>
</div>

# Example

```json
{
  "acaq:slot-configuration" : {
    "Folders" : {
      "slot-data-type" : "folder",
      "slot-type" : "Input",
      "inherited-slot" : null,
      "name" : "Folders",
      "custom-name" : null,
      "inheritance-conversions" : { }
    },
    "Annotated folders" : {
      "slot-data-type" : "folder",
      "slot-type" : "Output",
      "inherited-slot" : null,
      "name" : "Annotated folders",
      "custom-name" : null,
      "inheritance-conversions" : { }
    }
  },
  "acaq:algorithm-ui-location" : {
    "default-preprocessing" : {
      "x" : 525,
      "y" : 100
    },
    "default-preprocessing{Vertical}" : {
      "x" : 25,
      "y" : 250
    },
    "default-preprocessing{Horizontal}" : {
      "x" : 450,
      "y" : 50
    }
  },
  "acaq:algorithm-type" : "folder-annotate-by-name",
  "acaq:algorithm-compartment" : "default-preprocessing",
  "generated-annotation" : "project-sample",
  "name" : "Folders to annotations",
  "description" : null,
  "acaq:trait-generation" : {
    "modification" : {
      "per-slot" : { },
      "global" : {
        "project-sample" : "Add"
      }
    },
    "transfer" : {
      "transfers" : [ ],
      "transfer-all-to-all" : true
    }
  },
  "acaq:dynamic-parameters" : { }
}
```
