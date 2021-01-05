+++
title = "Data caching"
description = "Explains the how JIPipe caches intermediate results and how to access them."
weight = 55
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

JIPipe has a project-wide cache for generated results. This cache can be accessed
by algorithms to prevent repeating previous calculation steps.

# Load data into the cache

To cache data, right click a node and click <i class="fa fa-database"></i> <strong>Update cache</strong>.
This will execute a [Quick run]({{< ref "/documentation/quick-run" >}}) and store all results into the cache.

# Accessing the cache

Cache items are assigned a unique identifier (<i class="fa fa-camera"></i> <strong>Snapshot</strong>)
that is based on relevant algorithm parameters and the processing pipeline behind the
data generation.
You have multiple ways to manage and access the cache. First, in the top tool bar,
there is a summary on how many items are currently cached. If items are stored in the cache,
you have multiple options to clear the cache.

If you select an algorithm, you have access to its <i class="fa fa-database"></i> <strong>Cache browser</strong>
that lists all <i class="fa fa-camera"></i> <strong>Snapshots</strong> and all stored data, including
a string representation, and annotations if available. By selecting a row in the data table below,
you can <i class="fa fa-search"></i> <strong>Show</strong> the item's data. The operation depends on
the exact data type. ImageJ images for example are opened in ImageJ.

If an algorithm data slot has cached data, icons appear next to the slot.
Hover the items with your mouse to show a summary. Clicking the items allows you to manage the cache or
display the results in a full-window cache browser.

![Cache UI elements](/img/documentation/cache.png)

# Managing the cache

The cache consumes large amounts of memory, depending on the pipeline. Use the button at the top (menu bar) to clean all cached data or remove
cached items that are invalid (e.g., because the node parameters were changed).

You can also enable the "Reduce memory" mode (bottom) to store unused data on the hard drive, or explicitly move cached items
to the hard disk.
