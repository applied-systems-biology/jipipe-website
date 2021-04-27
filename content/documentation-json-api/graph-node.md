+++
title = "Graph node"
weight = 10
description = "Node in a graph"
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

This document describes the properties of the JSON API object. You also can access
the document in [JSON Schema](https://json-schema.org/) format: [algorithm-node.schema.json](https://jipipe.org/schemas/algorithm-node.schema.json)

<div class="panel-body">
 <section class="json-schema-description">
  <p>
   Node in a graph
  </p>
 </section>
 <section class="json-schema-properties">
  <dl>
   <dt data-property-name="jipipe:slot-configuration">
    <span class="json-property-name">
     jipipe:slot-configuration:
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
        <a class="json-schema-ref" href="/documentation-json-api/slot-definition">
         See slot-definition
        </a>
       </span>
       <span class="json-property-range" title="Value limits">
       </span>
      </span>
     </section>
    </div>
   </dd>
   <dt data-property-name="jipipe:node-ui-location">
    <span class="json-property-name">
     jipipe:node-ui-location:
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
        <a class="json-schema-ref" href="/documentation-json-api/point">
         See point
        </a>
       </span>
       <span class="json-property-range" title="Value limits">
       </span>
      </span>
     </section>
    </div>
   </dd>
   <dt data-property-name="jipipe:node-info-id">
    <span class="json-property-name">
     jipipe:node-info-id:
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
   <dt data-property-name="jipipe:graph-compartment">
    <span class="json-property-name">
     jipipe:graph-compartment:
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
     Compartment UUID. Only relevant in project graphs. Empty indicates no compartment assignment.
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="jipipe:alias-id">
    <span class="json-property-name">
     jipipe:alias-id:
    </span>
    <span class="json-property-type">
     string
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
   </dt>
   <dd>
    <p>
     Human-readable ID. Unique within the same graph. Can be changed by the software.
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
     A custom name for this node. Only important for the UI. If null or empty, the UI will default to the node type name.
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
  </dl>
 </section>
</div>



# Example

```json
{
  "jipipe:slot-configuration" : {
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
  "jipipe:algorithm-ui-location" : {
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
  "jipipe:algorithm-type" : "folder-annotate-by-name",
  "jipipe:algorithm-compartment" : "default-preprocessing",
  "generated-annotation" : "project-sample",
  "name" : "Folders to annotations",
  "description" : null,
  "jipipe:dynamic-parameters" : { }
}
```
