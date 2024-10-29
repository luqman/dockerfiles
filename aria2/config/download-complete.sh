#!/bin/sh

set -e

umask 0000

echo [$(date)] $2, $3, $1 >> /config/downloads.log

mv $3 /downloads/done/.
