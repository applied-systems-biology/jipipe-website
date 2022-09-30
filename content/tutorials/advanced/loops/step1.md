+++
title = "About loops"
weight = 1
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b26/step1.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

JIPipe processes data so that each node completes all its tasks on all incoming data *before* the next step is executed. For large data sets, this can cause issues with RAM capacity.

To resolve this, JIPipe comes with loop control nodes that allow to setup a workflow where a set of nodes is repeatedly executed on a single input. Loops are a syntactic sugar around group nodes that also have loop capabilities, but lack cache support for the internal nodes. Loops are placed in the current pipeline and support the review of intermediate results.

👉 But loading cached intermediate results to reduce runtime is not supported *inside* loops

To create a loop, place a `Loop start` node in before the memory-heavy workload as shown in the figure. To end a loop, use the `Loop end` node. 

Please read the following notes:

* Loops are still in beta-testing; please provide us with information if you have issues
* You can disable the loop behavior of `Loop start` by setting its `Iteration mode` parameter to `Pass data`
* Loops can theoretically be nested
* `Loop end` is not necessary. JIPipe will generate loop ends automatically. The same happens if you cache an intermediate result within a loop; JIPipe automatically marks the node as `Loop end` internally