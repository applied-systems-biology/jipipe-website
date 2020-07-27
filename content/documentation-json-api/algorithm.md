+++
title = "Algorithm type"
weight = 20
description = "Defines a new algorithm"
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++



This document describes the properties of the JSON API object. You also can access
the document in [JSON Schema](https://json-schema.org/) format: [algorithm.schema.json](https://applied-systems-biology.github.io/jipipe/schemas/algorithm.schema.json)

<div class="panel-body">
 <section class="json-schema-description">
  <p>
   Defines a new node type
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
     Unique algorithm ID
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
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
    <p>
     General algorithm metadata
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="category">
    <span class="json-property-name">
     category:
    </span>
    <span class="json-property-type">
     string
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-default-value">
     org.hkijena.jipipe:miscellaneous
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     The category
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="exported-parameters">
    <span class="json-property-name">
     exported-parameters:
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
     List of parameters that will be exported to users of the node
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="graph">
    <span class="json-property-name">
     graph:
    </span>
    <span class="json-property-type">
     <a class="json-schema-ref" href="https://applied-systems-biology.github.io/jipipe/documentation-json-api/graph">
      See graph
     </a>
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     This graph is executed when the algorithm is run
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="menu-path">
    <span class="json-property-name">
     menu-path:
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
     Optional menu path within the category menu
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="jipipe:project-type">
    <span class="json-property-name">
     jipipe:project-type:
    </span>
    <span class="json-property-type">
     string
    </span>
    <span class="json-property-enum" title="Possible values">
     , x ∈ {
     <span class="json-property-enum-item">
      graph-wrapper-algorithm
     </span>
     (default)
                                                }
    </span>
    <span class="json-property-range" title="Value limits">
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     Identifies the JSON as algorithm
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
  "id" : "folder-list-tif",
  "metadata" : {
    "name" : "List TIFF files",
    "description" : "Lists all TIFF files in a folder",
    "authors" : "Ruman Gerst",
    "website" : "",
    "license" : "BSD-2",
    "citation" : ""
  },
  "category" : "Converter",
  "parameter-visibilities" : {
    "visible-keys" : [ ]
  },
  "graph" : {
    "nodes" : {
      "default-preprocessing-filter-files" : {
        "jipipe:slot-configuration" : {
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
        "jipipe:algorithm-ui-location" : {
          "{Vertical}" : {
            "x" : 25,
            "y" : 250
          }
        },
        "jipipe:algorithm-type" : "file-filter",
        "jipipe:algorithm-compartment" : "DEFAULT",
        "name" : "Filter *.tif",
        "description" : null,
        "filters" : [ {
          "mode" : "Glob",
          "filterString" : "*.tif"
        } ],
        "jipipe:trait-generation" : {
          "modification" : {
            "per-slot" : { },
            "global" : { }
          },
          "transfer" : {
            "transfers" : [ ],
            "transfer-all-to-all" : true
          }
        },
        "jipipe:dynamic-parameters" : { }
      },
      "default-preprocessing-list-files" : {
        "jipipe:slot-configuration" : {
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
        "jipipe:algorithm-ui-location" : {
          "{Vertical}" : {
            "x" : 25,
            "y" : 50
          }
        },
        "jipipe:algorithm-type" : "folder-list-files",
        "jipipe:algorithm-compartment" : "DEFAULT",
        "name" : "List files",
        "description" : null,
        "jipipe:trait-generation" : {
          "modification" : {
            "per-slot" : { },
            "global" : { }
          },
          "transfer" : {
            "transfers" : [ ],
            "transfer-all-to-all" : true
          }
        },
        "jipipe:dynamic-parameters" : { }
      }
    },
    "edges" : [ {
      "source-algorithm" : "default-preprocessing-list-files",
      "target-algorithm" : "default-preprocessing-filter-files",
      "source-slot" : "Files",
      "target-slot" : "Files"
    } ]
  },
  "menu-path" : "",
  "jipipe:project-type" : "graph-wrapper-algorithm",
  "preferred-traits" : [ ],
  "unwanted-traits" : [ ],
  "added-traits" : [ ],
  "removed-traits" : [ ]
}
```
