+++
title = "Usage in Java"
description = "Explains how to use the JIPipe API to run graphs, algorithms, or projects within pure java code"
weight = 70
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

The JIPipe API allows you to run algorithms, graphs, and projects in a pure Java environment
without the need for a GUI or through ImageJ1 or ImageJ2 scripts.

# Prerequisites

To use the JIPipe API JIPipe must be initialized first. This requires an ImageJ instance
or any other way to load SciJava plugins. The following example shows how to initialize JIPipe manually from a main function.

```java
public static void main(String[] args) {
  // Just call this function before all others. It will create a new ImageJ instance and passes the context to JIPipe
  // If JIPipe is already initialized, the function has no effect
  JIPipe.ensureInstance();

  // If you already have a Context object: JIPipe.ensureInstance(context)

  // JIPipe is now ready to use
}
```

# Loading and running a project

You can load a [project](/apidocs/org/hkijena/jipipe/api/JIPipeProject.html) via a static method.
Running the project either involves enqueuing a [run](/apidocs/org/hkijena/jipipe/api/JIPipeRun.html) into the [global queue](/apidocs/org/hkijena/jipipe/ui/running/JIPipeRunnerQueue.html) or running it on the current thread.
The run has a multitude of [settings](/apidocs/org/hkijena/jipipe/api/JIPipeRunSettings.html) that control how/if output is written or how many threads are used.

```java
public static void main(String[] args) {
  // First initialize JIPipe before this line!

  // Load the project
  // JIPipe will put any non-exception errors or warnings into the report
  JIPipeValidityReport report = new JIPipeValidityReport();
  JIPipeProject project = JIPipeProject.loadProject(Paths.get("my-project.jip"), report);

  // Create a run that generates a deep-copy of the project's graph
  // The run is controlled by the JIPipeRunSettings instance that allows you to
  // have runs without caching or writing outputs if needed
  JIPipeRunSettings settings = new JIPipeRunSettings();
  settings.setOutputPath(Paths.get("/data/my-project-output"));
  JIPipeRun run = new JIPipeRun(project, settings);

  // Option 1: Run in separate thread (Async)
  JIPipeRunnerQueue.getInstance().enqueue(run);

  // Option 2: Run it on the current thread
  // The run itself has a property getProgressInfo() that allows access to the progress & log
  run.run();
}
```

# Loading a result

To load an existing result folder, the [run](/apidocs/org/hkijena/jipipe/api/JIPipeRun.html) is imported back into JIPipe.
The run itself contains a [graph](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeGraph.html) instance with nodes that are aware
of the data storage location. The storage location contains a `data-table.json` file that can be imported into an [exported data table](/apidocs/org/hkijena/jipipe/api/data/JIPipeExportedDataTable.html).
This table contains all metadata and the relative storage location of each row.

Row data is always stored in folders that correspond to the row index. For example, the first row's data is stored in a folder `0`.

```java
  public static void main(String[] args) {
    // First initialize JIPipe before this line!

    // Load the run
    // It will load the project as well
    Path path = Paths.get("/data/my-project-output");
    JIPipeRun run = JIPipeRun.loadFromFolder(path, report);
    run.getProject().setWorkDirectory(path);

    // You can now access the run's graph and access the data slots
    JIPipeDataSlot slot = run.getGraph().getNodes().get("some-node").getOutputSlot("Output");

    // Load the slot's data table
    JIPipeExportedDataTable table = slot.getStorageDataTable();

    // Example: Get the folder where the first row stores its data
    Path firstRowStorage = slot.getRowStoragePath(0);
  }
```

# Building and running a graph

JIPipe allows to create and run [graphs](/apidocs/org/hkijena/jipipe/api/nodes/JIPipeGraph.html) without involving a project.
A simple [graph runner](/apidocs/org/hkijena/jipipe/api/JIPipeGraphRunner.html) is available to execute a graph.

```java
  public static void main(String[] args) {
    // First initialize JIPipe before this line!

    JIPipeGraph graph = new JIPipeGraph();

    // There are multiple ways to instantiate a new node:

    // Option 1: Utility function
    JIPipeGraphNode first = JIPipe.createNode("import-file", JIPipeGraphNode.class);

    // Option 2: Using the registry
    JIPipeGraphNode second = JIPipeNodeRegistry.getInstance().getInfoById("import-imagej-imgplus-from-file").newInstance();


    // Add the nodes into the graph and connect them
    graph.insertNode(first, JIPipeGraph.COMPARTMENT_DEFAULT);
    graph.insertNode(second, JIPipeGraph.COMPARTMENT_DEFAULT);
    graph.connect(first, second);


    // Use the graph runner
    // We always recommend to make a copy of the graph if it is used somehere else
    JIPipeGraphRunner run = new JIPipeGraphRunner(new JIPipeGraph(graph));

    // Option 1: Run in separate thread (Async)
    JIPipeRunnerQueue.getInstance().enqueue(run);

    // Option 2: Run it on the current thread
    // The run itself has a property getProgressInfo() that allows access to the progress & log
    run.run();
  }
```

# Running a single node

You can run single algorithm nodes without involving a project or a graph:

```java
public static void main(String[] args) {
  // First initialize JIPipe before this line!

  JIPipeSimpleIteratingAlgorithm node = JIPipe.createNode("import-imagej-imgplus-from-file", JIPipeSimpleIteratingAlgorithm.class);

  // The node requires a progress info 
  JIPipeProgressInfo progress = new JIPipeProgressInfo();

  // Always clear the node first (allows you to re-use it)
  node.clearSlotData();

  // Add inputs
  node.getFirstInputSlot().addData(new FileData(Paths.get("/data/image.tif")), progress);

  // Run the node
  node.run(progress);

  // Extract the output
  ImagePlusData image = node.getFirstOutputSlot().getData(0, ImagePlusData.class, progress);
}
```
