+++
title = "Groups and node templates: Exporting parameters from groups"
weight = 120
hidden = true
type="tutorial-step"
tutorial_image = "/tutorials/feature/teaching/templates3.png"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

Groups by themselves are a an excellent mode of reducing the complexity of various operations. To still provide users of the group with means to customize the behaviour of the nodes contained within the group, `Group` nodes support the referencing/export of group-internal parameters (red box 1) to the group itself (red arrow 2). 

{{< link-box >}}
    {{< link-box-link href="/tutorials/intermediate/create-node-groups-2/" text="👉 Related tutorial: Creating node groups II" description="Learn how to export group parameters." >}}
{{< /link-box >}}

👉 For example, teachers can provide a group responsible for segmenting and filtering objects with settings where students can input custom object size constraints:

> `Task`: Glomeruli have a radius of `15 µm` to `65 µm`. Please setup the `Glomeruli segmentation` area and circularity constraints that only objects with the appropriate size are segmented.





