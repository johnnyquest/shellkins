#!/bin/sh
#
#		@file		backup.sh
#		@author		xy
#		@since		2012-01-17
#
#		@brief		Create a quick backup of the whole shebang.
#

ROOT_DIR_NAME=shellkins

BASE_DIR=..
ARCHIVE_NAME=shellkins_`date +%Y-%m-%d_%H%M_%S`_`hostname`.tar.bz2

OLD_DIR=`pwd`
cd $BASE_DIR

echo in dir `pwd`, archiving to file $ARCHIVE_NAME

tar cjvf $ARCHIVE_NAME $ROOT_DIR_NAME

cd $OLD_DIR
unset OLD_DIR

git gc


