#!/bin/sh

cat html/header.html > index.html
marked src/readme.md >> index.html