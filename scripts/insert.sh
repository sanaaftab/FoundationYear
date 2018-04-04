#!/bin/bash
#Script to insert a header and a footer into a html document from a template

#Retrieving current directory to work out location of html directory 
locationHTML=$(pwd | sed 's_/*[^/]\+/*$_/html_')

#Extracting header and footer from template document
head=$(sed '\,/head,q' $locationHTML/template.html)
foot=$(sed -n '/footer/,$p' $locationHTML/template.html)

#Debugging output
echo $head
echo $foot
echo $locationHTML

#
sed -i "1i $head" $locationHTML/$1	