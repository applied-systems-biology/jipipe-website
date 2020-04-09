+++
title = "Algorithm graph"
weight = 50
description = "A graph"
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++



This document describes the properties of the JSON API object. You also can access
the document in [JSON Schema](https://json-schema.org/) format: [graph.schema.json](https://applied-systems-biology.github.io/acaq5/schemas/graph.schema.json)

<div class="panel-body">
 <section class="json-schema-description">
  <p>
   A graph
  </p>
 </section>
 <section class="json-schema-properties">
  <dl>
   <dt data-property-name="nodes">
    <span class="json-property-name">
     nodes:
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
     The nodes. Keys are the unique algorithm instance IDs.
    </p>
    <div class="json-inner-schema">
     <section class="json-schema-additionalProperties">
      <span class="json-property-type">
       <span class="json-property-type">
        <a class="json-schema-ref" href="../algorithm-node">
         See algorithm-node
        </a>
       </span>
       <span class="json-property-range" title="Value limits">
       </span>
      </span>
     </section>
    </div>
   </dd>
   <dt data-property-name="edges">
    <span class="json-property-name">
     edges:
    </span>
    <span class="json-property-type">
     object[]
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     The edges. IDs in the edge definition must be consistent to the IDs in the 'nodes' entry
    </p>
    <div class="json-inner-schema">
     <section class="json-schema-array-items">
      <span class="json-property-type">
       <a class="json-schema-ref" href="../graph-edge">
        See graph-edge
       </a>
      </span>
      <span class="json-property-range" title="Value limits">
      </span>
      <div class="json-inner-schema">
      </div>
     </section>
    </div>
   </dd>
  </dl>
 </section>
</div>

# Example

```json
{
  "nodes" : {
    "default-preprocessing-filter-files" : {
      "acaq:slot-configuration" : {
        "Files" : {
          "slot-data-type" : "file",
          "slot-type" : "Input",
          "inherited-slot" : null,
          "name" : "Files",
          "custom-name" : null,
          "inheritance-conversions" : { }
        },
        "Filtered files" : {
          "slot-data-type" : "file",
          "slot-type" : "Output",
          "inherited-slot" : null,
          "name" : "Filtered files",
          "custom-name" : null,
          "inheritance-conversions" : { }
        }
      },
      "acaq:algorithm-ui-location" : {
        "{Vertical}" : {
          "x" : 25,
          "y" : 250
        }
      },
      "acaq:algorithm-type" : "file-filter",
      "acaq:algorithm-compartment" : "DEFAULT",
      "name" : "Filter *.tif",
      "description" : null,
      "filters" : [ {
        "mode" : "Glob",
        "filterString" : "*.tif"
      } ],
      "acaq:trait-generation" : {
        "modification" : {
          "per-slot" : { },
          "global" : { }
        },
        "transfer" : {
          "transfers" : [ ],
          "transfer-all-to-all" : true
        }
      },
      "acaq:dynamic-parameters" : { }
    },
    "default-preprocessing-list-files" : {
      "acaq:slot-configuration" : {
        "Folders" : {
          "slot-data-type" : "folder",
          "slot-type" : "Input",
          "inherited-slot" : null,
          "name" : "Folders",
          "custom-name" : null,
          "inheritance-conversions" : { }
        },
        "Files" : {
          "slot-data-type" : "file",
          "slot-type" : "Output",
          "inherited-slot" : null,
          "name" : "Files",
          "custom-name" : null,
          "inheritance-conversions" : { }
        }
      },
      "acaq:algorithm-ui-location" : {
        "{Vertical}" : {
          "x" : 25,
          "y" : 50
        }
      },
      "acaq:algorithm-type" : "folder-list-files",
      "acaq:algorithm-compartment" : "DEFAULT",
      "name" : "List files",
      "description" : null,
      "acaq:trait-generation" : {
        "modification" : {
          "per-slot" : { },
          "global" : { }
        },
        "transfer" : {
          "transfers" : [ ],
          "transfer-all-to-all" : true
        }
      },
      "acaq:dynamic-parameters" : { }
    }
  },
  "edges" : [ {
    "source-algorithm" : "default-preprocessing-list-files",
    "target-algorithm" : "default-preprocessing-filter-files",
    "source-slot" : "Files",
    "target-slot" : "Files"
  } ]
}
```
