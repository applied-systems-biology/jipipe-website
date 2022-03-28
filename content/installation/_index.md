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

1. Install JIPipe via the ImageJ update manager **(currently not available)**
2. Use our pre-packaged JIPipe distributions
3. Use the online installer **(currently not available)**
4. Install JIPipe manually

After a successful installation, JIPipe will warn you about [third-party software](/installation/#third-party-software) (Python, R, ...).

# Installation with the update manager

{{% notice info %}}
This option is currently not available, as we are preparing the upload to the update manager.
{{% /notice %}}

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
5. **MacOS:** Run the JIPipe app
6. You can find JIPipe here: `Plugins > JIPipe > JIPipe GUI` (or use the search)

{{% notice info %}}
We currently have only limited capabilities of testing the MacOS version and appreciate any help of creating a smooth experience. Feel free to contact us!
{{% /notice %}}

# Online installer

{{% notice info %}}
This option is currently not available, as we are preparing the upload to the ImageJ update system.
{{% /notice %}}

{{% notice info %}}
Internet access is required during the installation.
{{% /notice %}}

1. [Download](/download) the online installer
2. **Windows:** Run the setup and follow the instructions
3. **Linux:** Set the executable flag of the setup and run it. Follow the instructions.
4. **MacOS:** Extract the ZIP file. Run the app. The setup will automatically download all software.
5. You can start JIPipe directly from your Desktop/Menu

# Manual installation

This requires an existing ImageJ installation. Please download the appropriate package from https://fiji.sc to get ImageJ. 
We **strongly** recommend to update ImageJ (via `Help > Update...`) before installing JIPipe.

1. [Download](/download) the JAR files
2. **Windows/Linux:** Navigate to the ImageJ directory. **MacOS:** Right-click the app and click `Show Package Contents`. 
3. Go into the `plugins` directory
4. Extract the downloaded JAR files
5. Copy the JAR files into the ImageJ `plugins` directory. Do not copy the `dependencies` directory.
6. Copy the contents of `dependencies` into the ImageJ `jars` directory (you can click "Skip" if there are existing files)
7. Start ImageJ
8. Run `Plugins > JIPipe > JIPipe GUI` (or use the search) to open the JIPipe GUI

JIPipe might complain about missing plugins and show a list of missing dependencies. This is expected and caused by missing plugins.

1. Click the `Resolve` button and wait until the missing dependencies were detected
2. Click `Apply changes`
3. Click `Close ImageJ` and restart ImageJ afterwards
4. Run JIPipe again. No error should be present, anymore.

![Missing dependencies](/img/installation/missing_dependencies.png)
![Missing dependencies](/img/installation/missing_dependencies_apply_changes.png)
![Missing dependencies](/img/installation/missing_dependencies_close_imagej.png)

# Third-party software

JIPipe relies on additional third-party software to provide some functionality. This includes the integration of Python, R, and Cellpose.
At the first start, these are not known to JIPipe, which in return will notify about these issues.

To open the notifications tab, click the blinking notification button at the top right.

You will be offered various options to resolve each notification:

* You can dismiss it temporarily (click {{< icon name="fa-times-circle" size="medium" >}})
* You can dismiss it permanently (click {{< icon name="fa-eye-slash" size="medium" >}}). You can undo this by going to `Project > Application settings > UI > Notifications`
* You can apply a notification-related action (e.g., installation of a Python environment)

In the case of Python, R, and Cellpose, JIPipe directly offers installers that automatically handle the correct setup of these environments. In this case, you don't need to configure anything else.
If you want to enter settings manually or use alternative options (e.g., selecting an existing Python environment), click the configuration item.

![Notifications](/img/installation/notifications.png)