+++
title = "Data annotation algorithms"
description = "This library provides basic functionality to add annotations to data slot rows."
weight = 50
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

[Data annotations]({{< ref "/documentation/basic-concepts/batch-processing" >}}) allow JIPipe algorithms and users to
assign an unique data set to the data located in a data slot. The standard library
contains various algorithms that allow to generate, manipulate, and utilize those
annotations.

We recommend to use the algorithms in `Annotation > Generate` while setting up
[filesystem operations]({{< ref "/documentation/standard-library/filesystem" >}}) or any other import step
to prevent issues in following algorithm steps.
