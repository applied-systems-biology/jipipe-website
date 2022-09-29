+++
title = "Step 4"
weight = 4
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b18/step4.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

The next option in the menu (red arrow 1) is `Run & show results` (red arrow 2) that will calculate and save the results as explained on the UI (red arrow 3).

{{< notice info >}}
`Update cache` and `Cache intermediate results` store the results into the RAM, while `Run & show results` amd `Show intermediate results` store all results to the hard drive into a temporary directory (also see the [tutorial how to change this directory](/tutorials/ui/change-temp-directory/)). Each option has different benefits and disadvantages:

* Caching to RAM: 
  * Benefit: Fast, convenient to use, can be updated in-place (for testing parameters)
  * Disadvantage: RAM space is limited
* Saving to HDD:
  * Benefit: Lower RAM usage 
  * Disadvantage: Slow due to file loading process, some convenience-features not available
{{< /notice >}}