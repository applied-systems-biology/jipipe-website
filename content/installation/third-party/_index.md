+++
title = "Third party software"
weight = 2
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

JIPipe relies on additional third-party software to provide some functionality. This includes the integration of Python, R, and Cellpose.
At the first start, these are not known to JIPipe, which in return will notify about these issues.



<div class=tutorial-list>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/installation/notifications.png" /></div>
    <div class="tutorial-item-content">
    <h2>Notifications panel</h2>
    JIPipe will show a notification for each missing third-party software. 
    <ol>
        <li>To open the notifications tab, click the blinking notification button at the top right.</li>
        <li>You will be offered various options to resolve each notification:
            <ul>
                <li>You can dismiss it temporarily by clicking <i class="fa fa-times-circle"></i></li>
                <li>You can dismiss it permanently by clicking <i class="fa fa-eye-slash"></i>. You can undo this by going to the "Hidden notifications" tab.</li>
                <li>You can apply a notification-related action (e.g., installation of a Python environment)</li>
            </ul>
        </li>
    </ol>
    In the case of Python, R, and Cellpose, JIPipe directly offers installers that automatically handle the correct setup of these environments. In this case, you don't need to configure anything else.
    If you want to enter settings manually or use alternative options (e.g., selecting an existing Python environment), click the configuration item.
    <strong>If you accidentally dismissed a notification, you can find the installation procedures for third-party software in the application settings. You will find more information in the appropriate installation guide (see below for a list).</strong>
    </div>
  </div>
</div>

# Installation guides

{{% children description="true" %}}
