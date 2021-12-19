#!/bin/bash -i

# This script assumes that the Wesnoth tools are available as executables
# or are defined as aliases in .bashrc.
shopt -s expand_aliases

echo "Generating translation file template."
wmlxgettext --domain wesnoth-Saurian_Pack \
    -o translations/templates/wesnoth-Saurian_Pack.pot --recursive
