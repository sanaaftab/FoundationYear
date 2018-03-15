#!/bin/bash
#Script to insert a header and a footer into a html document from a template
head=$(sed '\,/head,q' template.html)
