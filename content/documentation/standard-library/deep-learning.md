+++
title = "Deep Learning"
description = "Integrates Deep Learning capabilities (Tensorflow, Keras)."
weight = 100
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

JIPipe provides Deep Learning support via a standardized Python interface that
allows to train/segment with different networks.

Currently supported are ...

- SegNet
- VGG16

# Setting up Deep Learning

Deep Learning requires a Python installation that comes with the `Deep Learning Toolkit` (Download TBA). It is integrated via the [Python library](/documentation/standard-library/python/).
This means that you will need to setup a Python environment with this library installed (Installation docs TBA) and provide the
appropriate settings to JIPipe.

Alternatively, JIPipe provides automated installers (tested on Linux and Windows) that will download and setup everythinbg automatically.

To setup Cellpose, navigate to `Project > Application settings > Extensions > Deep learning `.
Here you can find a setting `Deep Learning Python environment` that is enabled by default, meaning that
DL nodes are executed in a different Python environment than the one setup in the [Python library](/documentation/standard-library/python/) (recommended).
You can disable the setting if you want.

To install the necessary library or select an existing Python environment, click the `Select/Install` button.
Here you can select an existing Conda environment, or let JIPipe install the CPU or GPU version of the Deep Learning environment.

{{% notice info %}}
GPU processing requires large amounts of VRAM. You can always disable GPU processing on a per-node basis if
your hardware is not sufficient.
{{% /notice %}}

{{% notice info %}}
Especially on Windows, the installation of the GPU version takes a considerable time (30 min +). Due to buffered text output, you might not always receive
progress info from the Conda installation process. We cannot fix this on our end.
{{% /notice %}}

# Segmentation

This section is currently being prepared. Please come back later.

# Classification

This section is currently being prepared. Please come back later.

# Training

This section is currently being prepared. Please come back later.
