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