#! /bin/sh

find . -not -path "./.*" -not -name "autogenerate_readme.sh" -not -name "README.md" |
  awk -F "/" '{ spaces = ""; for (i = 2; i < NF; i++) { spaces = sprintf("%s\t", spaces); } split($NF, file_name, "."); printf("%s - [%s](%s)\n", spaces, file_name[1], $0); }' >README.md
