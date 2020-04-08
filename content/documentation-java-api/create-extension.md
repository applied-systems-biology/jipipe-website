+++
title = "Creating an extension project"
weight = 20
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

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

ACAQ5 is based on [SciJava](https://scijava.org) and requires libraries provided
by the [SciJava Maven repository](https://maven.scijava.org/).

Here is an example `*.pom` file that makes use of SciJava:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xmlns="http://maven.apache.org/POM/4.0.0"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId><!-- Please insert a value --></groupId>
    <artifactId><!-- Please insert a value --></artifactId>
    <version><!-- Please insert a value --></version>
    <name><!-- Please insert a value --></name>
    <description><!-- Please insert a value --></description>
    <url><!-- Please insert a value --></url>
    <inceptionYear>2020</inceptionYear>
    <organization>
        <name><!-- Please insert a value --></name>
        <url><!-- Please insert a value --></url>
    </organization>
    <licenses>
        <license>
            <name><!-- Please insert a value --></name>
            <url><!-- Please insert a value --></url>
            <distribution><!-- Please insert a value --></distribution>
        </license>
    </licenses>
    <developers>
        <developer>
            <id><!-- Please insert a value --></id>
            <name><!-- Please insert a value --></name>
            <url><!-- Please insert a value --></url>
        </developer>
    </developers>
    <contributors>
        <contributor>
            <name><!-- Please insert a value --></name>
        </contributor>
    </contributors>
    <mailingLists>
        <mailingList>
            <name><!-- Please insert a value --></name>
            <archive><!-- Please insert a value --></archive>
        </mailingList>
    </mailingLists>
    <scm>
        <connection><!-- Please insert a value --></connection>
        <developerConnection><!-- Please insert a value --></developerConnection>
        <tag><!-- Please insert a value --></tag>
        <url><!-- Please insert a value --></url>
    </scm>
    <issueManagement>
        <system><!-- Please insert a value --></system>
        <url><!-- Please insert a value --></url>
    </issueManagement>
    <ciManagement>
        <system><!-- Please insert a value --></system>
        <url><!-- Please insert a value --></url>
    </ciManagement>

    <parent>
        <groupId>org.scijava</groupId>
        <artifactId>pom-scijava</artifactId>
        <version>28.0.0</version>
        <relativePath/>
    </parent>

    <repositories>
        <repository>
            <id>imagej.public</id>
            <url>http://maven.imagej.net/content/groups/public</url>
        </repository>
        <repository>
            <id>external-jars</id>
            <name>External JAR files</name>
            <url>file://${project.basedir}/external-dependencies</url>
        </repository>
    </repositories>

    <dependencies>
        <dependency>
            <groupId>net.imagej</groupId>
            <artifactId>imagej</artifactId>
        </dependency>
        <dependency>
            <groupId>net.imglib2</groupId>
            <artifactId>imglib2-ij</artifactId>
        </dependency>
        <dependency>
            <groupId>net.imagej</groupId>
            <artifactId>imagej-legacy</artifactId>
        </dependency>
        <dependency>
            <groupId>org.scijava</groupId>
            <artifactId>scijava-log-slf4j</artifactId>
        </dependency>
        <!-- ACAQ5 plugin -->
        <dependency>
            <groupId>org.hkijena</groupId>
            <artifactId>acaq5</artifactId>
        </dependency>
    </dependencies>

    <properties>
        <maven.compiler.source>1.8</maven.compiler.source>
        <maven.compiler.target>1.8</maven.compiler.target>
        <license.licenseName>BSD-2-Clause</license.licenseName>
        <license.copyrightOwners>N/A</license.copyrightOwners>
        <license.projectName>MISA ImageJ</license.projectName>
    </properties>

    <build>
        <plugins>
           <!-- This plugin can be useful to create a manually-installable package -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-dependency-plugin</artifactId>
                <version>3.1.1</version>
                <executions>
                    <execution>
                        <id>copy-dependencies</id>
                        <phase>package</phase>
                        <goals>
                            <goal>copy-dependencies</goal>
                        </goals>
                        <configuration>
                            <outputDirectory>${project.build.directory}/dependencies</outputDirectory>
                            <overWriteReleases>false</overWriteReleases>
                            <overWriteSnapshots>false</overWriteSnapshots>
                            <overWriteIfNewer>true</overWriteIfNewer>
                            <excludeGroupIds>net.imagej, net.imglib2, org.scijava, com.google.code.gson,
                                com.google.guava, org.swinglabs, ome
                            </excludeGroupIds>
                        </configuration>
                    </execution>
                </executions>
            </plugin>
            <plugin>
                <groupId>org.scijava</groupId>
                <artifactId>scijava-maven-plugin</artifactId>
                <version>1.1.0</version>
                <executions>
                    <execution>
                        <id>set-rootdir</id>
                        <phase>validate</phase>
                        <goals>
                            <goal>set-rootdir</goal>
                        </goals>
                    </execution>
                    <execution>
                        <id>copy-jars</id>
                        <phase>install</phase>
                        <goals>
                            <goal>copy-jars</goal>
                        </goals>
                    </execution>
                </executions>
            </plugin>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-javadoc-plugin</artifactId>
                <executions>
                    <execution>
                        <id>attach-javadocs</id>
                        <goals>
                            <goal>jar</goal>
                        </goals>
                    </execution>
                </executions>
            </plugin>
        </plugins>
    </build>

</project>

```

# Creating an extension service

ACAQ5 uses the SciJava plugin API to register Java extensions. In your project,
you can create as many extensions as you want.

Java extension inherit from [ACAQJavaExtension](/external/apidocs/org/hkijena/acaq5/ACAQJavaExtension.html) and require a [@Plugin](https://javadoc.scijava.org/SciJava/org/scijava/plugin/Plugin.html) annotation.

We recommend to inherit from [ACAQDefaultJavaExtension](/external/apidocs/org/hkijena/acaq5/ACAQDefaultJavaExtension.html) that comes with some convenience-functions.

A minimal extension can be found here:

```java
@Plugin(type = ACAQJavaExtension.class)
public class MyExtension extends ACAQDefaultJavaExtension {

    @Override
    public String getName() {
        return "My extension";
    }

    @Override
    public String getDescription() {
        return "A Java extension";
    }

    @Override
    public String getDependencyId() {
        // We recommend the following structure: <groupId>.<artifactId>:<dependencyId>
        // (!) The dependency Id should be unique for your plugin (!)
        return "org.hkijena.acaq5:my-extension";
    }

    @Override
    public String getDependencyVersion() {
        return "1.0.0";
    }

    @Override
    public String getAuthors() {
        return "Ruman Gerst";
    }

    @Override
    public String getWebsite() {
        return "https://applied-systems-biology.github.io/acaq5/";
    }

    @Override
    public String getLicense() {
        return "BSD-2";
    }

    @Override
    public URL getLogo() {
        // This code loads the default ACAQ5 logo from ACAQ5 resources
        // You can replace it with your own logo if you want
        // Just do not use ACAQ5's ResourceUtils for this, as its always pointing to ACAQ resource directories
        return ResourceUtils.getPluginResource("logo-400.png");
    }

    @Override
    public String getCitation() {
        // Here you can enter a citation for your publication
        // It will be displayed in the plugin manager
        return "";
    }

    @Override
    public void register() {
        // Content is registered here
    }
}
```

# Testing your extension

Use following code to create an ImageJ2 instance that immediately loads ACAQ5:

```java
public static void main(final String... args) {
    final ImageJ ij = new ImageJ();
    ij.ui().showUI();
    ij.command().run(ACAQGUICommand.class, true);
}
```
