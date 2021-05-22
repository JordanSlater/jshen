#!/bin/bash
for f in $HOME/jshen/src/*.bash $HOME/jshen/src/**/*.bash; do
    source $f;
    echo -n '.'
done
echo " Done."
