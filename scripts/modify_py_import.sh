#!/bin/bash

SEARCH_DIR=$1

if [ -z "$SEARCH_DIR" ]; then
    echo "Usage: $0 <search_dir>"
    exit 1
fi

# find all *.py files
for file in $(find $SEARCH_DIR -name "*.py"); do
    sed -i '' 's/from auth import/from panther.auth import/g' $file
    sed -i '' 's/from basic import/from panther.basic import/g' $file
done
