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
     <a class="json-schema-ref" href="https://applied-systems-biology.github.io/jipipe/documentation-json-api/metadata">
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
       <a class="json-schema-ref" href="https://applied-systems-biology.github.io/jipipe/documentation-json-api/dependency">
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
    <span class="json-property-default-value">
     [object Object]
    </span>
    <span class="json-property-required">
    </span>
   </dt>
   <dd>
    <p>
     Contains the pipeline nodes
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
         <a class="json-schema-ref" href="https://applied-systems-biology.github.io/jipipe/documentation-json-api/graph">
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
    "name" : "Empty (3 compartments)",
    "description" : "This template contains three compartments 'Preprocessing', 'Analysis', and 'Postprocessing' that are connected to each other.",
    "authors" : [ ],
    "website" : "",
    "license" : "",
    "citation" : ""
  },
  "dependencies" : [ {
    "metadata" : {
      "name" : "Standard plots",
      "description" : "Commonly used plot types",
      "authors" : [ {
        "first-name" : "Zoltán",
        "last-name" : "Cseresnyés",
        "affiliations" : "Applied Systems Biology, Leibniz Institute for Natural Product Research and Infection Biology – Hans-Knöll-Institute, Jena, Germany"
      }, {
        "first-name" : "Ruman",
        "last-name" : "Gerst",
        "affiliations" : "Applied Systems Biology, Leibniz Institute for Natural Product Research and Infection Biology – Hans-Knöll-Institute, Jena, Germany\nFaculty of Biological Sciences, Friedrich-Schiller-University Jena, Germany"
      } ],
      "website" : "https://applied-systems-biology.github.io/jipipe/",
      "license" : "BSD 2-Clause",
      "citation" : ""
    },
    "id" : "org.hkijena.jipipe:plots",
    "version" : "1.0.0"
  }, {
    "metadata" : {
      "name" : "ImageJ algorithms",
      "description" : "Integrates ImageJ algorithms into JIPipe",
      "authors" : [ {
        "first-name" : "Zoltán",
        "last-name" : "Cseresnyés",
        "affiliations" : "Applied Systems Biology, Leibniz Institute for Natural Product Research and Infection Biology – Hans-Knöll-Institute, Jena, Germany"
      }, {
        "first-name" : "Ruman",
        "last-name" : "Gerst",
        "affiliations" : "Applied Systems Biology, Leibniz Institute for Natural Product Research and Infection Biology – Hans-Knöll-Institute, Jena, Germany\nFaculty of Biological Sciences, Friedrich-Schiller-University Jena, Germany"
      } ],
      "website" : "https://applied-systems-biology.github.io/jipipe/",
      "license" : "BSD 2-Clause",
      "citation" : ""
    },
    "id" : "org.hkijena.jipipe:imagej-algorithms",
    "version" : "1.0.0"
  }, {
    "metadata" : {
      "name" : "Filesystem types and algorithms",
      "description" : "Data types and algorithms for interacting with files and folders",
      "authors" : [ {
        "first-name" : "Zoltán",
        "last-name" : "Cseresnyés",
        "affiliations" : "Applied Systems Biology, Leibniz Institute for Natural Product Research and Infection Biology – Hans-Knöll-Institute, Jena, Germany"
      }, {
        "first-name" : "Ruman",
        "last-name" : "Gerst",
        "affiliations" : "Applied Systems Biology, Leibniz Institute for Natural Product Research and Infection Biology – Hans-Knöll-Institute, Jena, Germany\nFaculty of Biological Sciences, Friedrich-Schiller-University Jena, Germany"
      } ],
      "website" : "https://applied-systems-biology.github.io/jipipe/",
      "license" : "BSD 2-Clause",
      "citation" : ""
    },
    "id" : "org.hkijena.jipipe:filesystem",
    "version" : "1.0.0"
  }, {
    "metadata" : {
      "name" : "Compartment management",
      "description" : "Data types required for graph compartment management",
      "authors" : [ {
        "first-name" : "Zoltán",
        "last-name" : "Cseresnyés",
        "affiliations" : "Applied Systems Biology, Leibniz Institute for Natural Product Research and Infection Biology – Hans-Knöll-Institute, Jena, Germany"
      }, {
        "first-name" : "Ruman",
        "last-name" : "Gerst",
        "affiliations" : "Applied Systems Biology, Leibniz Institute for Natural Product Research and Infection Biology – Hans-Knöll-Institute, Jena, Germany\nFaculty of Biological Sciences, Friedrich-Schiller-University Jena, Germany"
      } ],
      "website" : "https://applied-systems-biology.github.io/jipipe/",
      "license" : "BSD 2-Clause",
      "citation" : ""
    },
    "id" : "org.hkijena.jipipe:compartments",
    "version" : "1.0.0"
  }, {
    "metadata" : {
      "name" : "ImageJ integration",
      "description" : "Adds support for commonly used ImageJ data types",
      "authors" : [ {
        "first-name" : "Zoltán",
        "last-name" : "Cseresnyés",
        "affiliations" : "Applied Systems Biology, Leibniz Institute for Natural Product Research and Infection Biology – Hans-Knöll-Institute, Jena, Germany"
      }, {
        "first-name" : "Ruman",
        "last-name" : "Gerst",
        "affiliations" : "Applied Systems Biology, Leibniz Institute for Natural Product Research and Infection Biology – Hans-Knöll-Institute, Jena, Germany\nFaculty of Biological Sciences, Friedrich-Schiller-University Jena, Germany"
      } ],
      "website" : "https://applied-systems-biology.github.io/jipipe/",
      "license" : "BSD 2-Clause",
      "citation" : ""
    },
    "id" : "org.hkijena.jipipe:imagej-integration",
    "version" : "1.0.0"
  } ],
  "additional-metadata" : {
    "pipeline-parameters" : {
      "jipipe:type" : "org.hkijena.jipipe.ui.settings.JIPipeProjectInfoParameters",
      "exported-parameters" : {
        "parameter-reference-groups" : [ ]
      }
    },
    "org.hkijena.jipipe:pipeline-parameters" : {
      "jipipe:type" : "org.hkijena.jipipe.ui.settings.JIPipeProjectInfoParameters",
      "exported-parameters" : {
        "parameter-reference-groups" : [ ]
      }
    },
    "org.hkijena.jipipe.ui:project-tabs" : {
      "jipipe:type" : "org.hkijena.jipipe.ui.project.JIPipeProjectTabMetadata",
      "data" : {
        "open-tabs" : [ "singleton:INTRODUCTION", "singleton:COMPARTMENT_EDITOR", "graph-compartment:preprocessing", "graph-compartment:analysis", "graph-compartment:postprocessing" ],
        "selected-tab" : null
      }
    }
  },
  "graph" : {
    "nodes" : {
      "preprocessing-folder-list" : {
        "jipipe:slot-configuration" : { },
        "jipipe:algorithm-ui-location" : {
          "preprocessing" : {
            "Vertical" : {
              "x" : 400,
              "y" : 300
            }
          }
        },
        "jipipe:node-info-id" : "import-folder-list",
        "jipipe:algorithm-compartment" : "preprocessing",
        "jipipe:algorithm:save-outputs" : true,
        "jipipe:algorithm:enabled" : true,
        "folder-paths" : [ "ATTC_IµL_3rdReplicate-Experiment-5516", "ATTC_IµL_3rdReplicate-Experiment-5517", "ATTC_IµL_3rdReplicate-Experiment-5518" ],
        "jipipe:algorithm:pass-through" : false,
        "jipipe:node:name" : "Folder list",
        "jipipe:node:description" : null
      },
      "preprocessing-path-to-annotation" : {
        "jipipe:slot-configuration" : { },
        "jipipe:algorithm-ui-location" : {
          "preprocessing" : {
            "Vertical" : {
              "x" : 400,
              "y" : 500
            }
          }
        },
        "jipipe:node-info-id" : "path-to-annotation-simple",
        "jipipe:algorithm-compartment" : "preprocessing",
        "annotation-merge-strategy" : "OverwriteExisting",
        "remove-extensions" : true,
        "jipipe:algorithm:save-outputs" : true,
        "jipipe:algorithm:enabled" : true,
        "jipipe:parallelization:enabled" : true,
        "generated-annotation" : "Dataset",
        "full-path" : false,
        "jipipe:algorithm:pass-through" : false,
        "jipipe:node:name" : "Path to annotation",
        "jipipe:node:description" : null,
        "jipipe:parameter-slot-algorithm/has-parameter-slot" : false,
        "jipipe:parameter-slot-algorithm/attach-parameter-annotations" : true,
        "jipipe:parameter-slot-algorithm/attach-only-non-default-parameter-annotations" : true,
        "jipipe:parameter-slot-algorithm/parameter-annotations-prefix" : "",
        "jipipe:parameter-slot-algorithm/parameter-annotations-use-internal-names" : false
      },
      "preprocessing-list-files" : {
        "jipipe:slot-configuration" : { },
        "jipipe:algorithm-ui-location" : {
          "preprocessing" : {
            "Vertical" : {
              "x" : 425,
              "y" : 700
            }
          }
        },
        "jipipe:node-info-id" : "folder-list-files",
        "jipipe:algorithm-compartment" : "preprocessing",
        "jipipe:algorithm:save-outputs" : true,
        "jipipe:algorithm:enabled" : true,
        "jipipe:parallelization:enabled" : true,
        "subfolder" : "in",
        "recursive-follows-links" : true,
        "filters" : [ {
          "mode" : "Glob",
          "filter-string" : "*.tif",
          "invert" : false
        } ],
        "only-filenames" : true,
        "jipipe:algorithm:pass-through" : false,
        "recursive" : false,
        "jipipe:node:name" : "List files",
        "jipipe:node:description" : null,
        "jipipe:parameter-slot-algorithm/has-parameter-slot" : false,
        "jipipe:parameter-slot-algorithm/attach-parameter-annotations" : true,
        "jipipe:parameter-slot-algorithm/attach-only-non-default-parameter-annotations" : true,
        "jipipe:parameter-slot-algorithm/parameter-annotations-prefix" : "",
        "jipipe:parameter-slot-algorithm/parameter-annotations-use-internal-names" : false
      },
      "preprocessing-import-image" : {
        "jipipe:slot-configuration" : { },
        "jipipe:algorithm-ui-location" : {
          "preprocessing" : {
            "Vertical" : {
              "x" : 425,
              "y" : 900
            }
          }
        },
        "jipipe:node-info-id" : "import-imagej-imgplus-from-file",
        "jipipe:algorithm-compartment" : "preprocessing",
        "jipipe:algorithm:save-outputs" : true,
        "generated-image-type" : "imagej-imgplus",
        "title-annotation" : {
          "content" : "Image title",
          "enabled" : false
        },
        "jipipe:algorithm:enabled" : true,
        "jipipe:parallelization:enabled" : true,
        "jipipe:algorithm:pass-through" : false,
        "jipipe:node:name" : "Import image",
        "jipipe:node:description" : null,
        "jipipe:parameter-slot-algorithm/has-parameter-slot" : false,
        "jipipe:parameter-slot-algorithm/attach-parameter-annotations" : true,
        "jipipe:parameter-slot-algorithm/attach-only-non-default-parameter-annotations" : true,
        "jipipe:parameter-slot-algorithm/parameter-annotations-prefix" : "",
        "jipipe:parameter-slot-algorithm/parameter-annotations-use-internal-names" : false
      },
      "preprocessing-preprocessing-output" : {
        "jipipe:slot-configuration" : {
          "input" : {
            "Data" : {
              "slot-data-type" : "imagej-imgplus-2d-greyscale",
              "slot-type" : "Input",
              "inherited-slot" : null,
              "name" : "Data",
              "custom-name" : null,
              "inheritance-conversions" : { }
            }
          },
          "output" : {
            "Data" : {
              "slot-data-type" : "imagej-imgplus-2d-greyscale",
              "slot-type" : "Output",
              "inherited-slot" : null,
              "name" : "Data",
              "custom-name" : null,
              "inheritance-conversions" : { }
            }
          }
        },
        "jipipe:algorithm-ui-location" : {
          "preprocessing" : {
            "Vertical" : {
              "x" : 425,
              "y" : 1100
            }
          },
          "analysis" : {
            "Vertical" : {
              "x" : 100,
              "y" : 50
            }
          }
        },
        "jipipe:node-info-id" : "jipipe:compartment-output",
        "jipipe:algorithm-compartment" : "preprocessing",
        "jipipe:algorithm:save-outputs" : true,
        "jipipe:algorithm:enabled" : true,
        "jipipe:algorithm:pass-through" : false,
        "jipipe:node:name" : "Preprocessing output",
        "jipipe:node:description" : null
      },
      "analysis-gaussian-blur-2d" : {
        "jipipe:slot-configuration" : { },
        "jipipe:algorithm-ui-location" : {
          "analysis" : {
            "Vertical" : {
              "x" : 100,
              "y" : 250
            }
          }
        },
        "jipipe:node-info-id" : "ij1-blur-gaussian2d",
        "jipipe:algorithm-compartment" : "analysis",
        "jipipe:algorithm:save-outputs" : true,
        "jipipe:algorithm:enabled" : true,
        "jipipe:parallelization:enabled" : true,
        "sigma-y" : -1.0,
        "sigma-x" : 1.0,
        "jipipe:algorithm:pass-through" : false,
        "jipipe:node:name" : "Gaussian blur 2D",
        "jipipe:node:description" : null,
        "jipipe:parameter-slot-algorithm/has-parameter-slot" : false,
        "jipipe:parameter-slot-algorithm/attach-parameter-annotations" : true,
        "jipipe:parameter-slot-algorithm/attach-only-non-default-parameter-annotations" : true,
        "jipipe:parameter-slot-algorithm/parameter-annotations-prefix" : "",
        "jipipe:parameter-slot-algorithm/parameter-annotations-use-internal-names" : false
      },
      "analysis-auto-threshold-2d" : {
        "jipipe:slot-configuration" : { },
        "jipipe:algorithm-ui-location" : {
          "analysis" : {
            "Vertical" : {
              "x" : 100,
              "y" : 450
            }
          }
        },
        "jipipe:node-info-id" : "ij1-threshold-auto2d",
        "jipipe:algorithm-compartment" : "analysis",
        "jipipe:algorithm:save-outputs" : true,
        "jipipe:algorithm:enabled" : true,
        "method" : "Default",
        "jipipe:parallelization:enabled" : true,
        "dark-background" : true,
        "jipipe:algorithm:pass-through" : false,
        "jipipe:node:name" : "Auto threshold 2D",
        "jipipe:node:description" : null,
        "jipipe:parameter-slot-algorithm/has-parameter-slot" : false,
        "jipipe:parameter-slot-algorithm/attach-parameter-annotations" : true,
        "jipipe:parameter-slot-algorithm/attach-only-non-default-parameter-annotations" : true,
        "jipipe:parameter-slot-algorithm/parameter-annotations-prefix" : "",
        "jipipe:parameter-slot-algorithm/parameter-annotations-use-internal-names" : false
      },
      "analysis-distance-transform-watershed-2d" : {
        "jipipe:slot-configuration" : { },
        "jipipe:algorithm-ui-location" : {
          "analysis" : {
            "Vertical" : {
              "x" : 100,
              "y" : 650
            }
          }
        },
        "jipipe:node-info-id" : "ij1-binary-dtwatershed2d",
        "jipipe:algorithm-compartment" : "analysis",
        "jipipe:algorithm:save-outputs" : true,
        "jipipe:algorithm:enabled" : true,
        "jipipe:parallelization:enabled" : true,
        "jipipe:algorithm:pass-through" : false,
        "jipipe:node:name" : "Distance transform watershed 2D",
        "jipipe:node:description" : null,
        "jipipe:parameter-slot-algorithm/has-parameter-slot" : false,
        "jipipe:parameter-slot-algorithm/attach-parameter-annotations" : true,
        "jipipe:parameter-slot-algorithm/attach-only-non-default-parameter-annotations" : true,
        "jipipe:parameter-slot-algorithm/parameter-annotations-prefix" : "",
        "jipipe:parameter-slot-algorithm/parameter-annotations-use-internal-names" : false
      },
      "analysis-find-particles-2d" : {
        "jipipe:slot-configuration" : { },
        "jipipe:algorithm-ui-location" : {
          "analysis" : {
            "Vertical" : {
              "x" : 100,
              "y" : 850
            }
          }
        },
        "jipipe:node-info-id" : "ij1-analyze-find-particles2d",
        "jipipe:algorithm-compartment" : "analysis",
        "min-particle-circularity" : 0.0,
        "jipipe:algorithm:enabled" : true,
        "jipipe:parallelization:enabled" : true,
        "jipipe:algorithm:pass-through" : false,
        "jipipe:node:name" : "Find particles 2D",
        "jipipe:node:description" : null,
        "min-particle-size" : 0.0,
        "jipipe:algorithm:save-outputs" : true,
        "annotation-type" : {
          "content" : "Image index",
          "enabled" : false
        },
        "max-particle-circularity" : 1.0,
        "split-slices" : true,
        "exclude-edges" : false,
        "measurements" : {
          "values" : [ "Centroid", "PixelValueMinMax", "Area" ]
        },
        "max-particle-size" : "Infinity",
        "jipipe:parameter-slot-algorithm/has-parameter-slot" : false,
        "jipipe:parameter-slot-algorithm/attach-parameter-annotations" : true,
        "jipipe:parameter-slot-algorithm/attach-only-non-default-parameter-annotations" : true,
        "jipipe:parameter-slot-algorithm/parameter-annotations-prefix" : "",
        "jipipe:parameter-slot-algorithm/parameter-annotations-use-internal-names" : false
      },
      "analysis-analysis-output" : {
        "jipipe:slot-configuration" : {
          "input" : {
            "Spore Mask" : {
              "slot-data-type" : "imagej-imgplus-2d-greyscale-mask",
              "slot-type" : "Input",
              "inherited-slot" : null,
              "name" : "Spore Mask",
              "custom-name" : null,
              "inheritance-conversions" : { }
            },
            "Spore ROI" : {
              "slot-data-type" : "imagej-roi",
              "slot-type" : "Input",
              "inherited-slot" : null,
              "name" : "Spore ROI",
              "custom-name" : null,
              "inheritance-conversions" : { }
            },
            "Spore measurements" : {
              "slot-data-type" : "imagej-results-table",
              "slot-type" : "Input",
              "inherited-slot" : null,
              "name" : "Spore measurements",
              "custom-name" : null,
              "inheritance-conversions" : { }
            }
          },
          "output" : {
            "Spore Mask" : {
              "slot-data-type" : "imagej-imgplus-2d-greyscale-mask",
              "slot-type" : "Output",
              "inherited-slot" : null,
              "name" : "Spore Mask",
              "custom-name" : null,
              "inheritance-conversions" : { }
            },
            "Spore ROI" : {
              "slot-data-type" : "imagej-roi",
              "slot-type" : "Output",
              "inherited-slot" : null,
              "name" : "Spore ROI",
              "custom-name" : null,
              "inheritance-conversions" : { }
            },
            "Spore measurements" : {
              "slot-data-type" : "imagej-results-table",
              "slot-type" : "Output",
              "inherited-slot" : null,
              "name" : "Spore measurements",
              "custom-name" : null,
              "inheritance-conversions" : { }
            }
          }
        },
        "jipipe:algorithm-ui-location" : {
          "postprocessing" : {
            "Vertical" : {
              "x" : 100,
              "y" : 50
            }
          },
          "analysis" : {
            "Vertical" : {
              "x" : 50,
              "y" : 1050
            }
          }
        },
        "jipipe:node-info-id" : "jipipe:compartment-output",
        "jipipe:algorithm-compartment" : "analysis",
        "jipipe:algorithm:save-outputs" : true,
        "jipipe:algorithm:enabled" : true,
        "jipipe:algorithm:pass-through" : false,
        "jipipe:node:name" : "Analysis output",
        "jipipe:node:description" : null
      },
      "postprocessing-plot-tables" : {
        "jipipe:slot-configuration" : { },
        "jipipe:algorithm-ui-location" : {
          "postprocessing" : {
            "Vertical" : {
              "x" : 550,
              "y" : 250
            }
          }
        },
        "jipipe:node-info-id" : "plot-from-table",
        "jipipe:algorithm-compartment" : "postprocessing",
        "plot-type" : "plot-histogram",
        "jipipe:algorithm:save-outputs" : true,
        "jipipe:algorithm:enabled" : true,
        "jipipe:algorithm:pass-through" : false,
        "jipipe:node:name" : "Plot tables",
        "jipipe:node:description" : null,
        "plot-parameters/export-height" : 768,
        "plot-parameters/value-axis-label" : "Value",
        "plot-parameters/bins" : 10,
        "plot-parameters/export-width" : 1024,
        "plot-parameters/bin-axis-label" : "Bin",
        "plot-parameters/histogram-type" : "Frequency",
        "plot-parameters/title" : "Histogram plot",
        "column-assignments" : {
          "parameters" : {
            "Value" : {
              "name" : "Value",
              "description" : "Values to generate a histogram from. (Numeric column)",
              "visibility" : "TransitiveVisible",
              "field-class" : "org.hkijena.jipipe.extensions.tables.parameters.TableColumnSourceParameter",
              "value" : {
                "mode" : "PickColumn",
                "column-source" : {
                  "mode" : "Equals",
                  "filter-string" : "Area",
                  "invert" : false
                },
                "generator-source" : {
                  "generator-type" : null,
                  "generated-type" : "NumericColumn"
                }
              },
              "short-key" : "Value",
              "ui-order" : 0,
              "field-class-id" : "table-column-source"
            }
          }
        }
      },
      "postprocessing-postprocessing-output" : {
        "jipipe:slot-configuration" : {
          "input" : { },
          "output" : { }
        },
        "jipipe:algorithm-ui-location" : {
          "postprocessing" : {
            "Vertical" : {
              "x" : 1100,
              "y" : 50
            }
          }
        },
        "jipipe:node-info-id" : "jipipe:compartment-output",
        "jipipe:algorithm-compartment" : "postprocessing",
        "jipipe:algorithm:save-outputs" : true,
        "jipipe:algorithm:enabled" : true,
        "jipipe:algorithm:pass-through" : false,
        "jipipe:node:name" : "Postprocessing output",
        "jipipe:node:description" : null
      }
    },
    "edges" : [ {
      "source-algorithm" : "analysis-analysis-output",
      "target-algorithm" : "postprocessing-plot-tables",
      "source-slot" : "Spore measurements",
      "target-slot" : "Input",
      "metadata" : {
        "ui-hidden" : false
      }
    }, {
      "source-algorithm" : "preprocessing-import-image",
      "target-algorithm" : "preprocessing-preprocessing-output",
      "source-slot" : "Image",
      "target-slot" : "Data",
      "metadata" : {
        "ui-hidden" : false
      }
    }, {
      "source-algorithm" : "analysis-gaussian-blur-2d",
      "target-algorithm" : "analysis-auto-threshold-2d",
      "source-slot" : "Output",
      "target-slot" : "Input",
      "metadata" : {
        "ui-hidden" : false
      }
    }, {
      "source-algorithm" : "analysis-distance-transform-watershed-2d",
      "target-algorithm" : "analysis-analysis-output",
      "source-slot" : "Output",
      "target-slot" : "Spore Mask",
      "metadata" : {
        "ui-hidden" : true
      }
    }, {
      "source-algorithm" : "preprocessing-list-files",
      "target-algorithm" : "preprocessing-import-image",
      "source-slot" : "Files",
      "target-slot" : "Files",
      "metadata" : {
        "ui-hidden" : false
      }
    }, {
      "source-algorithm" : "preprocessing-preprocessing-output",
      "target-algorithm" : "analysis-gaussian-blur-2d",
      "source-slot" : "Data",
      "target-slot" : "Input",
      "metadata" : {
        "ui-hidden" : false
      }
    }, {
      "source-algorithm" : "analysis-distance-transform-watershed-2d",
      "target-algorithm" : "analysis-find-particles-2d",
      "source-slot" : "Output",
      "target-slot" : "Mask",
      "metadata" : {
        "ui-hidden" : false
      }
    }, {
      "source-algorithm" : "analysis-auto-threshold-2d",
      "target-algorithm" : "analysis-distance-transform-watershed-2d",
      "source-slot" : "Output",
      "target-slot" : "Input",
      "metadata" : {
        "ui-hidden" : false
      }
    }, {
      "source-algorithm" : "preprocessing-path-to-annotation",
      "target-algorithm" : "preprocessing-list-files",
      "source-slot" : "Annotated paths",
      "target-slot" : "Folders",
      "metadata" : {
        "ui-hidden" : false
      }
    }, {
      "source-algorithm" : "analysis-find-particles-2d",
      "target-algorithm" : "analysis-analysis-output",
      "source-slot" : "Measurements",
      "target-slot" : "Spore measurements",
      "metadata" : {
        "ui-hidden" : false
      }
    }, {
      "source-algorithm" : "preprocessing-folder-list",
      "target-algorithm" : "preprocessing-path-to-annotation",
      "source-slot" : "Folder paths",
      "target-slot" : "Paths",
      "metadata" : {
        "ui-hidden" : false
      }
    }, {
      "source-algorithm" : "analysis-find-particles-2d",
      "target-algorithm" : "analysis-analysis-output",
      "source-slot" : "ROI",
      "target-slot" : "Spore ROI",
      "metadata" : {
        "ui-hidden" : false
      }
    } ]
  },
  "compartments" : {
    "compartment-graph" : {
      "nodes" : {
        "preprocessing" : {
          "jipipe:slot-configuration" : {
            "input" : { }
          },
          "jipipe:algorithm-ui-location" : {
            "DEFAULT" : {
              "Vertical" : {
                "x" : 50,
                "y" : 50
              }
            }
          },
          "jipipe:node-info-id" : "jipipe:project-compartment",
          "jipipe:algorithm-compartment" : "DEFAULT",
          "jipipe:node:name" : "Preprocessing",
          "jipipe:node:description" : null
        },
        "analysis" : {
          "jipipe:slot-configuration" : {
            "input" : {
              "Preprocessing" : {
                "slot-data-type" : "jipipe:compartment-output",
                "slot-type" : "Input",
                "inherited-slot" : null,
                "name" : "Preprocessing",
                "custom-name" : null,
                "inheritance-conversions" : { }
              }
            }
          },
          "jipipe:algorithm-ui-location" : {
            "DEFAULT" : {
              "Vertical" : {
                "x" : 50,
                "y" : 250
              }
            }
          },
          "jipipe:node-info-id" : "jipipe:project-compartment",
          "jipipe:algorithm-compartment" : "DEFAULT",
          "jipipe:node:name" : "Analysis",
          "jipipe:node:description" : null
        },
        "postprocessing" : {
          "jipipe:slot-configuration" : {
            "input" : {
              "Analysis" : {
                "slot-data-type" : "jipipe:compartment-output",
                "slot-type" : "Input",
                "inherited-slot" : null,
                "name" : "Analysis",
                "custom-name" : null,
                "inheritance-conversions" : { }
              }
            }
          },
          "jipipe:algorithm-ui-location" : {
            "DEFAULT" : {
              "Vertical" : {
                "x" : 188,
                "y" : 450
              }
            }
          },
          "jipipe:node-info-id" : "jipipe:project-compartment",
          "jipipe:algorithm-compartment" : "DEFAULT",
          "jipipe:node:name" : "Postprocessing",
          "jipipe:node:description" : null
        }
      },
      "edges" : [ {
        "source-algorithm" : "analysis",
        "target-algorithm" : "postprocessing",
        "source-slot" : "Output",
        "target-slot" : "Analysis",
        "metadata" : {
          "ui-hidden" : false
        }
      }, {
        "source-algorithm" : "preprocessing",
        "target-algorithm" : "analysis",
        "source-slot" : "Output",
        "target-slot" : "Preprocessing",
        "metadata" : {
          "ui-hidden" : false
        }
      } ]
    }
  }
}
```
