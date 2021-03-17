#!/bin/bash

rm -r offline_user_guide
mkdir offline_user_guide 

for content in content static themes resources layouts archetypes; do
    cp -r $content ./offline_user_guide/$content
done

rm -rv ./offline_user_guide/content/examples
rm -rv ./offline_user_guide/content/download
rm -rv ./offline_user_guide/content/documentation-java-api
rm -rv ./offline_user_guide/static/apidocs
rm -v ./offline_user_guide/content/_index.md
cp -v offline_user_guide_index.md ./offline_user_guide/content/_index.md
cp -v offline_user_guide_config.toml ./offline_user_guide/config.toml

pushd offline_user_guide 
hugo
popd 
