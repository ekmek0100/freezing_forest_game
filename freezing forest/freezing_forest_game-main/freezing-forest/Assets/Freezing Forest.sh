#!/bin/sh
printf '\033c\033]0;%s\a' Freezing Forest
base_path="$(dirname "$(realpath "$0")")"
"$base_path/Freezing Forest.x86_64" "$@"
