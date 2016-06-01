#!/bin/sh

cat inc/header.html > index.html
marked readme.md >> index.html
cat inc/footer.html >> index.html