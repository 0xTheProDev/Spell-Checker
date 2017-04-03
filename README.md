Spell-Checker	[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)
=========
A Simple Efficient C library for spell checking

## Version
1.0

## Usage
Bash:
``` bash
./speller [dictionary] text
```

Command-Line:
``` bash
./speller.exe [dictionary] text
```

### Details
* `./speller` or `./speller.exe`: Output File Name

* `[dictionary]`: Dictionary File *(optional)*

* `text`: Text file to be checked

## Return Value
**`0`** Successfuly Executed

**`1`** Invalid Argument Supplied

**`2`** Failed to load/unload Dictionary from Memory

**`3`** Failed to open Text File (PATH specified)

# DICTIONARY.H

__File Location:__ `src/include/Dictionary.h`

__Include:__ `#include "include/Dictionary.h"`

## API Usage

#### <a href="#check"> `bool check(const char* word)` </a>

* Returns true if word is in dictionary else false.

#### <a href="#load"> `bool load(const char* dictionary)` </a>

* Loads dictionary into memory.  Returns true if successful else false.

#### <a href="#size"> `unsigned int size(void)` </a>

* Returns number of words in dictionary if loaded else 0 if not yet loaded.

#### <a href="#unload"> `bool unload(void)` </a>

* Unloads dictionary from memory.  Returns true if successful else false.
