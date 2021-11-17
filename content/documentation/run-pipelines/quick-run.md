+++
title = "Running a single node"
description = "Explains the Quick Run feature that allows to test and compare different algorithm parameters without recalculating the whole pipeline."
weight = 50
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

As an additional option to running [the whole pipeline](/documentation/run-pipelines/run), JIPipe also allows you to run 
the workflow only up to the selected node. The most convenient way to run a single node can be accessed by clicking the 
green play button that is located inside each node.

![Quick run setup UI](/img/documentation/quick-run-context.png)

Here you will find following options:

1. **Update cache:** Runs the pipeline up until the selected node. The result of the selected node will be stored inside a [memory cache](/documentation/run-pipelines/cache), which can be reviewed in the *Cache browser* tab (see below)
2. **Cache intermediate results:** Runs the pipeline up until the selected node. The result of the node *and the ones of intermediate steps* are stored inside the cache.
3. **Run & show results:** Runs the pipeline up until the selected node. The result of the node is stored on the hard drive. We recommend this option if you have limited memory.
4. **Show intermediate results:** Runs the pipeline up until the selected node. The result of the node **and the ones of intermediate steps* are stored on the hard drive.

These operations can also be accessed by selecting the {{< icon name="fa-play" size="medium" >}} **Quick Run** tab in the properties panel:

![Quick run setup UI](/img/documentation/quick-run-setup.png)

Here you can also create a custom quick run that comes with additional settings, including the number of threads, 
the output folder, and how the cache is utilized.
