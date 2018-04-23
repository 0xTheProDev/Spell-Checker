#
# Makefile
#
# Written by Progyan Bhattacharya <bprogyan@gmail.com>
# GitHub Repository: https://github.com/Progyan1997/Spell-Checker
# Copyright (C) 2017, GNU Public License 3.0
#

# Define Compiler
CC = gcc

# Flags for Compiler/Linker
CFLAGS = -std=c11 -O2 -Werror -Wall -pedantic
LFLAGS =

# Set VPATH for Source Files
VPATH = src lib

# Executable Directory
BIN = bin

# Executable
PROG = speller
EXE = $(BIN)/$(PROG)

# Include Directory
INCLUDE_DIR = inc
INCLUDES = -I$(INCLUDE_DIR)

# Library Directory
LIBDIR = lib

# Library
LIB = dictionary.a

# Library Source File(s)
LIBS = $(wildcard $(LIBDIR)/*.c)

# Source Directory
SRCDIR = src

# Source File(s)
SRCS = $(wildcard $(SRCDIR)/*.c)

# Object File(s)
OBJS = $(addprefix $(BIN)/, $(notdir $(SRCS:.c=.o)))
OBJL = $(addprefix $(BIN)/, $(notdir $(LIBS:.c=.o)))

# Default Target
all: $(EXE)

$(EXE): $(OBJL) $(OBJS)
	$(CC) $^ -o $(EXE) $(LFLAGS)

$(BIN)/%.o: %.c
	@if [ ! -d $(BIN) ]; then mkdir $(BIN) ; fi
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

.PHONY: all

# Build Static Library
lib: $(OBJL)
	ar rcs $(BIN)/$(LIB) $^

.PHONY: lib

# Help Option
help:
	@echo "Object Files: $(OBJL) $(OBJS)"
	@echo "Source Files: $(LIBS) $(SRCS)"

.PHONY: help

# House-keeping
clean:
	rm -rf core *.o $(EXE) $(BIN)

.PHONY: clean
