+++
title = "Project"
weight = 90
description = "An analysis project"
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++



This document describes the properties of the JSON API object. You also can access
the document in [JSON Schema](https://json-schema.org/) format: [project.schema.json](https://applied-systems-biology.github.io/jipipe/schemas/project.schema.json)

<div class="panel-body">
 <section class="json-schema-description">
  <p>
   An analysis project
  </p>
 </section>
 <section class="json-schema-properties">
  <dl>
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
      project
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
     Used to identify this JSON as JIPipe project
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="metadata">
    <span class="json-property-name">
     metadata:
    </span>
    <span class="json-property-type">
     <a class="json-schema-ref" href="../metadata">
      See metadata
     </a>
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
     General information about the project
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="dependencies">
    <span class="json-property-name">
     dependencies:
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
     Dependencies of this project
    </p>
    <div class="json-inner-schema">
     <section class="json-schema-array-items">
      <span class="json-property-type">
       <a class="json-schema-ref" href="../dependency">
        See dependency
       </a>
      </span>
      <span class="json-property-range" title="Value limits">
      </span>
      <div class="json-inner-schema">
      </div>
     </section>
    </div>
   </dd>
   <dt data-property-name="algorithm-graph">
    <span class="json-property-name">
     algorithm-graph:
    </span>
    <span class="json-property-type">
     <a class="json-schema-ref" href="../graph">
      See graph
     </a>
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
     Contains the algorithms
    </p>
    <div class="json-inner-schema">
    </div>
   </dd>
   <dt data-property-name="compartments">
    <span class="json-property-name">
     compartments:
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
     For organization of compartments
    </p>
    <div class="json-inner-schema">
     <section class="json-schema-properties">
      <dl>
       <dt data-property-name="compartment-graph">
        <span class="json-property-name">
         compartment-graph:
        </span>
        <span class="json-property-type">
         <a class="json-schema-ref" href="../graph">
          See graph
         </a>
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
         Structural graph of compartments
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
  "jipipe:project-type" : "project",
  "metadata" : {
    "name" : "New project",
    "description" : "An JIPipe project",
    "authors" : "",
    "website" : "",
    "license" : "",
    "citation" : ""
  },
  "dependencies" : [ {
    "metadata" : {
      "name" : "Image property annotations",
      "description" : "Commonly used annotations for describing image properties",
      "authors" : "Zoltán Cseresnyés, Ruman Gerst",
      "website" : "https://applied-systems-biology.github.io/jipipe/",
      "license" : "BSD-2",
      "citation" : ""
    },
    "id" : "org.hkijena.jipipe:image-traits",
    "version" : "1.0.0"
  }, {
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
  }, {
    "metadata" : {
      "name" : "Project management annotations",
      "description" : "An JIPipe project",
      "authors" : "Zoltán Cseresnyés, Ruman Gerst",
      "website" : "https://applied-systems-biology.github.io/jipipe/",
      "license" : "BSD-2",
      "citation" : ""
    },
    "id" : "org.hkijena.jipipe:project-management-traits",
    "version" : "1.0.0"
  }, {
    "metadata" : {
      "name" : "Bioimage analysis annotations",
      "description" : "Commonly used annotations for biological image analysis",
      "authors" : "Zoltán Cseresnyés, Ruman Gerst",
      "website" : "https://applied-systems-biology.github.io/jipipe/",
      "license" : "BSD-2",
      "citation" : ""
    },
    "id" : "org.hkijena.jipipe:bioobjects-traits",
    "version" : "1.0.0"
  }, {
    "metadata" : {
      "name" : "ImageJ integration",
      "description" : "Adds support for commonly used ImageJ data types",
      "authors" : "Zoltán Cseresnyés, Ruman Gerst",
      "website" : "https://applied-systems-biology.github.io/jipipe/",
      "license" : "BSD-2",
      "citation" : ""
    },
    "id" : "org.hkijena.jipipe:imagej-integration",
    "version" : "1.0.0"
  }, {
    "metadata" : {
      "name" : "Compartment management",
      "description" : "Data types required for graph compartment management",
      "authors" : "Zoltán Cseresnyés, Ruman Gerst",
      "website" : "https://applied-systems-biology.github.io/jipipe/",
      "license" : "BSD-2",
      "citation" : ""
    },
    "id" : "org.hkijena.jipipe:compartments",
    "version" : "1.0.0"
  } ],
  "algorithm-graph" : {
    "nodes" : {
      "default-preprocessing-preprocessing-output" : {
        "jipipe:slot-configuration" : {
          "Spores" : {
            "slot-data-type" : "imagej-imgplus-2d-greyscale",
            "slot-type" : "Input",
            "inherited-slot" : null,
            "name" : "Spores",
            "custom-name" : null,
            "inheritance-conversions" : { }
          },
          "Output Spores" : {
            "slot-data-type" : "imagej-imgplus-2d-greyscale",
            "slot-type" : "Output",
            "inherited-slot" : null,
            "name" : "Output Spores",
            "custom-name" : null,
            "inheritance-conversions" : { }
          }
        },
        "jipipe:algorithm-ui-location" : {
          "default-preprocessing" : {
            "x" : 2900,
            "y" : 100
          },
          "default-analysis" : {
            "x" : 200,
            "y" : 100
          },
          "default-preprocessing{Vertical}" : {
            "x" : 25,
            "y" : 1050
          },
          "default-preprocessing{Horizontal}" : {
            "x" : 2825,
            "y" : 50
          }
        },
        "jipipe:algorithm-type" : "jipipe:compartment-output",
        "jipipe:algorithm-compartment" : "default-preprocessing",
        "name" : "Preprocessing output",
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
      },
      "default-preprocessing-folder-list" : {
        "jipipe:slot-configuration" : {
          "Folder paths" : {
            "slot-data-type" : "folder",
            "slot-type" : "Output",
            "inherited-slot" : null,
            "name" : "Folder paths",
            "custom-name" : null,
            "inheritance-conversions" : { }
          }
        },
        "jipipe:algorithm-ui-location" : {
          "default-preprocessing" : {
            "x" : 100,
            "y" : 100
          },
          "default-preprocessing{Vertical}" : {
            "x" : 25,
            "y" : 50
          },
          "default-preprocessing{Horizontal}" : {
            "x" : 25,
            "y" : 50
          }
        },
        "jipipe:algorithm-type" : "import-folder-list",
        "jipipe:algorithm-compartment" : "default-preprocessing",
        "folder-paths" : [ "ATTC_IµL_3rdReplicate-Experiment-5518", "ATTC_IµL_3rdReplicate-Experiment-5517", "ATTC_IµL_3rdReplicate-Experiment-5516" ],
        "name" : "Folder list",
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
      },
      "default-preprocessing-subfolders" : {
        "jipipe:slot-configuration" : {
          "Folders" : {
            "slot-data-type" : "folder",
            "slot-type" : "Input",
            "inherited-slot" : null,
            "name" : "Folders",
            "custom-name" : null,
            "inheritance-conversions" : { }
          },
          "Subfolders" : {
            "slot-data-type" : "folder",
            "slot-type" : "Output",
            "inherited-slot" : null,
            "name" : "Subfolders",
            "custom-name" : null,
            "inheritance-conversions" : { }
          }
        },
        "jipipe:algorithm-ui-location" : {
          "default-preprocessing" : {
            "x" : 1150,
            "y" : 100
          },
          "default-preprocessing{Vertical}" : {
            "x" : 25,
            "y" : 450
          },
          "default-preprocessing{Horizontal}" : {
            "x" : 1075,
            "y" : 50
          }
        },
        "jipipe:algorithm-type" : "folder-navigate-subfolders",
        "jipipe:algorithm-compartment" : "default-preprocessing",
        "name" : "Subfolders",
        "subfolder" : "in",
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
      },
      "default-preprocessing-list-and-filter-files" : {
        "jipipe:slot-configuration" : {
          "Folders" : {
            "slot-data-type" : "folder",
            "slot-type" : "Input",
            "inherited-slot" : null,
            "name" : "Folders",
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
          "default-preprocessing" : {
            "x" : 1700,
            "y" : 100
          },
          "default-preprocessing{Vertical}" : {
            "x" : 25,
            "y" : 650
          },
          "default-preprocessing{Horizontal}" : {
            "x" : 1625,
            "y" : 50
          }
        },
        "jipipe:algorithm-type" : "list-and-filter-files",
        "jipipe:algorithm-compartment" : "default-preprocessing",
        "name" : "List and filter files",
        "default-preprocessing-filter-files/filters" : [ {
          "mode" : "Glob",
          "filterString" : "*.tif"
        } ],
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
      },
      "default-preprocessing-import-2d-image-(greyscale)" : {
        "jipipe:slot-configuration" : {
          "Files" : {
            "slot-data-type" : "file",
            "slot-type" : "Input",
            "inherited-slot" : null,
            "name" : "Files",
            "custom-name" : null,
            "inheritance-conversions" : { }
          },
          "Image" : {
            "slot-data-type" : "imagej-imgplus-2d-greyscale",
            "slot-type" : "Output",
            "inherited-slot" : null,
            "name" : "Image",
            "custom-name" : null,
            "inheritance-conversions" : { }
          }
        },
        "jipipe:algorithm-ui-location" : {
          "default-preprocessing" : {
            "x" : 2275,
            "y" : 100
          },
          "default-preprocessing{Vertical}" : {
            "x" : 25,
            "y" : 850
          },
          "default-preprocessing{Horizontal}" : {
            "x" : 2200,
            "y" : 50
          }
        },
        "jipipe:algorithm-type" : "imagej-imgplus-2d-greyscale-from-file",
        "jipipe:algorithm-compartment" : "default-preprocessing",
        "name" : "Import 2D image (greyscale)",
        "description" : null,
        "jipipe:trait-generation" : {
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
        },
        "jipipe:dynamic-parameters" : { }
      },
      "default-preprocessing-folders-to-annotations" : {
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
        "jipipe:trait-generation" : {
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
        "jipipe:dynamic-parameters" : { }
      }
    },
    "edges" : [ {
      "source-algorithm" : "default-preprocessing-subfolders",
      "target-algorithm" : "default-preprocessing-list-and-filter-files",
      "source-slot" : "Subfolders",
      "target-slot" : "Folders"
    }, {
      "source-algorithm" : "default-preprocessing-import-2d-image-(greyscale)",
      "target-algorithm" : "default-preprocessing-preprocessing-output",
      "source-slot" : "Image",
      "target-slot" : "Spores"
    }, {
      "source-algorithm" : "default-preprocessing-folder-list",
      "target-algorithm" : "default-preprocessing-folders-to-annotations",
      "source-slot" : "Folder paths",
      "target-slot" : "Folders"
    }, {
      "source-algorithm" : "default-preprocessing-list-and-filter-files",
      "target-algorithm" : "default-preprocessing-import-2d-image-(greyscale)",
      "source-slot" : "Filtered files",
      "target-slot" : "Files"
    }, {
      "source-algorithm" : "default-preprocessing-folders-to-annotations",
      "target-algorithm" : "default-preprocessing-subfolders",
      "source-slot" : "Annotated folders",
      "target-slot" : "Folders"
    } ]
  },
  "compartments" : {
    "compartment-graph" : {
      "nodes" : {
        "default-preprocessing" : {
          "jipipe:slot-configuration" : {
            "Output" : {
              "slot-data-type" : "jipipe:compartment-output",
              "slot-type" : "Output",
              "inherited-slot" : null,
              "name" : "Output",
              "custom-name" : null,
              "inheritance-conversions" : { }
            }
          },
          "jipipe:algorithm-ui-location" : {
            "DEFAULT" : {
              "x" : 200,
              "y" : 100
            },
            "DEFAULT{Vertical}" : {
              "x" : 25,
              "y" : 50
            }
          },
          "jipipe:algorithm-type" : "jipipe:project-compartment",
          "jipipe:algorithm-compartment" : "DEFAULT",
          "name" : "Preprocessing",
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
      "edges" : [ ]
    }
  }
}
```
