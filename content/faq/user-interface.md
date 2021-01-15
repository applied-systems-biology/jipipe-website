+++
title = "User interface"
description = "Questions concerning the user interface"
weight = 2
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

## Does JIPipe have a dark mode?

Yes, you can enable it in `Project > Application settings > UI > General > Theme`.
Set the theme to `Modern dark` and restart JIPipe/ImageJ.

## How can I make long connections without zooming out?

Click the arrow button at the input/output slot. It lists all compatible sources/targets ordered by distance.


## Why is the user interface suddenly messed up on Windows?

This is a known issue with the open/save dialogs that are used on Windows. They cause to overwrite
JIPipe's design. We have not yet found a solution for this. We recommend to configure ImageJ to use
the Java file dialogs, not the native Windows dialogs.
