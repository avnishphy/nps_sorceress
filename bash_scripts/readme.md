# RVarDef Pattern Search Script

## Overview

This script is designed to search for `RVarDef` patterns in all `.cxx` files within specified directories. The results are saved to a text file, making it easier to locate and review these patterns within your codebase.

## How It Works

1. **Define the Output File**: The results of the search are saved in `grep_rvardef_variables_output.txt`.
2. **Clear Previous Output**: If the output file exists, it is cleared at the start of the script.
3. **Pattern Definition**: The script uses a specific grep pattern to find `RVarDef` structures.
4. **Search Process**:
   - Searches all `.cxx` files in the primary directory.
   - Optionally, searches all `.cxx` files in the secondary directory based on user input.

## Usage

1. **Ensure the Script is Executable**:
   ```bash
   chmod +x grep_rvardef_variables.sh

2. **Run the script as ./grep_rvardef_variables.sh**
3. **It will store the output as grep_rvardef_variables_output.txt**
4. **The output will have all the NPS variables first and then the general (hcana) variables.**
