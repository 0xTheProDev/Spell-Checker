# Spell-Checker
A Simple Efficient C library for spell checking
[![license]GPL 3.0](https://github.com/Progyan1997/Spell-Checker/blob/master/LICENSE)

## Version
1.0

## Usage
Bash:
```
./speller [dictionary] text
```

Command-Line:
```
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


__Copyright (C) 2017, GNU Public License 3.0__
