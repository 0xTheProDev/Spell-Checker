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
EXE = a.out

# Executable Directory
EXEDIR = bin/

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
SRCDIR = src/

# Object File(s)
OBJS = $(SRCS:.c=.o)

# Default Target
main: $(OBJS) $(INCDIR)/$(HDRS) Makefile
	$(CC) $(CFLAGS) -o $(EXEDIR)/$(EXE) $(OBJS) $(INCDIR) $(LIBDIR)

# Dependencies 
$(OBJS): $(INCDIR)/$(HDRS) Makefile

# House-keeping
clean:
	rm -f core $(EXEDIR)/$(EXE) $(EXEDIR)/*.o $(EXEDIR)/*.exe
