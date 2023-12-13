#include <errno.h>
#include <stdio.h>
#include <stdlib.h>

#include "day1.h"

void day1(void) {
    FILE* input = fopen("day1/input.txt", "r");

    char parenthesis;
    int floor;

    if (input == NULL) {
        perror("Error opening file");
        exit(ENOENT);
    }

    while ((parenthesis = fgetc(input)) != EOF) {
        if (parenthesis == '(') {
            floor += 1;
        } else {
            floor -= 1;
        }
    }
    printf("Santa is on the %i floor", floor);
}