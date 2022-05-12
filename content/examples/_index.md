+++
title = "Examples"
weight = 15
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

To get started, we prepared example pipelines based on real biological data. Please note that you require appropriate hardware, for example sufficient system memory, or a graphics card to run certain pipelines.
For larger projects, you can always try to reduce the number of input files before loading the data.

<div class="download-panel">
  <div class="download-panel-selection">
      <input type="radio" value="example-load-run" id="example-load-run" name="download-options"/>
      <label for="example-load-run"> <i class="fa fa-info-circle"></i>  How to load and run a project?</label>
      <input type="radio" value="example-load-result" id="example-load-result" name="download-options"/>
      <label for="example-load-result"> <i class="fa fa-info-circle"></i> How to load a result?</label>
      <input type="radio" value="download-linux-package" id="download-linux-package" name="download-options"/>
    </form>
  </div>
  <div class="download-panel-content" id="example-load-run-content">
    <h2>Loading the project</h2>
    <ol>
    <li>Download the <code>Project + Data</code> file and extract it</li>
    <li>Start JIPipe</li>
    <li>Navigate to <code>Project &gt; Open</code></li>
    <li>Select the *.jip file inside <code>&lt;Example directory&gt;/ProtocolAndData/</code></li>
    </ol>
    <h2>Option 1: Executing the whole pipeline</h2>
    <ol>
    <li>Click the <code>Run</code> button at the top right corner of the JIPipe window</li>
    <li>(Optional) Select an output directory</li>
    <li>Click <code>Run now</code></li>
    <li>After the run has concluded, the results will be shown in a dedicated tab</li>
    </ol>
    <h2>Option 2: Executing a specific node (cache results into memory)</h2>
    <ol>
    <li>Navigate to the node of interest (e.g., a visualization or measurement)</li>
    <li>Click the green <i class="fa fa-play-circle"></i> button inside the node</li>
    <li>Click <code>Update cache</code></li>
    <li>The results will be displayed in the node properties panel</li>
    </ol>
  </div>
  <div class="download-panel-content" id="example-load-result-content">
    <h2>Loading the project</h2>
    <ol>
    <li>Download the <code>Project + Data + Results</code> file and extract it</li>
    <li>Start JIPipe</li>
    <li>Navigate to <code>Project &gt; Open analysis output</code></li>
    <li>Select the folder <code>&lt;Example directory&gt;/ProjectAndCache</code></li>
    </ol>
    <h2>Option 1: Browsing the results</h2>
    <p>Click <code>Load in new tab</code></p>
    <p>The results will be opened into a browser tab where you can navigate through the results</p>
    <h2>Option 2: Caching the results</h2>
    <p>Click <code>Load into cache</code></p>
    <p>The project that generated the results will be loaded and all results will be loaded into the memory cache</p>
    <p><i class="fa fa-warning"></i> Please ensure that your computer has sufficient memory</p>
  </div>
</div>

{{< example-gallery >}}



<script type="text/javascript">
// Download page menus
$(".download-panel-content").css("display", "none");
$('input:radio[name="download-options"]').change(function(){
  $(".download-panel-content").css("display", "none");
  $("#" + $(this).val() + "-content").css("display", "block");
});
$('input:radio[value="example-load-run"]').change();
$('input:radio[value="example-load-run"]').prop("checked", true);
</script>