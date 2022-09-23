+++
title = "Creating an extension project"
description = "Explains how to setup a SciJava plugin project to extend JIPipe"
weight = 20
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

{{< jipipe-info "1.74.x+" "This guide was written for JIPipe version 1.74.0 or newer" >}}

# Prerequisities

* Java 8 (Java 9+ are not working)
  * If you are using Windows or a Linux distribution without Java 8, we recommend [AdoptOpenJDK](https://adoptopenjdk.net/) (Please choose `OpenJDK 8`)
* [Maven](https://maven.apache.org/)

# Creating the project

The project should have following structure:

```
Project root
└── pom.xml
└── src
    └── main
        ├── java
        └── resources
```

Both the `java` and `resources` folder should contain a folder structure that is equivalent
the `groupId` and `artifactId` of the project. This is done to prevent conflicts with other
plugins.

JIPipe is based on [SciJava](https://scijava.org) and requires libraries provided
by the [SciJava Maven repository](https://maven.scijava.org/).

Here is an example `*.pom` file that you can adapt for your project: 
https://github.com/applied-systems-biology/jipipe/blob/master/jipipe-strings/pom.xml


# Creating an extension service

JIPipe uses the SciJava plugin API to register Java extensions. In your project,
you can create as many extensions as you want.

{{% notice tip %}}
Extensions can register multiple nodes and data types, so you can greatly simplify your projects by merging multiple functions into a single extension.
{{% /notice %}}

Java extension inherit from [JIPipeJavaExtension](/apidocs/org/hkijena/jipipe/JIPipeJavaExtension.html) and require a [@Plugin](https://javadoc.scijava.org/SciJava/org/scijava/plugin/Plugin.html) annotation.

We recommend to inherit from [JIPipeDefaultJavaExtension](/apidocs/org/hkijena/jipipe/JIPipeDefaultJavaExtension.html) that comes with some convenience-functions.

A minimal extension can be found here:

```java
@Plugin(type = JIPipeJavaExtension.class)
public class MyExtension extends JIPipeDefaultJavaExtension {

    // We recommend to create a static AS_DEPENDENCY variable that contains the dependency ID, name, and version of the extension
    // This simplifies the usage in getDependencies() for extensions that are based on your library
    public static final JIPipeDependency AS_DEPENDENCY = new JIPipeMutableDependency("CHANGEME", "1.0.0", "My extension");

    // If you have custom icons, thumbnails etc., create a JIPipeResourceManager instance that points towards the root directory of your resources
    // Please read the documentation of JIPipeResourceManager for more information on how to structure the resources directory 
    public static final JIPipeResourceManager RESOURCES = new JIPipeResourceManager(MyExtension.class, "resource/directory/of/my/extension");

    public MyExtension() {
        getMetadata().addCategories(PluginCategoriesEnumParameter.CATEGORY_SCRIPTING); // You can annotate your extension with ImageJ Wiki categories (Optional)
        getMetadata().setThumbnail(new ImageParameter(RESOURCES.getResourceURL("thumbnail.png"))); // Set the thumbnail from the extension's resources (Optional)
    }

    @Override
    public String getName() {
        return "My extension";
    }

    @Override
    public HTMLText getDescription() {
        return new HTMLText("A Java extension");
    }

    @Override
    public String getDependencyId() {
        // We recommend the following structure: <groupId>.<artifactId>:<dependencyId>
        // (!) The dependency Id should be unique for each extension @Plugin (!)
        return "CHANGEME";
    }

    // You can optionally override the version.
    // @Override
    // public String getDependencyVersion() {
    //    return "1.0.0";
    // }

    @Override
    public String getAuthors() {
        return "Ruman Gerst";
    }

    @Override
    public String getWebsite() {
        return "https://jipipe.org/";
    }

    @Override
    public String getLicense() {
        return "BSD-2";
    }

    // You can add one more multiple logos on the JIPipe splash screen
    // They must be 32x32 in size
    // Please do not add too many of them to not fill up all the space
    // @Override
    // public List<ImageIcon> getSplashIcons() {
    //     return Collections.singletonList(new ImageIcon(getClass().getResource("org/hkijena/jipipe/extensions/myextension/icon-32.png")));
    // }

    @Override
    public String getCitation() {
        // Here you can enter a citation for your publication
        // It will be displayed in the plugin manager
        return "";
    }

    @Override
    public void register(JIPipe jiPipe, Context context, JIPipeProgressInfo progressInfo) {
        // Content is registered here
        // You can have multiple registerNodeType, registerDataType etc. in this place
    }

    // Optional: run code after this and other extensions are registered (for example to create notifications; see https://github.com/applied-systems-biology/jipipe/blob/master/jipipe-python/src/main/java/org/hkijena/jipipe/extensions/python/PythonExtension.java)
    // @Override
    // public void postprocess() {
    // }
}
```

# Testing your extension

Use following code to create an ImageJ2 instance that immediately loads JIPipe:

```java
public static void main(final String... args) {
    final ImageJ ij = new ImageJ();
    ij.ui().showUI(); // If your ImageJ freezes, you can leave this out. JIPipe will show anyways.
    ij.command().run(JIPipeGUICommand.class, true);
}
```
