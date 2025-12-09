#!/bin/bash

for dir in ./src/*/; do
d=${dir%/}
d=${d##*/}
find "$dir" -type f -name '*.h' -exec sed -i -r \
	-e 's%#include "([a-zA-Z]*\.h")%#include "https://iximiel.github.io/PlumedOnGodBolt/src/'"$d"'/\1%g' \
-e 's%#include "([/a-zA-Z]*\.h")%#include "https://iximiel.github.io/PlumedOnGodBolt/src/\1%g' '{}' ';'
done
