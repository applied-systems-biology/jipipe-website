+++
title = "Step 6"
weight = 6
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b22-2/step6.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

JIPipe offers various nodes for the export of data that are even outside the scope of the exporter implemented in the cache browser.

You can find them in the `Export` menu or via the search bar.

Proceed to add and connect the following nodes:

1. Add `Export data` and connect it to `AVG density`
2. Add `Export image` and connect it to `Overlay image`
3. Add `Export table as XLSX` and connect it to `All measurements`
4. Add `Export ROI` and connect it to `ROI`

In the following steps, we will show how to configure these nodes for the export into a single directory.