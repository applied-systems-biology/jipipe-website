+++
title = "Step 11"
weight = 11
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b30/step11.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Run the node (red arrow 1) and observe the `Cache browser` (red arrow 2). The segmented peroxisomes are now illustrated by the selected outputs of the `Cellpose (2.x)` node, e.g., in this example, we set `Labels`, `ROI`, `Probabilities` and `XY flows` as outputs (red rectangle), and selected `Probabilities` to be displayed (red arrow 3).

{{< notice info >}}
You might have noticed the `Label` data annotation in the list. You can remove them after the training step via the `Remove data annotations` node.
{{< /notice >}}
