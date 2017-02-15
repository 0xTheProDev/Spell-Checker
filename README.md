# Spell-Checker
A Simple Efficient C library for spell checking

## Version
1.0

## Usage
Bash: `./a.out [dictionary] text`
Command-Line: `./a.exe [dictionary] text`

`./a.out` or `./a.exe`: Output File Name

`[dictionary]`: Dictionary File *(optional)*

`text`: Text file to be checked

## Return Value
`0` Successfuly Executed

`1` Invalid Argument Supplied

`2` Failed to load/unload Dictionary from Memory

`3` Failed to open Text File (PATH specified)
