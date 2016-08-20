#!/bin/bash

umask 0000

if [ -d "/complete" ]; then
  mv $3 /complete/.
else
  echo "(optional) set /complete volume to moves to there when d/l is complete"
fi
