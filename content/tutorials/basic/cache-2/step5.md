+++
title = "Step 5"
weight = 5
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b18-2/step5.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Similarly to the project-wide cache browser tab, clearing the cache is also possible from this window, aiming either at all cache content (red arrow 2), or only at the outdated content (red arrow 3). 

{{< notice info >}}
Cached data is outdated if its producing nodes (or their predecessors) were deleted or have different parameters compared to when the data was generated.

For example, if a predecessor `Gaussian blur 2D` node's sigma value is changed, all successor node's cached data is marked as outdated. 
{{< /notice >}}