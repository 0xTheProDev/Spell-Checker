#
# Makefile
# 
# Written by Progyan Bhattacharya <bprogyan@gmail.com>
# GitHub Repository: https://github.com/Progyan1997/Spell-Checker
# Copyright (C) 2017, GNU Public License 3.0
#

# Define Compiler
CC = gcc

# Flags for Compiler
CFLAGS = 

# Executable Directory
EXEDIR = ./bin/
# Executable
EXE = speller

# Include Directory
INCLUDE_DIR = ./src/include
INCLUDES = -I$(INCLUDE_DIR)

# Library Directory
LIBDIR = lib/
# Library
LIB = dictionary

# Source Directory
SRCDIR = ./src/
# Source File(s)
SRC = main.c
# Object File(s)
OBJ = $(SRCS:.c=.o)

all: lib_ main
	

# Default Target
main:
	$(CC) -o $(EXEDIR)$(EXE) $(CFLAGS) $(INCLUDES) $(SRCDIR)$(SRC) $(LIBDIR)$(LIB).a

lib_:
	$(MAKE) -C src/lib


# House-keeping
clean:
	rm -f core *.o $(EXEDIR)$(EXE) $(EXEDIR)/*.o $(EXEDIR)/*.exe
	$(MAKE) -C src/lib clean