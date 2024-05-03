#!/bin/bash

JSHEN_DIR="$HOME/jshen/use"
for f in $(find $JSHEN_DIR -maxdepth 1 -name '*.bash' && find $JSHEN_DIR -mindepth 2 -name '*.bash'); do
    source $f;
    echo -n '.'
done
echo " Done."
