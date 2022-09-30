+++
title = "Step 2"
weight = 2
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b22-1/step2.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

In the `Cache browser` switch to the `Import/Export` tab (red arrow 1). Here you can manually export data into a JIPipe-compatible format. You have two options:

1. Exporting the the currently viewed table of data (red arrow 2) as ZIP or directory
2. Exporting the cache of the whole node (red arrow 3) as directory

The difference between these options is that the cache export ensures that you can later load in the result back into the current node via the `Import` function in the `Cache` section. To enable this, JIPipe saves *multiple* tables and additional metadata.

👉 *Try to export the table as ZIP and directory, as well as exporting the cache.*
