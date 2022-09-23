+++
title = "Node examples"
weight = 60
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

{{< jipipe-info "1.74.x+" "This guide was written for JIPipe version 1.74.0 or newer" >}}

To teach users about the settings of more complex nodes or to improve the convenience, you can annotate nodes with node examples. These will appear 
in a dedicated tab "Examples" on selecting a node within the pipeline editor.

The standardized example API is based around the "Node templates" functionality. To create an example, follow these steps:

1. Select a **single node** in the expected configuration and create a node template via `Right click > Create node template`
2. Provide an appropriate name and description.
3. Deselect all nodes and navigate to the **Node templates** tab on the right-hand panel
4. Select the newly created template and click `Manage > Export selection to file`
5. Save the `*.json` file into a directory within your extension's resources (e.g. into `/path/to/my/resources/examples`)

The `DefaultJavaExtension` class that is the basis for Java extensions comes with a method to automatically register all examples within a specified resources folder.

Insert the following code into your extension:

```java
@Plugin(type = JIPipeJavaExtension.class)
public class MyExtension extends JIPipeDefaultJavaExtension {

    // ...

    // If you have custom icons, thumbnails etc., create a JIPipeResourceManager instance that points towards the root directory of your resources
    // Please read the documentation of JIPipeResourceManager for more information on how to structure the resources directory 
    public static final JIPipeResourceManager RESOURCES = new JIPipeResourceManager(MyExtension.class, "resource/directory/of/my/extension");

    // ...

    @Override
    public void register(JIPipe jiPipe, Context context, JIPipeProgressInfo progressInfo) {
        // ...
        registerNodeExamplesFromResources(RESOURCES, "examples"); // Will automatically search for *.json files in the subdirectory "examples"
        // ...
    }

    // ...

```

{{% notice info %}}
Node examples are loaded after all extensions have been initialized. 
{{% /notice %}}

{{% notice info %}}
If an example fails to load, the JIPipe loading process will continue without an error message. 
The errors are only logged in the JIPipe initialization log.
{{% /notice %}}

{{% notice info %}}
If a node template contains multiple nodes, JIPipe will refuse to load it as example.
{{% /notice %}}