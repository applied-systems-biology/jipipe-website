+++
title = "Installation"
weight = 11
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

JIPipe can be installed in multiple ways:

1. Install JIPipe via the ImageJ update manager **(Recommended)**
2. Use our pre-packaged JIPipe distributions
3. Install JIPipe manually

After a successful installation, JIPipe will warn you about [third-party software](/installation/#third-party-software) (Python, R, ...).

# Installation with the update manager

{{% notice info %}}
Internet access is required during the installation.
{{% /notice %}}

1. Start ImageJ/Fiji
2. Go to **Help > Update...**
3. Click **Manage update sites**
4. Select `JIPipe` and close the manage window
5. Click **Apply changes**
6. Restart ImageJ
7. You can find JIPipe here: `Plugins > JIPipe > JIPipe GUI` (or use the search)

# Pre-packaged JIPipe distributions

1. [Download](/download) a pre-packaged JIPipe distribution
2. Extract the ZIP file
3. **Windows:** Run ImageJ-win64.exe
4. **Linux:** Run ImageJ-linux64
5. **MacOS:** Run the Fiji app
6. You can find JIPipe here: `Plugins > JIPipe > JIPipe GUI` (or use the search)

{{% notice info %}}
We currently have only limited capabilities of testing the MacOS version and appreciate any help of creating a smooth experience. Feel free to contact us!
{{% /notice %}}

# Manual installation

This requires an existing Fiji installation. Please download the appropriate package from https://fiji.sc to get ImageJ. 
We **strongly** recommend to update ImageJ (via `Help > Update...`) before installing JIPipe.

1. [Download](/download) the JAR files
2. **Windows/Linux:** Navigate to the ImageJ directory. **MacOS:** Right-click the app and click `Show Package Contents`. 
3. Go into the `plugins` directory
4. Extract the downloaded JAR files
5. Copy the JAR files into the ImageJ `plugins` directory. Do not copy the `dependencies` directory.
6. Copy the contents of `dependencies` into the ImageJ `jars` directory (you can click "Skip" if there are existing files)
7. Start ImageJ
8. Run `Plugins > JIPipe > JIPipe GUI` (or use the search) to open the JIPipe GUI

JIPipe might complain about missing plugins and show a list of missing dependencies. You can find a guide on how to install the missing libraries [here](/installation/dependencies).
