+++
title = "General questions"
description = "General questions about JIPipe"
weight = 1
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

## Where do I find documentations?

You can find all documentations in the {{< icon name="fa-question-circle" size="large" >}} menu at the top right.

There are also context-based documentations available if you select a node in the graph.
Hover your mouse over a parameter to show documentations for this parameter only.

## Does JIPipe have a backup function?

Yes. By default, JIPipe creates a backup every 3 minutes. You can recover it via `Project > Restore Backup`.

## Can I make the startup faster?

Many JIPipe extensions rely on other ImageJ plugins to work. That is why JIPipe always checks if all necessary ImageJ plugins are available.
This will only happen during the first startup, or if the ImageJ plugin database is not present/corrupt.
If you have persisting issues, run the ImageJ updater from within ImageJ/Fiji or via `Plugins > Run ImageJ updater`

## Can I expose a set of specific parameters for collaborators?

Yes. You can do this via the `Project > Project settings > Parameters`.
They will be available in `Project > Project overview`, alongside the description that can be set
in `Project > Project settings > General`.

## Can I add my author information to a project?

Yes. Go to `Project > Project settings > General`. Here you can add multiple authors (including affiliation),
provide a citation, license, and website, as well as cite other projects.

## Where should I place files if I want to make the project portable?

JIPipe automatically relativizes file paths if you place data files in the same folder
as the project (or in a subfolder). This allows you to compress the project and
share it with other without breaking anything.

This is the recommended way to do share your projects if you have multiple operating systems.

## How can I copy / delete the global settings?

JIPipe places a file `jipipe.properties.json` into your ImageJ directory. You can delete it to reset all settings
to their defaults or copy it to another JIPipe instance.
