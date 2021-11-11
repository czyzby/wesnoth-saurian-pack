#!/bin/bash -i

# This script assumes that the Wesnoth tools are available as executables
# or are defined as aliases in .bashrc.
shopt -s expand_aliases

wmlxgettext --domain wesnoth-Saurian_Pack \
    -o translations/wesnoth-Saurian_Pack.pot --recursive
