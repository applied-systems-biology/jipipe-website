+++
title = "Creating an extension"
description = "This step-by-step tutorial explains how to create an JIPipe extension from parts of an existing pipeline without the need for programming."
weight = 20
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

<div class=tutorial-list>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/extension/step0.png" /></div>
    <div class="tutorial-item-content">
    <h2>1. Existing pipeline</h2>
    In this tutorial, we will create a custom algorithm extension based on parts of the pipeline created in the <a href="/tutorials/analysis">other tutorial</a>.
    Please open the project file for the pipeline and navigate to the <code>Preprocessing</code> tab.
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/extension/step1.png" /></div>
    <div class="tutorial-item-content">
    <h2>2. Selecting the algorithms</h2>
    Please select the following algorithms (you can either do this by holding the <code>Shift</code> keyboard button and clicking the nodes or dragging a selection around the nodes):
    <ul>
      <li>Folder list</li>
      <li>Path to annotation</li>
      <li>List files</li>
      <li>Import image</li>
    </ul>
    After selecting the algorithms, right-click a selected node and click <strong>Export</strong>.
    <div class="notices info">
      <p>
        Selecting one or multiple algorithms is only <strong>one</strong> way to create a custom algorithm. You can also export a whole project compartment (via the <code>Compartments</code> tab) or
        the whole pipeline (via <code>Project &gt; Export as custom algorithm</code>)
      </p>
    </div>
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/extension/step2.png" /></div>
    <div class="tutorial-item-content">
    <h2>3. Preview</h2>
    This will open a new tab where you can see a preview of the pipeline that will be exported.
    You see that the connections between the selected algorithms were kept, while two additional nodes were added:
    <ul>
      <li>Group input</li>
      <li>Group output</li>
    </ul>
    Those two nodes respectively act as input and output of the whole exported algorithm. Its input and output slots will be accessible to users of your custom algorithm.
    JIPipe automatically creates matching input and output slots based on the selected algorithms, but you can choose to modify your pipeline in this step.<br/>
    Now click <code>Export to extension</code> and then <code>New extension</code>.
    <div class="notices tip">
      <p>
        You can always modify custom algorithms within the extension builder. This will be shown in a later step.
      </p>
    </div>
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/extension/step3.png" /></div>
    <div class="tutorial-item-content">
    <h2>4. Extension builder</h2>
    This will open the JIPipe extension builder tool that allows you to package one or multiple custom algorithms into an extension. Such extensions can be just put
    into the ImageJ plugin directory and will be automatically picked up by JIPipe just like any ImageJ plugin.<br/>
    An extension has a set of metadata that you need to set up. To do this, switch to <code>Extension settings</code>.
    <div class="notices tip">
      <p>
        You can always find the extension builder in <code>Plugins &gt; New JSON extension ...</code>
      </p>
    </div>
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/extension/step4.png" /></div>
    <div class="tutorial-item-content">
    <h2>5. Extension metadata</h2>
    JIPipe utilizes a unique extension ID to identify an extension. This is the most important setting and should be chosen carefully. The format must follow a specific structure: <code>[Author]:[Extension]</code>, where <code>[Author]</code> provides information about the extension author, and <code>[Extension]</code> contains some identifier. We recommend to let the <code>[Author]</code> information follow the <a href="https://maven.apache.org/guides/mini/guide-naming-conventions.html" target="_blank">Maven naming conventions</a>.<br/>
    All the other metadata can be freely chosen or left out (with the exception of the name). Use the other metadata to add authors (including affiliations), a website, define a license, and cite
    work your pipeline is depending on.
    <br/><br/>Finally, you can review or modify the extension contents by going to <code>Extension contents</code>.
    <div class="notices tip">
      <p>
        Any dependency to other JIPipe extensions are automatically stored within any project or extension file. JIPipe uses this information to figure out a valid load order.
      </p>
    </div>
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/extension/step5.png" /></div>
    <div class="tutorial-item-content">
      <h2>6. Extension content</h2>
      Our custom algorithm is already included in the list of extension contents (left-hand side). You only need to provide metadata. The most important setting is the unique algorithm ID that is
      used by JIPipe to identify your algorithm. Please choose a meaningful string that avoids having duplicate identifiers. Then you can provide a name, category, icon and menu location.
      <div class="notices info">
        <p>
          The extension builder will warn you if an algorithm ID already exists (we will show this function later). You can choose to ignore this if a duplicate ID is intentional - this will
          override an algorithm and replace it by the new one.
        </p>
      </div>
      <div class="notices info">
        <p>
          Algorithm IDs are not namespaced, meaning that they are independent of the extension ID.
        </p>
      </div>
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/extension/step6.png" /></div>
    <div class="tutorial-item-content">
      <h2>7. Parameters</h2>
      By default, your algorithm does not come with parameters aside of the few default parameters (name, description, pass-through, enable). For your pipelines it can be useful to
      let users change some parameters. The <code>Exported parameters</code> section gives you full control on which parameters can be changed and how they are organized.<br/><br/>
      First, you need to create a group by clicking the <i class="fa fa-add"></i> <strong>Add group</strong> button. This will create a new section in the final parameter UI. Then you can
      reference parameters by clicking <i class="fa fa-cog"></i> <strong>Add parameter</strong>. You can customize the name and descriptions of any item.
      <br/><br/>
      It is always a good idea to check the parameters or maybe apply some corrections to the algorithm. To do this, click <i class="fa fa-pencil"></i> <strong>Edit graph</strong>
      <div class="notices tip">
        <p>
          You can just add all parameters of a specific algorithm by clicking <code>Auto add algorithm</code>. Just check if users can properly decipher the function of each parameter.
        </p>
      </div>
      <div class="notices tip">
        <p>
          Hover over the blue <i class="fa fa-wrench"></i> <strong>wrench</strong> icon to display information about the referenced parameter.
        </p>
      </div>
      <div class="notices info">
        <p>
          Each parameter can only be referenced once. You will get a warning if you have duplicate references.
        </p>
      </div>
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/extension/step7.png" /></div>
    <div class="tutorial-item-content">
      <h2>8. Modifying the algorithm</h2>
      The extension builder contains a fully function algorithm graph editor (aside of anything that runs the graph) that allows you to modify an algorithm or create
      one from scratch. Use the editor to check the parameters of your algorithm. For example, it is a good idea to remove the folders from the <code>Folder list</code> algorithm.
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/extension/step8.png" /></div>
    <div class="tutorial-item-content">
      <h2>9. Validation and installation</h2>
      Click the <i class="fa fa-check"></i> <strong>Validate</strong> button on the top right corner to check for any issues. This tool will also detect duplicate extension and algorithm IDs.
      Errors about duplicates can be ignored if they are intentional.
      <br/></br/>
      Finally, you can install the extension by clicking <i class="fa fa-download"></i> <strong>Install</strong>. This will open a dialog to save the extension into the ImageJ plugin directory and
      attempt to load the extension.
      <div class="notices tip">
        <p>
          We still recommend to restart ImageJ, especially if you are installing duplicate IDs.
        </p>
      </div>
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/tutorials/extension/step9.png" /></div>
    <div class="tutorial-item-content">
      <h2>10. Using the algorithm</h2>
      You can find your algorithm in the menu, navigation bar, and algorithm finder just like any other algorithm. You can see that the parameters are included according to the settings within
      the extension builder.
      <div class="notices tip">
        <p>
          JSON Algorithms can be always converted into <i class="fa fa-cubes"></i> <strong>Group nodes</strong> that unlink the underlying pipeline from the JSON algorithm definition
          and allows users to modify them. Just select <i class="fa fa-file-zip-o"></i> <strong>Convert to group</strong> to apply such conversions.
        </p>
      </div>
      <div class="notices tip">
        <p>
          <i class="fa fa-cubes"></i> <strong>Group nodes</strong> are related to JSON algorithms. If you export a single group node, its contents are exported into an algorithm instead of
          the node itself.
        </p>
      </div>
    </div>
  </div>
</div>
