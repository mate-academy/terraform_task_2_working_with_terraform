#!/bin/bash

mkdir -p files_to_upload

echo "This is a demo file" > files_to_upload/demo.txt

zip -r example-blob.zip files_to_upload > /dev/null

echo "✅ Архів example-blob.zip створено успішно."
