#!/bin/bash -i

# This script assumes that the Wesnoth tools are available as executables
# or are defined as aliases in .bashrc.
shopt -s expand_aliases
# alias woptipng="python3 $WESNOTH_DIR/utils/woptipng.py"

# Requires Pillow, AdvanceCOMP, OptiPNG and ImageMagick.

woptipng images/ --threshold 0
