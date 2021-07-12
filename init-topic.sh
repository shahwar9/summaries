#!/bin/bash

NEW_TOPIC_DIR=$1
TEMPLATE_DIR="template"
TEMPLATE_FILENAME="template.tex"

echo "Cleaning previous files..."
rm -rf $NEW_TOPIC_DIR

echo "Creating files for topic: ${1} ..."
mkdir $NEW_TOPIC_DIR
NEW_TOPIC_TEX_FILE=$NEW_TOPIC_DIR/"${NEW_TOPIC_DIR}.tex"
cp $TEMPLATE_DIR/*.tex $NEW_TOPIC_DIR
mv $NEW_TOPIC_DIR/$TEMPLATE_FILENAME $NEW_TOPIC_TEX_FILE

echo "Opening ${NEW_TOPIC_TEX_FILE} in texmaker..."
nohup texmaker $NEW_TOPIC_TEX_FILE &
