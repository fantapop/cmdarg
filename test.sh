#!/usr/bin/bash4

declare -a cfg_array=()
declare -A cfg_hash=()

source ./cmdarg.sh

cmdarg 'b' 'boolean' 'A boolean argument'
cmdarg 's:' 'string' 'A string argument'
cmdarg 'a:[]' 'cfg-array' 'An array argument'
cmdarg 'H:{}' 'cfg-hash' 'A hash argument'

cmdarg_parse "$@"

cmdarg_dump
