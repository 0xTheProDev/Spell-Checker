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

# Executable
EXE = Spell-Checker

# Executable Directory
EXEDIR = -o./bin

# Header File(s)
HDRS = dictionary.h

# Include Directory
INCDIR = -I../src/include

# Library File(s)
LIBS = -ldictionary

# Library Directory
LIBDIR = -L../lib

# Source File(s)
SRCS = main.c

# Source Directory
SRCDIR = -c./src/

# Default Target
main: $(INCDIR) $(HDRS) Makefile
	$(CC) $(CFLAGS) $(EXEDIR) $(EXE) $(SRCDIR)$(SRCS) $(INCDIR) $(LIBDIR) $(LIBS)

# House-keeping
clean:
	rm -f core $(EXEDIR)/$(EXE) $(EXEDIR)/*.o $(EXEDIR)/*.exe
