+++
title = "Filesystem algorithms"
description = "This library provides data types for that wrap filesystem objects, as well as algorithms to navigate the filesystem and extract information."
weight = 30
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

The ACAQ5 standard library contains data types and algorithms to apply file system operations.
The common use case is to extract the list of input files for the following algorithms.

The filesystem library has two basic data types:

* A {{< icon name="fa-file-o" size="medium" >}} **file** contains a path to a file
* A {{< icon name="fa-folder-o" size="medium" >}} **folder** contains a path to a folder

In the `Add data` menu you can define one file/folder or a list of files/folders.

{{% notice tip %}}
We recommend to create a list of files/folders. This makes it easier to scale your workflow up.
{{% /notice %}}

{{% notice tip %}}
Drag any set of files or folders into the graph editor to create corresponding file/folder data source algorithms.
{{% /notice %}}

# File/folder manipulation algorithms

The standard library comes with various algorithms that apply common operations to
input filesystem data. This includes listing the files in a folder,
filtering files/folders, or navigating to a subfolder.
They are placed in the `Filesystem` category.

# Automated relativization

File and folder data source algorithms by default store **absolute paths**.
If you save your project in a parent folder where the data is stored, the paths
are automatically converted into **relative paths** that make data transfer between
devices easier.

# Annotation

It is helpful to add [data annotations](/documentation/batch-pipelines) to the file data at some point.
This allows algorithms and users to assign data rows to an unique data set.
See the [annotation standard library documentation](/documentation/standard-library/annotations) for more information.
