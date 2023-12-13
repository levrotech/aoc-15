FILES=day1/day1.c
FLAGS=-fdiagnostics-color=always -Wall -Werror -Wpedantic

build: main.c
	gcc $(FLAGS) main.c $(FILES) -o main

run: main
	@./main

clean: main main.i main.o main.s
	rm main main.i main.o main.s