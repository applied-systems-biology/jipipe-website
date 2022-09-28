+++
title = "Step 7"
weight = 7
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/ui/b15/step7.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

If we choose the `1-channel` output slot, e.g. (red arrow 1), we will only see the content of this output slot (red arrow 2), which comes from the `blobs` image (red arrow 3). 

👉 Via such `Split & filter by annotation` nodes we can separate the analysis of various image types without having to write a full pipeline for each type of image. Moreover, we can add all the folders that need to be analyzed into the workflow, and do the separation of the various images later, based on annotations. Here not only the image channel number can be used for filtering, but any image property, file name structure, folder or subfolder name, or any other variable or parameter that is added to the annotations table. 