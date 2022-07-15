+++
title = "Setup Python integration"
weight = 2
type="page"
summary="Explains the setup of JIPipe's Python integration"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

{{< toc >}}

{{< jipipe-info "1.74.x+" "This guide was written for JIPipe version 1.74.0 or newer" >}}

# Quick setup

JIPipe features an (experimental and still under heavy development) integration of the [Python](https://www.python.org) script language. This software is not part of ImageJ and its update site ecosystem and thus requires **additional installation steps**. These steps are generally only necessary if JIPipe [notifies](/installation/third-party) you about the missing installation of the third-party software.

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

<div class=tutorial-list>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/third_party_python_settings_edit.png" /></div>
    <div class="tutorial-item-content">
    <h2>1. Open the Python integration settings</h2>
    Unless you clicked "Configure Python" in the notification panel, navigate to <code>Project &gt; Application settings &gt; Extensions &gt; Python integration</code>.
    <strong>Click the "Select/Install" button in the "Python environment" setting and choose "Select existing Conda environment".</strong>
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/third_party_python_conda.png" /></div>
    <div class="tutorial-item-content">
    <h2>2. Select the Conda executable</h2>
     Provide the path to the <strong>Conda executable</strong> and the <strong>environment name</strong>.
    Common locations for the executable are:
    <ul>
        <li><strong>Windows:</strong> <code>C:/Users/User/anaconda3/Scripts/conda.exe</code> (adapt to your user name)</li>
        <li><strong>Linux:</strong> <code>/home/user/anaconda3/bin/conda</code> (adapt to your user name) </li>
        <li><strong>MacOS:</strong> <code>/Users/user/opt/anaconda3/bin/conda</code> (adapt to your user name) </li>
    </ul>
    Confirm the configuration by clicking "OK".
    </div>
  </div>
</div>

# Selecting an existing virtual environment (venv)

<div class=tutorial-list>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/third_party_python_settings_edit.png" /></div>
    <div class="tutorial-item-content">
    <h2>1. Open the Python integration settings</h2>
    Unless you clicked "Configure Python" in the notification panel, navigate to <code>Project &gt; Application settings &gt; Extensions &gt; Python integration</code>.
    <strong>Click the "Select/Install" button in the "Python environment" setting and choose "Select existing Conda environment".</strong>
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/third_party_python_venv.png" /></div>
    <div class="tutorial-item-content">
    <h2>2. Select the virtual environment directory</h2>
     Provide the path to the <strong>virtual environment directory</strong>. I contains a file <code>pyvenv.cfg</code>.
    Confirm the configuration by clicking "OK".
    </div>
  </div>
</div>

# Selecting an existing Python distribution (general)

<div class=tutorial-list>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/third_party_python_settings_edit.png" /></div>
    <div class="tutorial-item-content">
    <h2>1. Open the Python integration settings</h2>
    Unless you clicked "Configure Python" in the notification panel, navigate to <code>Project &gt; Application settings &gt; Extensions &gt; Python integration</code>.
    <strong>Click the "Select/Install" button in the "Python environment" setting and choose "Select existing Conda environment".</strong>
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/third_party_python_system.png" /></div>
    <div class="tutorial-item-content">
    <h2>2. Select the Python executable</h2>
     Provide the path to the <strong>Python executable</strong>. Common locations for the executable are:
    <ul>
        <li><strong>Windows:</strong> <code>%appdata%..\Local\Programs\Python\PythonXX\python.exe</code> (XX being the Python version)
        <li><strong>Linux/MacOS:</strong> <code>/usr/local/bin/python</code>
    </ul>
    Confirm the configuration by clicking "OK".
    </div>
  </div>
</div>

# Advanced configuration

<div class=tutorial-list>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/third_party_python_settings_edit.png" /></div>
    <div class="tutorial-item-content">
    <h2>1. Open the Python integration settings</h2>
    Unless you clicked "Configure Python" in the notification panel, navigate to <code>Project &gt; Application settings &gt; Extensions &gt; Python integration</code>.
    <strong>Click the "Edit" button in the "Python environment" setting.</strong>
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/third_party_python_advanced.png" /></div>
    <div class="tutorial-item-content">
    <h2>2. Change the configuration</h2>
     In the environment editor you can change the following settings:
    <ul>
        <li><strong>Arguments: </strong>An <a href="/documentation/create-pipelines/expressions/">expression</a> that returns an array of the parameters that are provided to the Python/Conda executable. Click the "Edit" button to list all available functions and variables. <strong>Example: </strong><code>ARRAY("-u", script_file)</code> would run Python with <code>python -u [script file]</code></li>
        <li><strong>Environment type: </strong>Indicates the type of Python environment. Set it to "System" if none of the available options match your settings</li>
        <li><strong>Executable path: </strong>Path to the executable (usually Python or Conda)</li>
        <li><strong>Environment variables: </strong>Allows to set environment variables based on <a href="/documentation/create-pipelines/expressions/">expressions</a></li>
    </ul>
    Confirm the configuration by clicking "OK".
    </div>
  </div>
</div>