+++
title = "Testing algorithm parameters"
description = "Explains the Quick Run feature that allows to test and compare different algorithm parameters without recalculating the whole pipeline."
weight = 50
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Many algorithms require plenty of user-defined parameters to create the expected results.
Finding those parameters on the other hand can be very time-consuming due to
the requirement of repeating all previous and following processing steps.

JIPipe comes with a feature termed **Quick Run** that makes it easier to
only test a part of an analysis pipeline. You can find the testbench
by selecting an algorithm in the algorithm graph and selecting the {{< icon name="fa-play" size="medium" >}} **Quick Run** tab.

It will ask for a folder where to store algorithm outputs. For most cases,
you can leave the folder as is - but if you expect to generate large amounts
of output data, you should select a folder on a drive that can store as much data.
Click {{< icon name="fa-cog" size="medium" >}} **Run & open results** to create the testbench.
JIPipe then will run the pipeline up until the selected algorithm and open a new tab.

{{% notice info %}}
The Quick Run expects that all relevant algorithms are valid and will tell you
if it finds issues. Please fix the issues and click "Retry".
{{% /notice %}}

{{% notice tip %}}
You can also do a Quick Run from an algorithm's right-click context menu.
{{% /notice %}}

If you click {< icon name="fa-cog" size="medium" >}} **Run**, the results will **not** be shown.
Instead, if enabled, data will just be stored into the [Cache](/documentation/cache)

![Testbench UI](/img/documentation/testbench-ui.png)

# Result UI

After clicking {{< icon name="fa-cog" size="medium" >}} **Run & open results** and generating the
results, JIPipe will open a new tab in its user interface. It contains a modified
version of the [result analysis interface](/documentation/result-analysis) that
also allows you to change the algorithm parameters and create and load result snapshots
of the current algorithm.

The user interface is separated into following components:

1. The **algorithm parameters** of the selected algorithm are displayed on the left-hand side. You can change them and create a {{< icon name="fa-cog" size="medium" >}} **New test**
2. The results are displayed in the **result analysis** panel. See the [result analysis documentation](/documentation/result-analysis) for more information on how it is used.
3. The testbench allows you to compare multiple parameter sets. On creating a {{< icon name="fa-cog" size="medium" >}} **New test**, the results from previous tests are accessible via the drop-down menu. You can also re-label the current parameter set by clicking the {{< icon name="fa-tag" size="medium" >}} button.

![Testbench result UI](/img/documentation/testbench-result-ui.png)

# Testing a batch of parameters

The testbench currently has not the capabilites to generate a set of parameters. We recommend to use the [multi-parameter algorithm feature](/documentation/standard-library/multi-parameter)
that was designed to manage parameter sets.
