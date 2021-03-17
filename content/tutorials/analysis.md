+++
title = "Image analysis pipeline"
description = "This step-by-step tutorial explains how to create an image analysis workflow with simple algorithms like Gaussian blur, auto thresholding, and distance transform watershed. The segmented objects are quantified and plots are genereated."
weight = 10
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

<div class="notices tip">
  <p>
    This tutorial is also available as <a href="/tutorials/analysis_video">video</a>.
  </p>
</div>

<div class=tutorial-list>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step0.png" /></div>
    <div class="tutorial-item-content">
    <h2>1. First start</h2>
    On starting JIPipe, you will see such a screen: It contains a short introduction, the <a href="/documentation/graph-compartment">graph compartment editor</a>,
    an three pre-defined graph compartments <i>Preprocessing</i>, <i>Analysis</i>, and <i>Postprocessing</i>. As described in the graph compartment documentation, you
    can ignore graph graph compartments. But in this tutorial we will make use of its capabilities to clearly separate the pipeline into the mentioned tree steps.
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step1.png" /></div>
    <div class="tutorial-item-content">
      <h2>2. Graph compartments</h2>
      Here you can see how the data flows between graph compartments. You do not have to do anything here, as this is the default configuration.
      Data flows from <i>Preprocessing</i> to <i>Analysis</i>, and finally to <i>Postprocessing</i>.
      <div class="notices info">
        <p>
          You can ignore the graph compartments and of course define your own data flow. Graph compartments are very flexible. Just take a look at the documentation.
        </p>
      </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step2.png" /></div>
    <div class="tutorial-item-content">
      <h2>3. Preprocessing</h2>
      In this tutorial, the preprocessing step should consist of algorithms that load and organize data for the following processes.
      To switch to the graph editor for the preprocessing step, just click the <code>Preprocessing</code> tab.
      <br/>You will find an empty graph aside of the <code>Preprocessing output</code> node. We will utilize this node in
      a later step to pass preprocessed data to other steps.
      <div class="notices tip">
        <p>
          The graph is stored project-wide. You can just close all graph editors that you do not need for the current task.
          You can re-open them via the graph compartment editor. If you closed it, you can re-open it via the <code>Compartment</code> menu in the project menu bar.
        </p>
      </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step3.png" /></div>
    <div class="tutorial-item-content">
      <h2>4. Adding a data source</h2>
      The most common way how data is provided is to load them from files or folders. JIPipe comes preinstalled with data-types and algorithms
      that handle <a href="/documentation/standard-library/filesystem">filesystem operations</a>. The tutorial data is supplied as set of folders
      that contain the input images as TIFF files in a sub-directory.<br/>We begin by adding a <strong>data source</strong> that supplies a list of folders.
      You can find it in <code>Add data &gt; Folder &gt; Folder list</code>. After selecting the item, it will appear in the graph.
      <div class="notices tip">
        <p>
          You can also drag folders and/or files directly into the graph editor area. Corresponding file data source nodes are then created.
          For this example, you could just drag the input data folders directly into the graph.
        </p>
      </div>
      <div class="notices tip">
        <p>
          You do not have to navigate via the menu. You can also type the algorithm name or some keywords into the bar that reads <i>Search ...</i>.
        </p>
      </div>
      <img src="/img/tutorials/analysis/step4.png" class="thumbnail" />
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step5.png" /></div>
    <div class="tutorial-item-content">
      <h2>5. Including the input folders</h2>
      Select the newly created algorithm node by clicking it. The panel on the right-hand side will update and allow you to change
      the <i>parameters</i> of the selected algorithm node. Click the <i class="fa fa-plus"></i> <strong>Add</strong> button and select the
      input folders.
      <div class="notices tip">
        <p>
          You can save the current project at any time and re-load it later. If you save it in a parent directory relative to where your data is located,
          JIPipe automatically saves all paths relative to the project file. This means you can just move all your data, including the project to other machines or
          hard drive partitions without breaking anything.
        </p>
      </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step6.png" /></div>
    <div class="tutorial-item-content">
      <h2>6. Annotating data</h2>
      JIPipe is designed as batch processing tool, meaning that it can be always scaled from small test data up to large data sets.
      It can be helpful for you and some algorithms to know which data belongs together. JIPipe introduces the concept of <i>data annotations</i> that
      assign data to an unique data set and are passed through the pipeline. You can find more about this in the <a href="/documentation/batch-pipelines">documentation about how JIPipe processes data</a>.
      <br/>In this step we add the data annotation directly at the beginning by attaching the input folder name to each folder that was passed into the pipeline.
      This is done via the <code>Annotations &gt; Generate &gt; Path to annotation</code> algorithm. Just add this algorithm into the graph.<br/>
      For more advanced projects there are plenty of other sources for annotations, like importing them from tables, or extracting and modifying annotations.
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step7.png" /></div>
    <div class="tutorial-item-content">
      <h2>7. Connecting slots</h2>
      The input folders are converted into a format understandable by JIPipe by the <code>Folder list</code> algorithm. The output then can be passed to following algorithms
      like the <code>Folders to annotations</code> algorithm we added in the last step.<br/>
      To make a connection click the <i class="fa fa-chevron-up"></i> or <i class="fa fa-chevron-down"></i> button and select the available data slot.
      You can see that a connection between the two data slots was created.<br/>
      This list is always sorted from the closest to the farthest away slot.
      <div class="notices tip">
        <p>
          You can also use your mouse to drag a connection between slots.
        </p>
      </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step8.png" /></div>
    <div class="tutorial-item-content">
      <h2>8. Annotation type</h2>
      Annotations are like columns in a table - only that our table contains complex data types. The <i>Path to annotation</i> algorithm automatically extracts
      the path's file name (or directory name) and annotates it to the input row. By default, the algorithm creates a column <code>Dataset</code>. If you want you can
      change it to another meaningful column name. And with more complex projects you will probably have many different columns.
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step9.png" /></div>
    <div class="tutorial-item-content">
      <h2>9. Extracting the image file</h2>
      We have now the folders and can extract the input image file from each one of them.<br/>
      You can find an algorithm designed for such purposed in <code>File system &gt; List &gt; List files</code>. Add it to the graph and connect it to the <code>Subfolder name</code> output.
      This algorithm is not only able to list files, but also filter them directly.<br/>
      In this case, we exactly know that our files are located within a sub-folder <code>in</code>. Please update the <strong>Subfolder</strong> parameter by setting it to <code>in</code>.
      The filter uses an <a href="/documentation/expressions">expression</a> that allows highly flexible filters. But for this example, we only want to test if the filename contains <code>.tif</code>.
      To do this, type <code>name CONTAINS ".tif"</code> into the filter box.
      <div class="notices tip">
        <p>
          If you have more complicate folder structures, you can apply the "Navigate to sub-folder" operation with a distinct algorithm. You can find it in the Filesytem category.
        </p>
      </div>
      <div class="notices tip">
        <p>
          We highly recommend that you get familiar with expressions, as they are present in most filtering or generation nodes. They are easy to learn and write, but also allow extremely powerful operations.
        </p>
      </div>
  </div>

  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step11.png" /></div>
    <div class="tutorial-item-content">
      <h2>10. Testing if the pipeline is correct (Optional)</h2>
      The <a href="/documentation/quick-run">Quick Run</a> feature allows you to run the pipeline until the selected algorithm and compare multiple parameter sets.
      It is a good way to test if the pipeline works so far. To create a quick run right-click the <code>List files</code> node and select <i class="fa fa-play"></i> <strong>Run &amp; show results</strong>.
      <div class="notices info">
        <p>
          The quick run will check if the pipeline is valid might show some error. If you think that the pipeline is valid, click <i class="fa fa-refresh"></i> <strong>Retry</strong>
          to check the pipeline again. It sometimes does not update for performance reasons.
        </p>
      </div>
      <div class="notices tip">
        <p>
          You can also do a quick-run that just refreshes the <a href="/documentation/cache">Cache</a>.
        </p>
      </div>
      <div class="notices tip">
        <p>
          You can also start a Quick Run from the parameter panel if you select the algorithm.
        </p>
      </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step12.png" /></div>
    <div class="tutorial-item-content">
      <h2>11. Testing if the pipeline is correct - results (Optional)</h2>
      Navigate to the output if the <code>List files</code> algorithm and check if the file paths are correct.
      See our <a href="/documentation/quick-run">Quick Run documentation</a> for more information about the testbench and its features.
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step13.png" /></div>
    <div class="tutorial-item-content">
      <h2>12. Importing the images</h2>
      After correctly setting up the files, you can import them as images. You can find various importers for
      image types in <code>Add data</code>.
      Our images do not require Bio-Formats, so we choose <code>Add data &gt; Image &gt;Import image</code>. Connect it to the output of <code>List files</code>.
      <div class="notices tip">
        <p>
          The <code>Import image</code> node does not ensure the exact bit depth and dimensionality of the output image. You can change this via a parameter that allows you
          to choose the exact image type.
        </p>
      </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step14.png" /></div>
    <div class="tutorial-item-content">
      <h2>13. Preprocessing output</h2>
      You could continue with the analysis directly from the <code>Import image</code> node. But to showcase the graph compartments feature, we decide to
      have the imported greyscale image as output for of the <code>Preprocessing</code> compartment. The output of a graph compartment is <i>only</i> interfaced through a special node,
      in this case <code>Preprocessing output</code>.<br/>We first have to define an output slot by clicking the <i class="fa fa-add"></i> button. Select <code>Import image</code>,
      set a name, and click <i class="fa fa-plus"></i> <strong>Add</strong>.
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step15.png" /></div>
    <div class="tutorial-item-content">
      <h2>14. Connecting the output</h2>
      Finally, connect the output of <code>Import image</code> to the new input slot of <code>Preprocessing output</code>.
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step16.png" /></div>
    <div class="tutorial-item-content">
      <h2>15. The analysis</h2>
      Now we are finished with the preprocessing. Switch to the <code>Analysis</code> graph compartment by selecting the tab in the tab bar.
      You see that it also contains a node called <code>Preprocessing output</code>. This is the same node as in the preprocessing compartment, but
      it only contains output data this time.<br/>
      We continue the analysis with a Gaussian filter that can be found in <code>Images &gt; Blur &gt; Gaussian blur 2D</code>.
      Add it to the graph and connect it to the output of <code>Preprocessing output</code>.
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step17.png" /></div>
    <div class="tutorial-item-content">
      <h2>16. Finding the particles</h2>
      Add following algorithms to the graph and connect them the the previous output:
      <ul>
        <li><code>Images &gt; Threshold &gt; Auto Threshold 2D</code></li>
        <li><code>Images &gt; Binary &gt; Distance transform watershed 2D</code></li>
        <li><code>Images &gt; Analyze &gt; Find particles 2D</code></li>
      </ul>
      <br/>
      This will create a more or less accurate segmentation of the objects (spores) that are visible in the data.
      The generated masks are then analyzed to extract ROI and measurements.
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step18.png" /></div>
    <div class="tutorial-item-content">
      <h2>17. Analysis output</h2>
      Create multiple analysis output slots via the <i class="fa fa-add"></i> button. Export at least the measurements table.
      In our example, we exported the mask, ROI, and the measurements.
      <div class="notices tip">
        <p>
          You can hide edges if you want. Just click the  <i class="fa fa-chevron-up"></i> or  <i class="fa fa-chevron-down"></i> and select <strong>Hide edge</strong>.
        </p>
      </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step19.png" /></div>
    <div class="tutorial-item-content">
      <h2>18. Postprocessing</h2>
      The postprocessing consists of generating a histogram plot of the spore particle areas.
      You can find a node that generates plots in <code>Tables &gt; Plot &gt; Plot tables</code>.
      Connect the measurements to the plotting node and set its plot type to <i class="fa fa-bar-chart"></i> <strong>Histogram plot</strong>.
      <br/>You see that the node parameters change. They adapt to the the currently selected plot and expect from you to input from which table column(s)
      to extract the data from. Either you know the name of the columns, or you can use the testbench to generate output and check it yourself. Some algorithms
      also write the names of their output columns in their description.
      <br/>The correct column for the measurements is <code>Area</code>.
      <br/>You can also change various plot-specific settings and determine how output images are generated.
      <div class="notices tip">
        <p>
          The plot node automatically generates SVG and PNG renders in the selected resolution. This is not a definite choice, as JIPipe has its own plot builder that
          can import generated plots from within the results UI.
        </p>
      </div>
      <div class="notices tip">
        <p>
          Aside from exact matching, plot input columns can be matched via a <a href="https://en.wikipedia.org/wiki/Regular_expression" target="_blank">regular expression</a>
          or generated. Use the generator by selecting <i class="fa fa-cog"></i>. A generator can be useful if you have no matching column within your data.
        </p>
      </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step20.png" /></div>
    <div class="tutorial-item-content">
      <h2>19. Running the pipeline</h2>
      To run the pipeline, click the <i class="fa fa-cog"></i> <strong>Run</strong> button at the top right corner. This will open a new tab where you can select the output directory.
      You can also generate a random folder that will be located on your operating system's temporary directory
      by clicking the <img class="icon-image" src="/img/icons/random.png" /> button.
      <br/>After setting up the parameters, click <i class="fa fa-cog"></i> <strong>Run now</strong>.
      <div class="notices info">
        <p>
          JIPipe attempts to prevent the most common errors (such as wrong parameters) and displays a message if something was found. Please follow the instructions of those messages.
          Depending on the data and algorithms, the behavior might not be forseeable and a crash occurs during the processing. A similar easy-to-understand message is shown on how
          to proceed or repair the issue.
        </p>
      </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step21.png" /></div>
    <div class="tutorial-item-content">
      <h2>20. Displaying results</h2>
      After the pipeline was successfully executed, a <a href="/documentation/result-analysis">result analysis interface</a> is shown. It displays the
      results of all output slots. You can navigate through the results via the tree on the left-hand side.
      On selecting a row, an interface is displayed below the table that contains various operations to import or open the data.
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/analysis/step22.png" /></div>
    <div class="tutorial-item-content">
      <h2>21. Displaying plots</h2>
      To open the generated plots, navigate to <code>Results &gt; Postprocessing &gt; Plot tables &gt; Output</code> and double-click an entry in the list.
      Alternatively, you can also select the row and click <code>Open in JIPipe</code>. This will open a new tab with a plot builder tool.
      Please take a look at the <a href="/documentation/standard-library/plots-tables">plots and tables documentation</a> for more information how the tool works.
  </div>
</div>
