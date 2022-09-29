+++
title = "Step 4"
weight = 4
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/b15/step4.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

To activate the filtering function, select the `Edit` option for expressions (red arrow 1). 

In the expression editor window (red arrow 2) look for a number conversion function (red arrow 3) and select the `TO_NUMBER` function (red arrow 4). Choose the `Variable` value type (red arrow 5) and paste in the name of the variable based on which the filtering will be done (here: `Image composite channel count` as seen in the previous tutorial, red arrow 6). 

Insert the new expression (red arrow 7)
The editor field will now read:

```
TO_NUMBER($"Image composite channel count")
```

Adapt the expression further to test for `3` channels via the comparison operator (red arrow 8):

```
TO_NUMBER($"Image composite channel count") == 3
```

Accept the changes (red arrow 9).