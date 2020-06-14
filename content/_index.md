+++
title = "ACAQ5"
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++


<img src="/img/logo-content.svg" style="width: 40%;"/>

# Macro programming for everyone!

ACAQ5 is a graphical batch processing programming language for [ImageJ](https://fiji.sc/).
It comes with an easy-to-use graphical macro editor that requires no programming
knowledge. Image processing steps can be added to the user interface and connected
to form powerful and complex pipelines that can be easily scaled up and down.

<center>
<button class="btn btn-success btn-large" type="button" onclick="location.href='/download'"> <i class="fa fa-windows"></i><i class="fa fa-linux"></i><i class="fa fa-apple"></i> Download now </button>
<button class="btn btn-info btn-large" type="button" onclick="location.href='/tutorials'"> <i class="fa fa-graduation-cap"></i> Learn how to use it </button>
<button class="btn btn-default btn-large" type="button" onclick="location.href='/examples'"> <i class="fa fa-flask"></i> Show examples </button>
</center>

<!-- <center>
  <video poster="./img/features/graph_editor.png" preload="none" loop style="margin-top: 5em;" controls >
    <source src="/videos/acaq-example-fast.webm" />
  </video>
</center> -->
![Example of graphical programming](/img/features/graph_editor.png)

<div class="features-container">
  <div>
    <img src="/img/features/macro_support.png"/>
    <div>
      <h3>Macro support</h3>
      You already developed custom <i>ImageJ</i> macros?
      ACAQ allows you to re-use your macros via a <i>Macro node</i>. Copy and paste
      your code, and add input and output slots.
    </div>
  </div>
  <div>
    <img src="/img/features/algorithm_finder.png"/>
    <div>
      <h3>Algorithm finder</h3>
      You do not know which should be the next processing step?
      The ACAQ5 algorithm finder not only lists all compatible processing steps
      for given data.
    </div>
  </div>
  <div>
    <img src="/img/features/quick-run.png"/>
    <div>
      <h3>Quick run & caching</h3>
      What are the best algorithm parameters?
      Find those parameters can be very time-consuming.
      <br/>
      ACAQ5 allows you to easily test multiple algorithm parameters without re-calculating the previous steps. You can go back to an older set of parameters and directly compare the results.
    </div>
  </div>
  <div>
    <img src="/img/features/graph_compartments.png"/>
    <div>
      <h3>Graph compartments</h3>
      Graph-based programs get quickly confusing?
      ACAQ5 allows you to separate the analysis into multiple compartments. You can create
      as many compartments as you want, connect them, and also export and import them.
    </div>
  </div>
</div>

# Powerful result analysis

You can either analyze results directly after processing or load existing results
directly into ACAQ5. The powerful result analysis tool lets you import data back
into *ImageJ*, or summarize and plot them directly within ACAQ5.

![Example of result analysis](/img/features/result_analysis.png)

<div class="features-container">
  <div>
    <img src="/img/features/table_analyzer.png"/>
    <div>
      <h3>Table analyzer</h3>
      You want to quickly summarize a table of measurements?
      ACAQ comes with a tool to summarize and concatenate tables without
      any external tools. The tool can directly import table data generated
      by <i>ImageJ</i>.
    </div>
  </div>
  <div>
    <img src="/img/features/plot_builder.png"/>
    <div>
      <h3>Plot builder</h3>
      Need to quickly plot a table?
      ACAQ5 comes with a powerful plot builder that supports a multitude of different plot types,
      such as XY plots, bar charts, histograms, and box plots.
    </div>
  </div>
</div>

# Extending ACAQ5

ACAQ5 can be extended by programmers and *non-programmers* via its *Java* API and
its *JSON* extension API. *JSON extensions* can be easily created via a graphical user
interface and allows you to publish your pipelines as algorithm node.
You can also create a hierarchy of custom data annotation types using the built-in editor.

![Plugin manager](/img/features/plugin_manager.png)

<div class="features-container">
  <div>
    <img src="/img/features/extension-editor.png"/>
    <div>
      <h3>Extension builder</h3>
      You want to publish your pipeline?
      ACAQ comes with a graphical user interface to create plugins.
      You can add custom algorithms and export them as distributable <i>*.json</i> file.
      Users just have to put this file into the <i>ImageJ</i> plugins folder.
    </div>
  </div>
</div>


{{% panel %}}
ACAQ5 was developed
by [Research Group Applied Systems Biology](https://www.leibniz-hki.de/en/applied-systems-biology.html) *- Head: Prof. Dr. Marc Thilo* Figge

**HKI-Center for Systems Biology of Infection**

Leibniz Institute for Natural Product Research and Infection Biology - Hans Knöll Insitute (HKI)

Adolf-Reichwein-Straße 23, 07745 Jena, Germany

<a href="https://www.leibniz-hki.de/en/" target="_blank"><img src="/img/credits/hki.jpg" style="height: 4em; display: inline;"/></a>
<a href="https://www.ilrs.de/" target="_blank"><img src="/img/credits/ilrs.svg" style="height: 6em; display: inline;"/></a>
<a href="https://www.uni-jena.de/en/" target="_blank"><img src="/img/credits/uni-jena.png" style="height: 7em; display: inline;"/></a>
{{% /panel %}}
