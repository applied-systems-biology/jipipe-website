+++
title = "Step 12"
weight = 12
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/ui/b14/step12.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Begin by deleting the existing example expression. The expression will now be

```
```

We will now use the function builder component of the expression editor to convert the annotation value of `Image composite channel count` to a number that can be tested to be equal to `3`:

1. Use the search field to look for functions that work with numbers  by using the search word `number` (red arrow 1), which will yield a function `TO_NUMBER` (red arrow 3). Select the item in the list.
2. You will see a tab `Function Convert to number`
3. Set the type of the `value` editor to `Variable`, because we want to convert a variable to a number (red arrows 2 and 3)
4. Type in the name of the variable ( = annotation column in this case), which is `Image composite channel count`
5. Click the `Insert` button

The expression now will be

```
TO_NUMBER($"Image composite channel count")
```

Finally, add the code to test if the number of channels is `3` (red arrow 6)

```
TO_NUMBER($"Image composite channel count") == 3
```

Now you can accept the changes to the expression by clicking the `Accept` button (red arrow 7).
