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
      <input type="radio" value="download-windows-package" id="download-windows-package" name="download-options"/>
      <label for="download-windows-package"> <i class="fa fa-windows"></i> Windows package (x64)</label>
      <input type="radio" value="download-linux-package" id="download-linux-package" name="download-options"/>
      <label for="download-linux-package"> <i class="fa fa-linux"></i> Linux package (x64)</label>
      <!--<input type="radio" value="download-osx-package" id="download-osx-package" name="download-options"/>
      <label for="download-osx-package"> <i class="fa fa-apple"></i> MacOS package (beta)</label>-->
      <input type="radio" value="download-jar" id="download-jar" name="download-options"/>
      <label for="download-jar"> <i class="fa fa-windows"></i> <i class="fa fa-linux"></i> <i class="fa fa-apple"></i> JAR files</label>
    </form>
  </div>
  <div class="download-panel-content" id="download-via-update-site-content">
    <strong>Recommended.</strong> An update site allows you to easily update JIPipe to newer versions with one click. It requires from you to have an existing installation of ImageJ.
    <ol>
      <li><a href="https://fiji.sc/" target="_blank">Download</a> ImageJ or open your existing ImageJ installation</li>
      <li>Go to <i>Help &gt; Update ...</i> and activate the <code>JIPipe</code> update site. Then let ImageJ download all necessary files.</li>
      <li>Click <i>Manage update sites</i> and select <code>JIPipe</code>. <strong>If JIPipe is not available, click <i>Add update site</i> and add a new site with the name <code>JIPipe</code> and the URL <code>https://sites.imagej.net/JIPipe/</code></strong></li>
      <li>Click <i>Apply changes</i> and wait until all downloads have been finished
      <li>Restart ImageJ and go to Plugins/JIPipe/JIPipe GUI</li>
      <li>On the first start, JIPipe will most likely detect missing dependencies. Just click <i>Resolve</i> and follow the instructions.</li>
    </ol>
    <strong><i class="fa fa-windows"></i> <i class="fa fa-linux"></i> Tip:</strong> If you want a desktop shortcut (Windows) or an entry in your application menu (Linux), open JIPipe and run <i>Tools &gt; Create launchers</i><br/>
    <strong><i class="fa fa-apple"></i> Info:</strong> We have only limited capabilities to test software on Apple computers and are aware of issues regarding the integration of external software (Python, R, Cellpose, ...). We are open to contributions to resolve these problems.<br/>
  </div>
  <div class="download-panel-content" id="download-windows-package-content">
    You can download a package that provides an existing <a href="https://fiji.sc/" target="_blank">Fiji</a> installation plus all necessary files for JIPipe.
    <ol>
      <li><a class="btn btn-default" type="button" href="https://github.com/applied-systems-biology/jipipe/releases/download/v1.72.0/jipipe-full-1.72.0-win.zip"> <i class="fa fa-download"></i> Download </a> the package</li>
      <li>Extract the *.zip file</li>
      <li>Run ImageJ-win64.exe</li>
      <li>Go to Plugins/JIPipe/JIPipe GUI</li>
    </ol>
    <strong>Tip:</strong> If you want a desktop shortcut, open JIPipe and run <i>Tools &gt; Create launchers</i>
  </div>
  <div class="download-panel-content" id="download-linux-package-content">
    You can download a package that provides an existing <a href="https://fiji.sc/" target="_blank">Fiji</a> installation plus all necessary files for JIPipe.
    <ol>
      <li><a class="btn btn-default" type="button" href="https://github.com/applied-systems-biology/jipipe/releases/download/v1.72.0/jipipe-full-1.72.0-linux.zip"> <i class="fa fa-download"></i> Download </a> the package</li>
      <li>Extract the *.zip file</li>
      <li>Run ImageJ-win64</li>
      <li>Go to Plugins/JIPipe/JIPipe GUI</li>
    </ol>
    <strong>Tip:</strong> If you want an application menu entry, open JIPipe and run <i>Tools &gt; Create launchers</i>
  </div>
  <div class="download-panel-content" id="download-osx-package-content">
    You can download a package that provides an existing <a href="https://fiji.sc/" target="_blank">Fiji</a> installation plus all necessary files for JIPipe.
    <ol>
      <li><a class="btn btn-default" type="button" href="https://github.com/applied-systems-biology/jipipe/releases/download/v1.72.0/jipipe-full-1.72.0-macos.zip"> <i class="fa fa-download"></i> Download </a> the package</li>
      <li>Drag the file to your desktop</li>
    </ol>
    <strong><i class="fa fa-warning"></i> Info:</strong> We only have limited capabilities to test software on Apple computers. If you experience any issues, try to install JIPipe via the ImageJ update site.</i><br/>
    <strong><i class="fa fa-warning"></i> Info:</strong> We are aware of some issues regarding the integration of external software (Python, R, Cellpose, ...). We are open to contributions to resolve these problems.</i><br/>
    <strong><i class="fa fa-info"></i> Info:</strong> Please do not install the app globally (using administrator rights). This can prevent ImageJ updates.</i><br/>
  </div>
  <div class="download-panel-content" id="download-jar-content">
    JIPipe is available as standalone ImageJ plugin in *.jar format that you can install into an existing installation of ImageJ.
    <ol>
      <li><a class="btn btn-default" type="button" href="https://github.com/applied-systems-biology/jipipe/releases/download/v1.72.0/JIPipe-1.72.0.zip"> <i class="fa fa-download"></i> Download </a> the package</li>
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
