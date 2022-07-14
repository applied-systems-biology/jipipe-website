+++
title = "Setup R integration"
weight = 3
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

JIPipe features an integration of the [R](https://www.r-project.org) scripting language. This software is not part of ImageJ and its update site ecosystem and thus requires **additional installation steps**. These steps are generally only necessary if JIPipe [notifies](/installation/third-party) you about the missing installation of the third-party software.

<div class="notices info" >
    <strong>MacOS/Linux:</strong> If you are using Linux or MacOS, JIPipe should automatically detected the installed R version by searching for <code>/usr/bin/R</code> and <code>/usr/bin/RScript</code> (Since JIPipe 1.74.x also <code>/usr/local/bin/R</code> and <code>/usr/local/bin/RScript</code>).<br/>It thus should be sufficient to just install R (Ubuntu/Debian: <code>sudo apt install r-base</code>, MacOS: <a href="https://www.r-project.org" target="_blank">https://www.r-project.org</a> (for example via the <a href="https://cran.rstudio.com" target="_blank">RStudio mirror</a>)). If the paths of these binaries is different, please configure the R integration manually (see below).
</div>

<div class=tutorial-list>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/third_party_r_notification.png" /></div>
    <div class="tutorial-item-content">
    <h2>Notification: R not configured</h2>
    If R is missing, you will be notified on opening the application. 
    <strong>Click the notifications button and select the "Install R" option (if available) and follow the instructions or choose "Configure R"</strong>
    <div class="notices info" >
    "Install R" on Windows: the installation procedure might request administration privileges on certain systems. We are unable to change this behavior.
    </div>
    <div class="notices info" >
    If "Install R" is not available or if you wish to select an existing installation of R, please follow the instructions below.
    </div>
    <div class="notices info" >
    You can always access the settings of the R integration via <code>Project &gt; Application settings &gt; Extensions &gt; R integration</code> if you clicked away the notification or if you want to make further changes.
    </div>
    </div>
  </div>
</div>

# Manual configuration of the R integration

<div class="notices info" >
    Please ensure that R is installed on your system.
    <ul>
        <li><strong>Windows/MacOS:</strong> Download R from <a href="https://www.r-project.org" target="_blank">https://www.r-project.org</a> (for example via the <a href="https://cran.rstudio.com" target="_blank">RStudio mirror</a>). <strong>Installing RStudio is not sufficient.</strong></li>
        <li><strong>Linux:</strong> Install the appropriate package(s) (Ubuntu/Debian: <code>sudo apt install r-base</code>) or obtain a package from <a href="https://www.r-project.org" target="_blank">https://www.r-project.org</a> (for example via the <a href="https://cran.rstudio.com" target="_blank">RStudio mirror</a>)</li>
    </ul>
</div>
<div class="notices warning" >
    <strong>Windows: </strong> Installing RStudio is not sufficient. Its distribution of R does not include the necessary executables.
</div>

<div class=tutorial-list>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/third_party_r_settings.png" /></div>
    <div class="tutorial-item-content">
    <h2>1. Open the R integration settings</h2>
    Unless you clicked "Configure R" in the notification panel, navigate to <code>Project &gt; Application settings &gt; Extensions &gt; R integration</code>.
    <strong>Click the "Edit button" in the "R environment" setting.</strong>
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/third_party_r_settings_edit.png" /></div>
    <div class="tutorial-item-content">
    <h2>2. Provide the R executables</h2>
    Provide the path to the <strong>R executable</strong> and the <strong>RScript executable</strong>.
    Common locations are:
    <ul>
        <li><strong>Windows:</strong> <code>C:/Program Files/R/R-4.2.1/bin/R.exe</code> and <code>C:/Program Files/R/R-4.2.1/bin/RScript.exe</code> (adapt to the installed R version)
        <li><strong>Linux:</strong> <code>/usr/bin/R</code> and <code>/usr/bin/RScript</code>    
        <li><strong>MacOS:</strong> <code>/usr/local/bin/R</code> and <code>/usr/local/bin/RScript</code>    
    </ul>
    Confirm the configuration by clicking "OK".
    </div>
  </div>
</div>