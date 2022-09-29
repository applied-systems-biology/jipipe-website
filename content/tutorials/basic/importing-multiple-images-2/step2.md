+++
title = "Step 2"
weight = 2
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b10/step2.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Now we need to get a list of the image files in all the (sub)folders. Use the node finder (red arrow 1)  and check for `list` nodes (red arrow 2). Choose the `List files` node (red arrow 3), making sure that node will be created (red arrow 4). Add the new node (red arrow 5). 

{{< notice info >}}
The node `List files` consumes JIPipe-managed `Folder` data and produces the corresponding list of contained files/directories as output. Existing annotations of the input directory are preserved.
{{< /notice >}}