#!/bin/bash

rm -r offline
mkdir offline 

for content in content static themes resources layouts archetypes; do
    cp -r $content ./offline/$content
done

rm -rv ./offline/content/examples
rm -rv ./offline/content/download
rm -v ./offline/content/_index.md
cp -v offline_documentation_index.md ./offline/content/_index.md
cp -v offline_documentation_config.toml ./offline/config.toml

pushd offline 
hugo
popd 
