+++
title = "Common issues"
description = "Solutions to common issues"
weight = 2
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

## JIPipe does not load.

There can be multiple causes for issues:

<table>
<tr>
    <td>Error</td>
    <td>Cause</td>
    <td>Solution</td>
</tr>
<tr>
    <td>
    Splash screen says "Module threw error". Various ImageJ errors.
    </td>
    <td>
    A dependency might be missing. 
    </td>
    <td>
    Please check if all JIPipe dependencies are installed. Please do not hesitate to contact us. Provide us a screenshot, and ideally the full set of error messages.
    </td>
</tr>
<tr>
    <td>
    Splash screen says "Module threw error". ImageJ error says "Caused by: java.lang.NoSuchMethodError: com.fasterxml.jackson.core.JsonParser.getReadCapabilities()"
    </td>
    <td>
    A plugin interferes with a software library. ImageJ and JIPipe want a newer version, but the plugin contains a copy of an older version that is loaded first. <strong>This also interferes with some ImageJ functions!</strong>
    </td>
    <td>
    If you installed OMERO Insight, try to update it. Otherwise, get help from a developer who can debug the ImageJ instance. Provide 
    the developer with this link: <a href="https://stackoverflow.com/a/42865557" target="_blank">https://stackoverflow.com/a/42865557</a>
    </td>
</tr>
</table>