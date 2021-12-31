#!/bin/bash -i

# This script assumes that the Wesnoth tools are available as executables
# or are defined as aliases in .bashrc.
shopt -s expand_aliases
# alias wmlindent="python3 $WESNOTH_DIR/data/tools/wmlindent"
# alias wmllint="python3 $WESNOTH_DIR/data/tools/wmllint"

wmlindent .
wmllint .
