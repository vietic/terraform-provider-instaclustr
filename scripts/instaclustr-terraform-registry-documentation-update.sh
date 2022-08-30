#!/usr/bin/env bash

set -e

INSTACLUSTR_API_URL="$IC_API_URL"

if [ -z "$INSTACLUSTR_API_URL" ]
then
  INSTACLUSTR_API_URL="https://api.instaclustr.com"
fi

ZIP_FILE_NAME="terraform-registry-documentation.zip"
DEST_FOLDER_NAME="../"

curl $INSTACLUSTR_API_URL/cluster-management/v2/operations/generate-terraform-documentation/v2 --output "$ZIP_FILE_NAME" --fail

rm -rf "$DEST_FOLDER_NAME/docs"

mkdir -p "$DEST_FOLDER_NAME/docs"

tar xvf "$ZIP_FILE_NAME" -C "$DEST_FOLDER_NAME"

rm "$ZIP_FILE_NAME"
