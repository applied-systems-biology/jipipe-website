+++
title = "JIPipe extensions"
weight = 3
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

{{< toc >}}

# Installing new extensions

JIPipe extensions are ImageJ plugins and thus can be installed just as any plugin. 

Available options are: 

1. Installation via the [Fiji updater](https://imagej.net/plugins/updater)
2. Manual installation by copying the files into the `plugins` or `jars` directory

{{% notice info %}}
Older JIPipe versions (1.73.x or older) will automatically load all extensions during the startup. 
This behavior was changed in JIPipe 1.74.0 where the extensions needs to be manually activated after the installation.
{{% /notice %}}

# Activating extensions

{{< jipipe-info "1.74.x+" "Extensions only need to be activated in JIPipe version 1.74.0 or newer" >}}

<div class=tutorial-list>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/extensions_notification.png" /></div>
    <div class="tutorial-item-content">
    <h2>Detected extensions</h2>
    On starting JIPipe, you will be warned about newly detected extensions. <strong>Click "Open extension manager" if you want to enable them.</strong>
    <div class="notices info" >
    You can always open the extension manager by navigating to <code>Plugins &gt; Manage JIPipe plugins</code>.
    </div>
    <div class="notices warning" >
    The extension manager needs to run various tasks in the background. We do not recommend to install extensions while JIPipe is running a pipeline.
    </div>
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/extensions_manager.png" /></div>
    <div class="tutorial-item-content">
    <h2>Activating extensions</h2>
    By default, JIPipe will automatically display any newly detected extension. <strong>Click "Activate" to activate any extension that want to utilize.</strong>
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/extensions_dependencies.png" /></div>
    <div class="tutorial-item-content">
    <h2>Extension dependencies</h2>
    Some extensions have additional dependencies in form of other extensions or ImageJ update sites. <strong>Click "Continue" to install/activate all selected dependencies.</strong><br/>
    Afterwards you will be prompted to restart ImageJ or JIPipe (depending on the type of activated extension(s) and dependencies).
    </div>
  </div>
</div>