+++
title = "ImageJ Dependencies"
weight = 1
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

JIPipe has various dependencies in form of ImageJ update sites that are not always provided via the Fiji update site or the ZIP package. 
During the startup of the software, JIPipe will automatically check for the appropriate ImageJ update sites and will guide you through the installation of all necessary libraries.

{{% notice info %}}
The dependency installation was revised in JIPipe version *1.74.0*. Please follow the appropriate procedures in the tutorial below.
{{% /notice %}}

# JIPipe 1.74.x or newer

{{< jipipe-info "1.74.x+" "This guide was written for JIPipe version 1.74.0 or newer" >}}

<div class=tutorial-list>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/missing_dependencies_new.png" /></div>
    <div class="tutorial-item-content">
    <h2>1. Dependency resolver</h2>
    On starting JIPipe, you will see the "Missing ImageJ dependencies" dialog that will list all missing dependencies. <strong>Click "Install all dependencies" (bottom right) to automatically download and install all required software.</strong>
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/missing_dependencies_new_close_imagej.png" /></div>
    <div class="tutorial-item-content">
    <h2>2. Restarting ImageJ</h2>
    After the download has finished, you will need to restart ImageJ. <strong>Click "Close ImageJ" (inside the blue bar) to immediately close ImageJ.</strong>
    </div>
  </div>
</div>

# JIPipe 1.73.x or older

{{< jipipe-info "<=1.73.x" "This guide was written for JIPipe version 1.73.x or older" >}}

<div class=tutorial-list>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/missing_dependencies.png" /></div>
    <div class="tutorial-item-content">
    <h2>1. Dependency resolver</h2>
    On starting JIPipe, you will see the "Missing ImageJ dependencies" dialog that will list all missing dependencies. <strong>Click "Resolve" (bottom right) to start the installation process.</strong>
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/missing_dependencies_apply_changes.png" /></div>
    <div class="tutorial-item-content">
    <h2>2. Applying the changes</h2>
    JIPipe will contact the ImageJ update site service and enable the required update sites automatically. You will be prompted with a message that the changes will need to be applied. <strong>Click "Apply changes" (top right) to start the download and installation of the dependencies.</strong>
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/missing_dependencies_close_imagej.png" /></div>
    <div class="tutorial-item-content">
    <h2>3. Restarting ImageJ</h2>
    After the download has finished, you will need to restart ImageJ. <strong>Click "Close ImageJ" (inside the blue bar) to immediately close ImageJ.</strong>
    </div>
  </div>
</div>
