+++
title = "Tutorials"
weight = 20
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

This section contains video and text tutorials for the most common tasks done with JIPipe.
First, let's describe what JIPipe is and what it does for you.

JIPipe is short for **J**ava **I**mage **P**rocessing **Pipe**line and provides a graphical programming language
to design batch image processing pipelines, while solving some of the scalability issues that arise with other
graphical programming languages.

1. Introducing a powerful extension system that can integrate image analysis algorithms without losing usability
2. Introduction of powerful filesystem handling that can be adapted to any data organization
3. A powerful, yet easy-to-understand graphical programming language that was designed from the get-go for flexible scaling, and assisting the user as much as possible

# Why JIPipe?

JIPipe is a user-friendly alternative to ImageJ macro or script programming that brings following benefits to you:

* JIPipe is a batch processing tool. This means that you can scale your analyses up to larger or down to smaller data sets without modifying the whole pipeline
* JIPipe runs headless. Your pipelines generally work in environments without a graphical interface, like compute servers
* JIPipe has strong typing. Data types are well defined and you immediately see if and how data is converted into another format, bit depth, or dimensionality
* JIPipe standardizes parameters and output. A common issue is the question how to arrange the generated analysis outputs and how to save parameters. JIPipe does all of this for you completely automatically. For example, output files are written into a standardized filesystem hierarchy that allows third-party programs to read results automatically.
* JIPipe standardizes metadata. It comes with an powerful functionality to attach metadata to your data that can be queried and manipulated. All metadata is stored automatically in the results in standardized formats.
* JIPipe has a powerful standard library. It comes with many common ImageJ algorithms - with enhanced usability and designed for batch-processing, as well as tools for handling tables and creating or modifying plots.
* JIPipe can be extended without programming. You do not need programming knowledge to publish your own algorithms. Just export your pipeline or parts of it as extension from within a GUI

# Tutorial list

{{% children description="true" %}}
