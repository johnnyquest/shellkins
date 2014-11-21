#!/bin/bash

tee /dev/stdout | awk '{ print strftime("[%Y-%m-%d %H:%M:%S]"), $0; }' >$1


