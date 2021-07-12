#!/bin/bash

TOPIC_NAME=$1
TEMPLATE_DIR="template"
TEMPLATE_FILENAME="template.tex"

echo "Cleaning previous files..."
rm -rf $TOPIC_NAME

echo "Creating files for topic: ${1} ..."
mkdir $TOPIC_NAME
NEW_TOPIC_TEX_FILE=$TOPIC_NAME/"${TOPIC_NAME}.tex"
cp $TEMPLATE_DIR/$TEMPLATE_FILENAME $NEW_TOPIC_TEX_FILE

echo "Opening new topic in texmaker..."
nohup texmaker $NEW_TOPIC_TEX_FILE &
