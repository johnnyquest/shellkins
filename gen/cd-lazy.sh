#!/bin/bash


# NOTE: this has to be run with '.', e.g.:   . cd-lazy.sh <arguments>

# cd-lazy gfx h13 backup
# ->
# find -L -type d -iwholename "*gfx*" -iwholename "*h13*" -iwholename "*backup*" -print0 | head -1


CMD=$( echo $* | awk '
BEGIN { ORS=" "; print "find -L -type d " } \
{ for(i=1;i<=NF;i++) { print "-iwholename \"*" $i "*\"" } }
END { print "-print | head -1\n" }' )

#echo cmd = $CMD

DIR=$( echo $CMD | bash )

echo found: $DIR

export SHELLKINS_PREV_DIR=`pwd`
cd $DIR

