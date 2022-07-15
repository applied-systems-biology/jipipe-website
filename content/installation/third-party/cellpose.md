+++
title = "Setup Cellpose integration"
weight = 1
type="page"
summary="Explains the setup of JIPipe's Cellpose integration"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

{{< toc >}}

{{< jipipe-info "1.74.x+" "This guide was written for JIPipe version 1.74.0 or newer" >}}

# Quick setup

JIPipe features an integration of [Cellpose](https://www.cellpose.org). This software is not part of ImageJ and its update site ecosystem and thus requires **additional installation steps**. These steps are generally only necessary if JIPipe [notifies](/installation/third-party) you about the missing installation of the third-party software.

<div class=tutorial-list>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/third_party_python_notification.png" /></div>
    <div class="tutorial-item-content">
    <h2>Notification: Python not configured</h2>
    If JIPipe was not yet configured with a Python environment, you will be notified on opening the application. 
    <strong>Click the notifications button and select the "Install Python" option and follow the instructions or choose "Configure Python".</strong>
    <div class="notices info" >
    You can always change the Python environment by navigating to <code>Project &gt; Application settings &gt; Extensions &gt; Python integration</code> if you clicked away the notification or if you want to make further changes.
    </div>
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/third_party_python_easyinstall.png" /></div>
    <div class="tutorial-item-content">
    <h2>Install Python</h2>
    On selecting the "Install Python" option, JIPipe will provide you with a pre-made environment that is installed into the ImageJ directory. Choose any of the supported packages. If you already have existing Python environments, please follow the other tutorials on this page.
    </div>
  </div>
</div>

# Selecting an existing Conda environment

<div class="notices info" >
    Cellpose utilizes JIPipe's Python environment system and is compatible to the existing installation options provided by the <a href="/installation/third-party/python/">Python integration</a>.
</div>

<div class=tutorial-list>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/third_party_cellpose_settings.png" /></div>
    <div class="tutorial-item-content">
    <h2>1. Open the Python integration settings</h2>
    Unless you clicked "Configure Python" in the notification panel, navigate to <code>Project &gt; Application settings &gt; Extensions &gt; Cellpose</code>.
    <strong>Click the "Select/Install" button in the "Python environment" setting and choose <code>Additional compatible installers &gt; Select existing Conda environment</code>.</strong>
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/third_party_cellpose_conda.png" /></div>
    <div class="tutorial-item-content">
    <h2>2. Select the Conda executable and environment</h2>
     Provide the path to the <strong>Conda executable</strong> and the <strong>environment name</strong>.
    Common locations for the executable are:
    <ul>
        <li><strong>Windows:</strong> <code>C:/Users/User/anaconda3/Scripts/conda.exe</code> (adapt to your user name)</li>
        <li><strong>Linux:</strong> <code>/home/user/anaconda3/bin/conda</code> (adapt to your user name) </li>
        <li><strong>MacOS:</strong> <code>/Users/user/opt/anaconda3/bin/conda</code> (adapt to your user name) </li>
    </ul>
    Typically, Cellpose will be installed into an environment <code>cellpose</code>. Adapt the "Environment name" setting accordingly.
    Confirm the configuration by clicking "OK".
    </div>
  </div>
</div>

# Installing Cellpose from scratch (automatically)

<div class=tutorial-list>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/third_party_python_settings_edit.png" /></div>
    <div class="tutorial-item-content">
    <h2>1. Open the Python integration settings and select the installer</h2>
    Unless you clicked "Configure Python" in the notification panel, navigate to <code>Project &gt; Application settings &gt; Extensions &gt; Cellpose</code>.
    <strong>Click the "Select/Install" button in the "Python environment" setting and choose any of the following installation routines:</strong>
      <ul>
        <li><strong>Python: Download &amp; install Cellpose (CPU)</strong> Will download a <a href="https://github.com/indygreg/python-build-standalone/releases/tag/20220227" target="_blank">portable Python distribution</a> and installs all components of Cellpose via pip. This will install the CPU version of Cellpose. </li>
        <li><strong>Python: Download &amp; install Cellpose (GPU)</strong> Will download a <a href="https://github.com/indygreg/python-build-standalone/releases/tag/20220227" target="_blank">portable Python distribution</a> and installs all components of Cellpose via pip. This will install the GPU-accelerated version of Cellpose (please carefully check the pytorch pip package in the configuration dialog that will open) </li>
        <li><strong>Miniconda: Download &amp; install Cellpose (CPU)</strong> Will download a <a href="hhttps://docs.conda.io/en/latest/miniconda.html" target="_blank">Miniconda distribution</a> and installs all components of Cellpose. This will install the CPU version of Cellpose. Currently not actively maintained.</li>
        <li><strong>Miniconda: Download &amp; install Cellpose (GPU)</strong> Will download a <a href="hhttps://docs.conda.io/en/latest/miniconda.html" target="_blank">Miniconda distribution</a> and installs all components of Cellpose. This will install the GPU-accelerated version of Cellpose. Currently not actively maintained. </li>
    </ul>
    </div>
  
  </div>

</div>