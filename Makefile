TARGET=app

SRC=$(shell find . -type f -name '*.c' -exec echo {} \;)

INTER=$(shell find . -type f -name '*.i' -exec echo {} \;)
OBJ=$(shell find . -type f -name '*.o' -exec echo {} \;)
ASM=$(shell find . -type f -name '*.s' -exec echo {} \;)

CC=gcc
FLAGS=-fdiagnostics-color=always -Wall -Werror -Wpedantic

all: build

build: $(SRC)
	$(CC) $^ -o $(TARGET)

run: build
	@./$(TARGET)

temps: $(SRC)
	$(CC) -save-temps $^ -o $(TARGET)

clean: $(TARGET) $(INTER) $(OBJ) $(ASM)
	rm $^
