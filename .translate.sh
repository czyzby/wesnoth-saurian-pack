#!/bin/bash -i

# This script assumes that the Wesnoth tools are available as executables
# or are defined as aliases in .bashrc.
shopt -s expand_aliases

echo "Generating translation file template."
wmlxgettext --domain wesnoth-Saurian_Pack \
    -o translations/wesnoth-Saurian_Pack.pot --recursive

declare -a supported_languages=("pl")
for language in "${supported_languages[@]}"
do
    echo "Generation .mo translation file for language: $language."
    msgfmt translations/$language/wesnoth-Saurian_Pack.po \
        -o translations/$language/LC_MESSAGES/wesnoth-Saurian_Pack.mo
done
