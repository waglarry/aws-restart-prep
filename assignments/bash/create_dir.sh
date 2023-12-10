#!/bin/bash
echo "Enter directory name"
read DIR

mkdir ${DIR}
echo "Enter name of html file"
read HTML
echo "Enter name of css file"
read CSS
echo "Enter name of js file"
read JS

touch "${DIR}/${HTML}.html"
touch "${DIR}/${CSS}.css"
touch "${DIR}/${JS}.js"
echo "Files created"
