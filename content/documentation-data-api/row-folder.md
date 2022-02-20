+++
title = "Row folder"
description = "Data storage of a JIPipe data type in the file system"
weight = 20
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

All data in a [data table](/documentation-data-api/data-table) are stored in numeric
folders called "row folders", each containing the data of one table row.

This data stores the **raw serialized format**, without metadata - metadata is located
in `data-table.json` of the data table.

The exact structure of a row folder depends on the data type. The current documentation can always be found by navigating to 
`Help > Data type compendium` within JIPipe. Alternatively, we uploaded a current database [on this website](/documentation-data-api/data-types/). A description of the storage directory is provided as human-readable text and in [JSON schema](https://www.json-schema.org/) format.
