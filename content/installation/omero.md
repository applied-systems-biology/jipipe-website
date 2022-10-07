+++
title = "Regarding OMERO"
weight = 15
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

If you are installing JIPipe via the ImageJ updater site, you might have noticed a directory `jars/omero` that will be downloaded with the package. 

It contains the absolute minimum of files to use OMERO for uploading and downloading images. We cannot guarantee that the JIPipe-provided OMERO libraries are compatible with your server setup or sufficient for any task outside basic image uploading and downloading.

👉 We strongly recommend to install one of the OMERO packages from the ImageJ updater. You can find more information [here](https://imagej.net/software/omero).

👉 Usually, JIPipe plugins come with metadata that indicate the expected update, thus prompting users with an installation dialog if any are missing. This is not possible, as OMERO client versions must be compatible to the OMERO server version.