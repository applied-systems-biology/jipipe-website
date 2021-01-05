+++
title = "Managing plugins"
description = "Explains how to install and manage plugins."
weight = 60
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

JIPipe has its own plugin (extension) system that is independent of the one provided by
*ImageJ*/*SciJava*. You can find a list of plugins in `Plugins > Manage plugins`.

![Plugin manager UI](/img/documentation/plugin-manager-ui.png)

JIPipe by default supports two types of extensions:

1. **Java extensions** are similar to *ImageJ* plugins (\*.jar) and are the most powerful plugin type. Just like *ImageJ* plugins, they are located in the `plugins` directory.
2. **JSON plugins** are similar to *ImageJ* macros or scripts, as they are pure text files. Such extensions can be created without programming via the [JSON Extension Builder]({{< ref "/documentation/create-json-extensions" >}})

Some plugins require that dependencies are installed and will notify you if something is wrong.
To check if all plugins are in working condition, check if the top right button displays
{{< icon name="fa-check-circle" size="medium" >}} **All plugins valid**.
Otherwise click the button to show what went wrong and how to solve the issue.
