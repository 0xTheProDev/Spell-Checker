#For generating a static library
# source files.
SRC = dictionary.c
OBJ = $(SRC:.c=.o)
OUT_DIR = ../../lib
OUT = $(OUT_DIR)/dictionary.a
INCLUDE_DIR = ../include
# TODO: declare PROJECT_ROOT and reference path in relative to PROJECT_ROOT
INCLUDES = -I$(INCLUDE_DIR)

# CC compiler flags (-g -O2 -Wall)
CCFLAGS =
CC = gcc
LDFLAGS = 

.SUFFIXES: .c

default: checkdir $(OUT)
	

$(OBJ):
	$(CC) $(INCLUDES) $(CCFLAGS) -c $(SRC) -o $@

$(OUT): $(OBJ)
	ar rcs $(OUT) $(OBJ)

checkdir:
	if [ ! -d $(OUT_DIR) ]; then mkdir $(OUT_DIR) ; fi

clean:
	rm -f $(OBJ) $(OUT)