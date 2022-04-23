#!/bin/bash
for f in $(find $HOME/jshen/src -name '*.bash'); do
    source $f;
    echo -n '.'
done
echo " Done."
