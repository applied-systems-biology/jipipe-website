+++
title = "Step 4"
weight = 4
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b22-1/step4.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

By default, the `Export data table` node will store its output inside a automatically generated directory relative to the current output path (for cache runs it is in a [temporary directory](/tutorials/ui/change-temp-directory/).

Alternatively, you can provide a custom path or one that is relative to the project directory:

To do this, select the `Export data table` node and navigate to the `Parameters` tab (red arrow 1).

Provide a *relative* output directory (i.e. does not start with `/` on macOS/Linux or with a drive letter on Windows; red arrow 2). Then enable the setting `Output relative to project directory` (red arrow 3).

{{< notice warning >}}
`Output relative to project directory` only works if you loaded the project from a *.jip file or have saved it at least once.
{{< /notice >}}