+++
title = "Step 1"
weight = 1
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b23/step1.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Open the [example tutorial project](/tutorials/b23/Tutorial_B23.zip). 

Add the `Merge table columns (simple)` node (red arrow 1) and connect it to the two nodes above (red arrow 2, 3). 

Run the node and in its cache browser (red arrow 4) open the cache entry (red arrow 5) in a viewer (red arrow 6). 

Scroll to the end of the table and observe that the `AVG Density` column now appears in the table (red arrow 7) 

{{< notice info >}}
`Merge table columns (simple)` merges the column set of all incoming tables, generating a table that has all information of the input tables.
{{< /notice >}}

{{< notice info >}}
`Merge table columns (simple)` is not required to annotate data with measurements, but it produces a singular table with all information.
{{< /notice >}}

{{< notice info >}}
You might have noticed that all `AVG Density` values except the first one are zero in the merged table. You can change this behavior by setting the `Row normalization` parameter of the node to `Last value`.
{{< /notice >}}