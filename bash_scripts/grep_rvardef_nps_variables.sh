#!/bin/bash

# Define the directory containing the files
directory="/group/nps/apps/NPSlib/fddb8e9/src/src"

# Define the filenames to search through
filenames=(
  "THcNPSSecondaryKine.cxx"
  "THcNPSTrackInfo.cxx"
  "THcNPSCoinTime.cxx"
  "THcNPSArray.cxx"
  "THcNPSArray.cxx"
  "THcNPSArray.cxx"
  "THcNPSCalorimeter.cxx"
  "THcNPSCalorimeter.cxx"
)

# Define the output file
output_file="grep_rvardef_nps_variables_output.txt"

# Clear the output file if it exists
> "$output_file"

# Grep pattern to search for RVarDef structure
pattern='RVarDef\s+\w+\[\]\s*=\s*\{([\s\S]*?)\{\s*0\s*\}\s*\};'

# Loop over each filename and run grep
for filename in "${filenames[@]}"; do
  filepath="$directory/$filename"
  echo "Searching in $filepath..."
  echo "File: $filename" >> "$output_file"
  grep -Pzo "$pattern" "$filepath" | tee -a "$output_file" #showing the output in terminal and saving to a file
  echo >> "$output_file" # add a newline for separation
done

echo "Results have been saved to $output_file"
