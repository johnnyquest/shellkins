#
#		@file		install.sh
#		@author		xy
#
#		@since		2014-11-21
#
#		@brief		Installation script (mostly, command links to ~/bin).
#
#

echo SHELLKINS/INSTALL ---

SCRIPT=`readlink -f $0`
SRC=`dirname $SCRIPT`
DEST=~/bin

echo script: $SCRIPT
echo source: $SRC
echo destination: $DEST
echo '---'

mkdir -pv $DEST

ln -sfv $SRC/bashrc.shellkins $DEST/bashrc.shellkins
echo '---'


