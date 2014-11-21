#!/bin/bash
#
#		@file		clipboard_path_to_linux.sh
#		@author		xy
#		@since		2014-11-19
#
#		@brief		Converts a windows path in the primary clipboard to linux.
#

xclip -o -selection XA_CLIPBOARD | tr '\\' '/' | sed -r 's_[uU]:_/U_g' | xclip -i -selection XA_CLIPBOARD



