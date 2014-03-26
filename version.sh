#!/usr/bin/env bash
MATCH="http://resource.belframework.org/belframework/\w\+/"
if [ -z "$1" ]; then
    echo "usage: version.sh [NEW VERSION]" 1>&2
    exit 1
fi
NEW="http://resource.belframework.org/belframework/$1/"

for resource in `find . -name "*.bel" -or -name "*.xbel" -or -name "*.json" -or -name "*.xml"`; do
    sed -i "s#$MATCH#$NEW#g" $resource
    echo "migrated $resource to $NEW"
done
