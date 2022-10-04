+++
title = "Step 2"
weight = 2
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b15-1/step2.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Adding the node `Annotate by image statistics (Expression)` and configure the `Generated annotations` parameter in its parameter tab as following:

* Set `Generator` to `stat_mean` (the mean intensity value; click `Edit` to find out more about variables)
* Set `Column name` to `MeanIntensity` (the column name refers to the name of the generated annotation)

If you run the node via `Update cache`, you will see a new annotation `MeanIntensity`.