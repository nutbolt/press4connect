#!/bin/sh

dir=$(dirname $(readlink -f "$0"))

config="$1"
path="$dir/$config"

logger "[P4C] Setting up config: $config"

cd "$path"
"$path/init.sh"

logger "[P4C] Finished"

