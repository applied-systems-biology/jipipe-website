+++
title = "Context actions"
weight = 50
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Context actions allow you to add custom buttons into an algorithm's parameter group that by default
will also appear within a node's context menu.
They can be used for multiple purposes such as loading example data, applying
an auto-configuration, opening websites, or displaying documentation or data in a new tab.

![Example of a context action](/img/documentation/context-actions.png)

To create one, annotate a public function with [@JIPipeDocumentation](/apidocs/org/hkijena/jipipe/api/JIPipeDocumentation.html)
and [@JIPipeContextAction](/apidocs/org/hkijena/jipipe/api/parameters/JIPipeContextAction.html).
The function should have one parameter: an instance of [JIPipeWorkbench](/apidocs/org/hkijena/jipipe/ui/JIPipeWorkbench.html).

```java
@JIPipeDocumentation(name = "Load example", description = "Loads example parameters that showcase how to use this algorithm.")
@JIPipeContextAction(iconURL = ResourceUtils.RESOURCE_BASE_PATH + "/icons/actions/graduation-cap.png")
public void setToExample(JIPipeWorkbench parent) {
    // Insert code here
}
```
