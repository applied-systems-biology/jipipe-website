+++
title = "Step 1"
weight = 1
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b18/step1.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Load the [example pipeline](/tutorials/b18/Tutorial_B18.zip). 

Go to the `Compartments` tab and update the cache directly from there. This can be achieved with the compartment nodes the same way as with regular nodes. Use the green arrow on the `Processing` compartment (red arrow 1) and choose the `Cache intermediate results` option to save the cache for all nodes (red arrow 2).

{{< notice info>}}
Note that the method of updating the cache from the compartments works only if the output node of the compartment is connected! See the previous tutorials on setting up the output nodes of compartments.  
{{< /notice >}}
