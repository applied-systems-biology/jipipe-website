+++
title = "JIPipe"
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++


<img src="/img/logo-content.svg" class="jipipe-logo-index"/>

<div class="jipipe-slogan-index"><span>Macro programming for everyone!</span></div>

<center>
JIPipe is a visual programming language for <a href="https://fiji.sc/">ImageJ</a> that
allows you to create macros <strong>without any programming </strong> by just creating a flowchart!
</center>
<div class="button-row">
  <a class="btn btn-info btn-lg" style="display: flex; align-items: center; align-content: center; gap: 1em; flex-wrap: wrap;" type="button" href="https://doi.org/10.21203/rs.3.rs-1641739/v1" target="_blank"> <img style="height: 32px; margin: 1em;" src="https://www.researchsquare.com/static/img/logos/logo-rs.svg" /> Read the current preprint <i class="fa fa-external-link"></i> </a>
  <a class="btn btn-info btn-lg" style="display: flex; align-items: center; align-content: center; gap: 1em; flex-wrap: wrap;" type="button" href="/supplementary-information">  Supplementary information </a>
</div>
<div class="button-row">
  <a class="btn btn-success btn-large" type="button" href="/download"> <i class="fa fa-windows"></i><i class="fa fa-linux"></i><i class="fa fa-apple"></i> Download now </a>
  <a class="btn btn-default btn-large" type="button" href="/tutorials"> <i class="fa fa-graduation-cap"></i> Learn how to use it </a>
  <a class="btn btn-default btn-large" type="button" href="/examples"> <i class="fa fa-flask"></i> Show examples </a>
</div>

<!-- <center>
  <video poster="./img/features/graph_editor.png" preload="none" loop style="margin-top: 5em;" controls >
    <source src="/videos/jipipe-example-fast.webm" />
  </video>
</center> -->

<div class="landing-features-container">
<div class="landing-features">
  <div>
    <div class="feature-description">
      <h2>Intuitive programming</h2>
      <span>JIPipe includes a <a href="https://en.wikipedia.org/wiki/Visual_programming_language" target="_blank">visual programming language</a> into ImageJ that was designed as full replacement for writing macros or Python scripts. Just arrange the operations of your workflow into a flow chart and let JIPipe automatically handle data and metadata management, parallelization, type conversions, error validation, and export of results.</span>
    </div>
    <img src="/img/features/graph_editor.png" />
  </div>
  <div>
    <div class="feature-description">
      <h2>Find and manage nodes</h2>
      <span>JIPipe helps you to learn about the over 1000 available nodes by organizing them into searchable menus and by integrating the <strong>Algorithm finder</strong> that guides you in creating a pipeline by offering compatible processing steps for your current data. All documentation, including relevant papers are accessible within JIPipe. </span>
    </div>
    <img src="/img/features/algorithm_finder_2.png" />
  </div>  
  <div>
    <div class="feature-description">
      <h2>Organize and document your pipelines</h2>
      <span>JIPipe allows you to organize your pipelines into <strong>compartments</strong> and groups to help you to keep track of your analysis. Keep track of important nodes via an integrated bookmark system. Furthermore, you can document your pipeline by adding comment nodes, and set custom 
      labels, names, and descriptions.</span>
    </div>
    <img src="/img/features/graph_compartments.png" />
  </div>
  <div>
    <div class="feature-description">
      <h2>Built on ImageJ</h2>
      <span>JIPipe is built on the established ImageJ software and comes with commonly used ImageJ functions and plugins, just as CLIJ2 and MorphoLibJ.
      You can re-use your existing macros and ImageJ2 scripts and create easy-to-use graphical interfaces for them, which will also be available directly within ImageJ via JIPipe's two-way integration.</span>
    </div>
    <img src="/img/features/macro_support.png" />
  </div>
  <div>
    <div class="feature-description">
      <h2>Plugin support</h2>
      <span>JIPipe allows you to export your pipelines as custom nodes that can be installed just like any other ImageJ plugin. Programmers can make use of the powerful Java API to enhance the feature set even more and publish extensions just as any ImageJ plugin.</span>
    </div>
    <img src="/img/features/plugin_manager.png" />
  </div>
  <div>
    <div class="feature-description">
      <h2>Review results</h2>
      <span>You can either analyze results directly after processing or load existing results
      directly into JIPipe. The powerful result analysis tool lets you import data back
      into ImageJ, or summarize and plot them directly within JIPipe.</span>
    </div>
    <img src="/img/features/result_analysis.png" />
  </div>
  <div>
    <div class="feature-description">
      <h2>Advanced table processing</h2>
      <span>JIPipe comes with functions to modify and process tables. These includes table processing nodes and a graphical tool for editing tables interactively.</span>
    </div>
    <img src="/img/features/table_analyzer.png" />
  </div>
  <div>
    <div class="feature-description">
      <h2>Advanced plotting features</h2>
      <span>JIPipe includes both plotting nodes and an interactive plot builder based on <a href="https://www.jfree.org/jfreechart/" target="_blank">JFreeChart</a> that supports a multitude of different plot types,
      including XY plots, bar charts, histograms, and box plots.</span>
    </div>
    <img src="/img/features/plot_builder.png" />
  </div>
</div>
</div>

<div class="landing-page-try">
  <h1>Do you want to try it?</h1>
  <span>
  You can try JIPipe right now in three simple steps!
  </span>
  <ol>
    <li><a href="https://fiji.sc/" target="_blank">Download</a> ImageJ or open your existing ImageJ installation</li>
    <li>Activate the JIPipe update site (<i>Help &gt; Update ...</i>)</li>
    <li>Run the JIPipe GUI from within the plugin menu</li>
  </ol>
  <span>
  After starting JIPipe, we recommend you to follow our <a href="/tutorials/">tutorial series</a> or load an <a href="/examples">example pipeline</a>.
  </span>
</div>

<div class="landing-page-contact">
  <h1>Do you have a question or require some help?</h1>
  <span>
  Please do not hesitate to contact us! You can always contact the JIPipe developers via the community, or via E-Mail.
  If you find a bug, you can also report it directly on GitHub.
  </span>
  <div class="button-row">
  <a class="btn btn-success btn-large" type="button" href="https://forum.image.sc/tag/jipipe" target="_blank"> <i class="fa fa-comments"></i> Community </a>
  <a class="btn btn-success btn-large" type="button" href="mailto:thilo.figge@leibniz-hki.de"> <i class="fa fa-envelope"></i> Send us an E-Mail </a>
  <a class="btn btn-info btn-large" type="button" href="https://github.com/applied-systems-biology/jipipe/issues" target="_blank"> <i class="fa fa-bug"></i> Report a bug </a>
  </center>
</div>

<div class="landing-page-credits">
<div style="margin: 1rem;">
JIPipe was developed by <a href="https://www.leibniz-hki.de/en/applied-systems-biology.html">Research Group Applied Systems Biology</a><br/>Head: Prof. Dr. Marc Thilo Figge
<strong>HKI-Center for Systems Biology of Infection</strong></br>
Leibniz Institute for Natural Product Research and Infection Biology - Hans Knöll Insitute (HKI)</br>
Adolf-Reichwein-Straße 23, 07745 Jena, Germany
</div>
<div>
<a href="https://www.leibniz-hki.de/en/" target="_blank"><img src="/img/credits/hki.png" style="height: 4em; display: inline;"/></a>
<a href="https://www.ilrs.de/" target="_blank"><img src="/img/credits/ilrs.svg" style="height: 6em; display: inline;"/></a>
<a href="https://www.uni-jena.de/en/" target="_blank"><img src="/img/credits/uni-jena.png" style="height: 7em; display: inline;"/></a>
<a href="https://www.polytarget.uni-jena.de/" target="_blank"><img src="/img/credits/PolyTarget_logo.png" style="height: 6em; display: inline;"/></a>
<div>
</div>

<script type="text/javascript">
$(document).ready(function(){
  // Landing page slideshow
  $('.landing-features').slick({
    infinite: true,
    dots: true,
    slidesToShow: 3,
    slidesToScroll: 3,
    autoplay: true,
    autoplaySpeed: 10000,
    centerMode: true,
    centerPadding: '5rem',
    initialSlide: 1,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
    ]
  });
});
</script>
