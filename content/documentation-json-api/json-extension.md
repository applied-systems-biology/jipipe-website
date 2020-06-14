+++
title = "Extension"
weight = 60
description = "An extension that can be put into the ImageJ plugin folder"
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++



This document describes the properties of the JSON API object. You also can access
the document in [JSON Schema](https://json-schema.org/) format: [json-extension.schema.json](https://applied-systems-biology.github.io/acaq5/schemas/json-extension.schema.json)

<div class="panel-body">
 <section class="json-schema-description">
  <p>
   An extension that can be put into the ImageJ plugin folder
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
     Unique ID of this extension. Should have format
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
     Version of this extension
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="metadata">
    <span class="json-property-name">
     metadata:
    </span>
    <span class="json-property-type">
     <a class="json-schema-ref" href="/documentation-json-api/metadata">
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
     General metadata about the extension
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="algorithms">
    <span class="json-property-name">
     algorithms:
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
     List of added algorithms
    </p>
    <div class="json-inner-schema">
     <section class="json-schema-array-items">
      <span class="json-property-type">
       <a class="json-schema-ref" href="/documentation-json-api/algorithm">
        See algorithm
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
  "id" : "org.hkijena.acaq5:example-list-tiff",
  "version" : "1.0.0",
  "metadata" : {
    "name" : "Example extension",
    "description" : "An example extension",
    "authors" : "Ruman Gerst",
    "website" : "",
    "license" : "BSD-2",
    "citation" : ""
  },
  "algorithms" : [ {
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
    },
    "menu-path" : "",
    "acaq:project-type" : "graph-wrapper-algorithm",
    "preferred-traits" : [ ],
    "unwanted-traits" : [ ],
    "added-traits" : [ ],
    "removed-traits" : [ ]
  } ],
  "dependencies" : [ {
    "metadata" : {
      "name" : "Filesystem types and algorithms",
      "description" : "Data types and algorithms for interacting with files and folders",
      "authors" : "Zoltán Cseresnyés, Ruman Gerst",
      "website" : "https://applied-systems-biology.github.io/acaq5/",
      "license" : "BSD-2",
      "citation" : ""
    },
    "id" : "org.hkijena.acaq5:filesystem",
    "version" : "1.0.0"
  } ],
  "acaq:project-type" : "json-extension"
}
```
