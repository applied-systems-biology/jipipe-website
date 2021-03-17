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
If you are sure that you have everything installed, you can disable this check at `Project > Application settings > General > Extensions`.
Disable `Validate ImageJ dependencies`.

If you do not have access to these setting (because you are offline or there are issues with the ImageJ servers), open the file `jipipe.properties.json`
(located in your ImageJ directory) in a text editor search for a line `"extensions/validate-imagej-dependencies" : true` and replace `true` by `false`.

If the file is not present, create a new file and put following text into it:

```
{
  "extensions/validate-imagej-dependencies" : false
}
```

JIPipe will automatically add the other settings on the first startup.

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
