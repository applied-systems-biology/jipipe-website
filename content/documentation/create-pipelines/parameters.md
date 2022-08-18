+++
title = "Parameters"
description = "Explains advanced parameter features."
weight = 15
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

{{< toc >}}

{{< jipipe-info "1.74.x+" "Some features are only present in JIPipe version 1.74.0 or newer" >}}

Many important settings of a node are located within its parameter panel (accessible by selecting the node and going to the `Parameters` tab).
The editor contains the list of all parameters, and a section containing the current documentation that by default shows general information about the node.
If you want to know more details about a specific parameter, click the help button next to the item, which will change the documentation to one specific to the parameter.

On this page you will also find brief descriptions about additional features of the parameter system.

![Parameter editor](/img/documentation/parameters-new.png)

# Testing multiple parameters

{{< jipipe-info "1.74.x+" "This feature was redesigned in JIPipe 1.74.0" >}}

Many nodes support a feature that allows to run a workload on multiple parameter sets. For example, you can apply different auto thresholding methods on the same node. 
To enable support for multiple parameters, switch to the **Advanced parameters** tab. Then enable the **Enable multiple parameters** button.

This will add a **Parameters** slot to the node that consumes data that represents the parameter sets.

{{% notice info %}}
If the advanced parameters tab or the button are not present, then the feature is not supported.
{{% /notice %}}

![Enabling multiple parameters](/img/documentation/multi-parameters-new.png)

## Creating parameter sets

There are two options to create parameter sets:

1. use the interactive designer provided by the **Define multiple parameters** node
2. generate parameter sets via an expression (**Generate parameters from expression**)

Independent of the choice, add the node into the pipeline and connect it to the **Parameters** slot.

![Connecting parameter generators](/img/documentation/multi-parameters-connected-new.png)

### Interactive parameter designer

<div class=tutorial-list>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img style="margin: -16px;" src="/img/documentation/multi-parameters-interactive-step1.png" /></div>
    <div class="tutorial-item-content">
    <h2>Opening the parameter editor</h2>
    Select the node and click the "Edit parameters" button.
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/documentation/multi-parameters-interactive-step2.png" /></div>
    <div class="tutorial-item-content">
    <h2>Adding the parameter</h2>
    Parameter sets are represented as table where the column indicates the parameter and each row represents one parameter set. To create this table, start by importing a parameter from an existing node via the 
    <strong>Import from node</strong> button and selecting one or multiple parameters (blue wrenches) from the available ones. 
    <div class="notices info" >
      Tables are portable between different nodes. For example, you can re-use a parameter set for a different instance of the same node type.
    </div>
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/documentation/multi-parameters-interactive-step3.png" /></div>
    <div class="tutorial-item-content">
    <h2>Adding parameter sets</h2>
    To add the first parameter set, click the <strong>Add</strong> button. After selecting the table cell in the editor, you can edit its value in the right-hand panel.
    If you want more parameter sets, continue to add rows.
    <div class="notices info" >
      You can also generate values via the <strong>Generate</strong> function.
    </div>
    </div>
  </div>
</div>

### Generate via expressions

An alternative mode to the interactive parameter set generator is the node **Generate parameters from expression** that generates parameter sets via an expression.
Please note that this mode is more advanced and requires you to know about the exact properties of the parameter. 

<div class=tutorial-list>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/documentation/multi-parameters-expression-step1.png" /></div>
    <div class="tutorial-item-content">
    <h2>Identifying the parameter properties</h2>
    Select the node that should be run with multiple parameter sets and click the help icon next to the parameter.
    Copy/write down the <strong>unique identifier</strong> and remember which type the parameter has.
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img style="margin: -16px;" src="/img/documentation/multi-parameters-expression-step2.png" /></div>
    <div class="tutorial-item-content">
    <h2>Setting up the columns</h2>
    As with the interactive designer, the expression-based <strong>Generate parameters from expression</strong> node is representing parameter sets as columns. Each column is generated independently by an expression that returns one or multiple values. 
    Insert the <strong>unique identifier</strong> into the <strong>Key</strong> setting and select the correct parameter type.
    </div>
  </div>
  <div class="tutorial-item">
    <div class="tutorial-item-img"><img src="/img/documentation/multi-parameters-expression-step3.png" /></div>
    <div class="tutorial-item-content">
    <h2>Setting up the expression</h2>
    Finally, write an expression that returns the value or an array of values. For simple types (numbers, booleans, strings, ...), you can return the values directly. For example, <code>MAKE_SEQUENCE</code> can be utilized to generate numeric sequences.
    You can also write the list directly via the <code>ARRAY</code> function, e.g., <code>ARRAY("a", "b", "c")</code>.<br/>
    For more complex types, you should return the JSON representations of the parameter values and enable the <strong>Values are JSON</strong> setting. 
    <div class="notices info" >
      You can find JSON representations by either copying a parameter value via the arrow next to the help button or opening the <strong>Parameter explorer</strong> by right-clicking the node.
    </div>
    </div>
  </div>
</div>

# Adaptive parameters

{{< jipipe-info "1.74.x+" "This feature was redesigned in JIPipe 1.74.0" >}}

Many nodes support parameters that can be adapted to the current annotation set. This, for example, allows to apply a thresholding based on an annotation value.
Switch to the **Advanced parameters** tab to add adaptive parameters.

Here you can either manually add items into the **Overridden parameters** list or click the **Add adaptive parameter** button to setup the appropriate unique parameter key and default value for a parameter. 

![Adaptive parameters editor](/img/documentation/adaptive-parameters-new.png)