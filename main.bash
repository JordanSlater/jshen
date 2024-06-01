#!/bin/bash

# JSHEN_VERBOSE=true

JSHEN_DIR="$HOME/jshen/use"
if [ "$JSHEN_VERBOSE" != true ]; then
    echo -n '<'
fi

for f in $(find $JSHEN_DIR -maxdepth 1 -name '*.bash' && find $JSHEN_DIR -mindepth 2 -name '*.bash'); do
    if [ "$JSHEN_VERBOSE" = true ]; then
        echo -n "source $f"
        time source "$f"
        echo
    else
        source "$f"
        echo -n '.'
    fi
done

if [ "$JSHEN_VERBOSE" != true ]; then
    echo -n '> '
fi
echo 'Done.'
