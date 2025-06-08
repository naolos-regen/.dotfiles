#! /bin/bash

xrdb -query | grep '^\*' | while read -r line; do key=$(echo "$line" | cut -d ':' -f 1 | tr -d '*.')
value=$(echo "$line" | cut -d ':' -f 2- | xargs)
echo "set \$${key} ${value}"
done
