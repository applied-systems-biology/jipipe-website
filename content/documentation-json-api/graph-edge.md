+++
title = "Graph Edge"
weight = 40
description = "Edge in a graph"
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++



This document describes the properties of the JSON API object. You also can access
the document in [JSON Schema](https://json-schema.org/) format: [graph-edge.schema.json](https://applied-systems-biology.github.io/jipipe/schemas/graph-edge.schema.json)

<div class="panel-body">
 <section class="json-schema-description">
  <p>
   Edge in a graph
  </p>
 </section>
 <section class="json-schema-properties">
  <dl>
   <dt data-property-name="source-node">
    <span class="json-property-name">
     source-node:
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
     Algorithm ID of the edge source
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="target-node">
    <span class="json-property-name">
     target-node:
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
     Algorithm ID of the edge target
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="source-slot">
    <span class="json-property-name">
     source-slot:
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
     Slot name within the edge source algorithm
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="target-slot">
    <span class="json-property-name">
     target-slot:
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
     Slot name within the edge target algorithm
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
  "source-node" : "default-preprocessing-list-files",
  "target-node" : "default-preprocessing-filter-files",
  "source-slot" : "Files",
  "target-slot" : "Files"
}
```
