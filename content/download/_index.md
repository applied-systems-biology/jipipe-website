+++
title = "Download"
weight = 10
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

<center style="font-size: 2rem;">
Please choose how you want to install JIPipe
</center>

<div class="download-panel">
  <div class="download-panel-selection">
      <input type="radio" value="download-via-update-site" id="download-via-update-site" name="download-options"/>
      <label for="download-via-update-site"> <i class="fa fa-windows"></i> <i class="fa fa-linux"></i> <i class="fa fa-apple"></i> ImageJ update site</label>
      <input type="radio" value="download-windows-installer" id="download-windows-installer" name="download-options"/>
      <label for="download-windows-installer"> <i class="fa fa-windows"></i> Windows installer</label>
      <input type="radio" value="download-linux-installer" id="download-linux-installer" name="download-options"/>
      <label for="download-linux-installer"> <i class="fa fa-linux"></i> Linux installer</label>
      <input type="radio" value="download-osx-installer" id="download-osx-installer" name="download-options"/>
      <label for="download-osx-installer"> <i class="fa fa-apple"></i> MacOS installer</label>
      <input type="radio" value="download-jar" id="download-jar" name="download-options"/>
      <label for="download-jar"> <i class="fa fa-windows"></i> <i class="fa fa-linux"></i> <i class="fa fa-apple"></i> JAR files</label>
    </form>
  </div>
  <div class="download-panel-content" id="download-via-update-site-content">
    <strong>Recommended.</strong> An update site allows you to easily update JIPipe to newer versions with one click. It requires from you to have an existing installation of ImageJ.
    <ol>
      <li><a href="https://fiji.sc/" target="_blank">Download</a> ImageJ or open your existing ImageJ installation</li>
      <li>Go to <i>Help &gt; Update ...</i> and activate the <code>JIPipe</code> update site. Then let ImageJ download all necessary files.</li>
      <li>Run the JIPipe GUI from within the plugin menu</li>
    </ol>
    <strong><i class="fa fa-windows"></i> <i class="fa fa-linux"></i> Tip:</strong> If you want a desktop shortcut (Windows) or an entry in your application menu (Linux), open JIPipe and run <i>Tools &gt; Create launchers</i>
  </div>
  <div class="download-panel-content" id="download-windows-installer-content">
    You can download an installer that provides an existing <a href="https://fiji.sc/" target="_blank">Fiji</a> installation plus all necessary files for JIPipe.
    <ol>
      <li><button class="btn btn-default" type="button" onclick="alert('Sorry, the download is not available, yet!')"> <i class="fa fa-download"></i> Download </button> the installer</li>
      <li>Run the installer and follow the instructions</li>
      <li>You will find a JIPipe icon in the start menu and on the desktop</li>
    </ol>
    <strong><i class="fa fa-info"></i> Info:</strong> The installer requires an <strong>online</strong> connection.</i>
  </div>
  <div class="download-panel-content" id="download-linux-installer-content">
    You can download an installer that provides an existing <a href="https://fiji.sc/" target="_blank">Fiji</a> installation plus all necessary files for JIPipe.
    <ol>
      <li><button class="btn btn-default" type="button" onclick="alert('Sorry, the download is not available, yet!')"> <i class="fa fa-download"></i> Download </button> the installer</li>
      <li>Make the installer runnable (Required for older Linux versions)</li>
      <dl>
        <dt><strong>Ubuntu/GNOME</strong></dt>
        <dd>Right-click the installer file and click <code>Properties</code><br/>Navigate to <code>Permissions</code><br/>Enable <code>Allow executing file as program</code></dd>
        <dt><strong>KDE</strong></dt>
        <dd>Right-click the installer file and click <code>Properties</code><br/>Navigate to <code>Permissions</code><br/>Enable <code>Is executable</code></dd>
        <dt><strong>Terminal</strong></dt>
        <dd>Navigate into the folder where the file is located and run <code>chmod +x JIPipe-Installer-Linux</code></dd>
      </dl>
      <li>Run the installer by double-clicking it (GUI) or by running <code>./jipipe-installer-x86_64.AppImage</code> from within a terminal. Follow the instructions.
      <li>You will find a JIPipe icon in the start menu and on the desktop</li>
    </ol>
    <strong><i class="fa fa-info"></i> Info:</strong> The installer requires an <strong>online</strong> connection.</i>
  </div>
  <div class="download-panel-content" id="download-osx-installer-content">
    You can download an installer that provides an existing <a href="https://fiji.sc/" target="_blank">Fiji</a> installation plus all necessary files for JIPipe.
    <ol>
      <li><button class="btn btn-default" type="button" onclick="alert('Sorry, the download is not available, yet!')"> <i class="fa fa-download"></i> Download </button> the installer</li>
      <li>Drag the file to your desktop</li>
    </ol>
    <strong><i class="fa fa-info"></i> Info:</strong> The installer requires an <strong>online</strong> connection.</i><br/>
    <strong><i class="fa fa-info"></i> Info:</strong> Please do not install the app globally (using administrator rights). This can prevent ImageJ updates.</i><br/>
  </div>
  <div class="download-panel-content" id="download-jar-content">
    JIPipe is available as standalone ImageJ plugin in *.jar format that you can install into an existing installation of ImageJ.
    <ol>
      <li><button class="btn btn-default" type="button" onclick="alert('Sorry, the download is not available, yet!')"> <i class="fa fa-download"></i> Download </button> the *.jar files</li>
      <li><a href="https://fiji.sc/" target="_blank">Download</a> ImageJ if you have no ImageJ installation, then open the ImageJ plugin folder</li>
      <dl>
        <dt><i class="fa fa-windows"></i> <i class="fa fa-linux"></i> Windows/Linux</dt>
        <dd>Open the <code>Fiji.app</code> directory and navigate into the <code>plugins</code> folder</dd>
        <dt><i class="fa fa-apple"></i> OSX</dt>
        <dd>Right-click the Fiji icon on the desktop and click <code>Show package contents</code>. Navigate into the <code>plugins</code> folder.</dd>
      </dl>
      <li>Open the *.zip file you downloaded and extract its contents into the plugins folder.</li>
      <li>Start ImageJ. You can find the JIPipe GUI inside the plugin menu</li>
    </ol>
    <strong><i class="fa fa-windows"></i> <i class="fa fa-linux"></i> Tip:</strong> If you want a desktop shortcut (Windows) or an entry in your application menu (Linux), open JIPipe and run <i>Tools &gt; Create launchers</i>
  </div>
</div>


# Source code

The software is Open Source and licensed under [BSD-2-Clause](https://opensource.org/licenses/BSD-2-Clause).
You can find the source code on GitHub at https://github.com/applied-systems-biology/jipipe.


<script type="text/javascript">
// Download page menus
$(".download-panel-content").css("display", "none");
$('input:radio[name="download-options"]').change(function(){
  $(".download-panel-content").css("display", "none");
  $("#" + $(this).val() + "-content").css("display", "block");
});
$('input:radio[value="download-via-update-site"]').change();
$('input:radio[value="download-via-update-site"]').prop("checked", true);
</script>
