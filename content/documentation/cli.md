+++
title = "Command Line Interface"
description = "Explains basic concepts about how data is processed within JIPipe. We really recommend to take a look at this documentation."
weight = 100
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

You can run JIPipe pipelines without a graphical interface via the command line. 

Just run following command:

```bash
./ImageJ --pass-classpath --full-classpath --main-class org.hkijena.jipipe.JIPipeCLI run --project <project file> --output-folder <output folder>
```

# Command line options

```bash
./ImageJ --pass-classpath --full-classpath --main-class org.hkijena.jipipe.JIPipeCLI run <options>
```

* `--project <Project file>` provides the project file to be executed 
* `--output-folder <folder>` defines where outputs will be written. Outputs are in standard JIPipe format.
* Optional: `--num-threads <N=1,2,3,...>` lets you enable multi-threading
* Optional: `--overwrite-parameters <JSON file>` allows you to overwrite specific parameters without the need for changing the project file
* Optional: `--P<Node ID>/<Parameter ID> <Parameter value JSON>` overwrites a specific parameter with the specified value

# Overwriting parameters

The JIPipe project file contains all parameters of a project. Still, it may be useful to overwrite specific parameters without 
the need for editing the file. A use case for this is automated parallel execution of a pipeline within a script (e.g., using GNU Parallel).

You can overwrite parameters by providing a JSON file *and* by setting CLI options. The CLI options are parsed in the 
provided order, meaning that a `--P` override will replace values set in a previously provided `--overwrite-parameters` 
and vice versa. It is also possible to provide multiple `--overwrite-parameters` if desired.

## Parameter overwrite file format

The `--overwrite-parameters` file must have following JSON format:

```json
{
  "<Node ID>/<Parameter ID>": "<appropriate value>"
}
```

for example:

```json
{
  "gaussian-blur/sigma-x": 5,
  "gaussian-blur/sigma-y": 1
}
```

### Node ID

The node ID can either bei the node UUID (a long and unique string of letters and numbers) or the node's alias ID (human-readable name).
If you want to be sure, then use the UUID, as it will never change, while the alias ID will be updated if the node is renamed by the user.

You can find both the node UUID and alias ID inside the JIPipe GUI by selecting a node and reviewing the node description/documentation.

### Parameter ID

The parameter ID can be found by selecting a node and moving the mouse over a parameter. 
Its ID then will be displayed in the documentation below.

Alternatively, you can open the parameter explorer by right-clicking a node and selecting `Parameter explorer`.
This tool displays the more technical info about each parameter.

### Appropriate parameter values

If you do not provide a valid JSON value for the parameter, the CLI tool will crash.
To find out which value is appropriate, use the `Parameter explorer` (see above), which will display the 
raw JSON values for you. The tool also allows you to "test" parameter values in a editor and copy its JSON representation.