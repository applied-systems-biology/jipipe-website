# JIPipe

# Copyright

Copyright by Ruman Gerst

Research Group Applied Systems Biology - Head: Prof. Dr. Marc Thilo Figge

https://www.leibniz-hki.de/en/applied-systems-biology.html

HKI-Center for Systems Biology of Infection

Leibniz Institute for Natural Product Research and Infection Biology - Hans Knöll Insitute (HKI)

Adolf-Reichwein-Straße 23, 07745 Jena, Germany

The project code is licensed under BSD 2-Clause.
See the LICENSE file provided with the code for the full license.

# Editing the website

The HTML documentation for the JSON schemas was generated with https://github.com/bootprint/bootprint-json-schema

The website is built using [Hugo](https://gohugo.io/) that builds the final website into the `docs` folder.
Use following command to obtain the website source:

```bash
git clone https://github.com/applied-systems-biology/misa-framework.git
git submodule init
git submodule update
```

To preview the website during development, run following command:
```bash
hugo server
```

# Generating the final website

To generate the final website, run following command:

```bash
hugo
```

The output will be located in `docs`.

# Offline user guide

The offline user guide is intended to be uploaded to be uploaded to the GitHub release page.
It does not contain the API docs and developer documentation.

To generate it, run

```bash
./generate_offline_user_guide.sh
```

The output will be located in `offline_user_guide`. The contents of this directory must be packaged into a *.zip file for the upload.

# Offline documentation

An offline version of the website, including the API docs and developer documentation.

To generate it, run

```bash
./generate_offline_documentation.sh
```

The output will be located in `offline`.

