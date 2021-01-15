+++
title = "ImageJ integration"
description = "Questions about the integration into ImageJ and popular plugins like OMERO"
weight = 4
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

# Can I use plugins from ImageJ in JIPipe?

Yes. Either there is an integration available, or you just use the macro node and input the corresponding macro code that runs the plugin.

## Can I use existing ImageJ macros in JIPipe?

Yes, use `Images > ImageJ macro`. The input slots are opened as image windows and can be addressed from within the macro with `selectWindow()`.
You can also load an example that shows how to use the node.

## Can I use JIPipe from within ImageJ macros?

Yes. You can use both pipelines and individual JIPipe algorithms from within ImageJ
macros and the GUI.

## Why are some JIPipe algorithms not availabe from within ImageJ?

JIPipe has a very general data model that makes it possible to develop pipelines for processing **any** kind of data.
The communication between JIPipe's data types and ImageJ is handled by adaptors that will handle the "translation" back & forth.
For some of such data types, there is no adaptor. The reason behind this is that ImageJ might not have an equivalent data type or feature.
