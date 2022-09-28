+++
title = "Step 15"
weight = 15
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/ui/b14/step15.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Insert the filter node into the pipeline by placing it in between the annotation node and the `Split channels` function (red arrow 1). Connect the new node to the functions above (red arrow 2) and below (red arrow 3). Make sure that the direct connection between the Annotate node and the `Split channels` node is removed beforehand. 

Run the `Split channels` node and observe its cache (red arrow 1) to demonstrate that the newly installed filtering function indeed worked (red line 2).