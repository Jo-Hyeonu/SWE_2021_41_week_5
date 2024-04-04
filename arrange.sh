#!/bin/bash

current_dir=$(dirname "$0")

for file in $(ls "$current_dir/files" | sort); do
  first_letter=$(echo "$file" | cut -c 1)
  
  mv "$current_dir/files/$file" "$current_dir/$first_letter/"
done
