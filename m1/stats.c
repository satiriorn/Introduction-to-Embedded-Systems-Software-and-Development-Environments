/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material.
 *
 *****************************************************************************/
 /**
  * @file stats.c
  * @brief The implementation file of the c1m1 assignment
  *
  * This file includes all the required functions implementations in the c1m1 assignment
  *
  * @author Denys Astapieiev
  * @date 22.08.2022
  *
  */



#include <stdio.h>
#include<string.h>
#include "stats.h"

  /* Size of the Data Set */
#define SIZE (40)

void main() {

    unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
                                114, 88,   45,  76, 123,  87,  25,  23,
                                200, 122, 150, 90,   92,  87, 177, 244,
                                201,   6,  12,  60,   8,   2,   5,  67,
                                  7,  87, 250, 230,  99,   3, 100,  90 };

    /* Statistics and Printing Functions Go Here */
    printf("Array before sorting: \n");
    print_array(&test, SIZE);
    print_statistics(find_minimum(&test, SIZE), find_maximum(&test, SIZE), find_mean(&test, SIZE), find_median(&test, SIZE));
    sort_array(&test, SIZE);
    printf("Array after sorting: \n");
    print_array(&test, SIZE);
}

void print_statistics(unsigned char minimum, unsigned char maximum, float mean, unsigned char median) {
    printf("The minimum is %d \nThe maximum is %d \nThe mean is %f \nThe median is %d \n", minimum, maximum, mean, median);
}


void print_array(unsigned char* array, unsigned int counter) {
    for (int i = 0; i < counter; i++) {
        printf("%d,", *(array + i));
    }
    printf("\n");
}

unsigned char find_median(unsigned char* array, unsigned int counter) {
    return array[(counter / 2) - 1];
}

float find_mean(unsigned char* array, unsigned int counter) {
    unsigned int accumulator = 0;
    for (int i = 0; i < counter; i++) {
        accumulator = accumulator + array[i];
    }
    printf("acc = %d \n", accumulator);
    return accumulator / ((float)counter);
}

unsigned char find_maximum(unsigned char* array, unsigned int counter) {
    unsigned char maximum = *array; 
    for (int i = 1; i < counter; i++) { 
        if (array[i] > maximum) {
            maximum = array[i];
        }
    }
    return maximum;
}

unsigned char find_minimum(unsigned char* array, unsigned int counter) {
    unsigned char minimum = *array;
    for (int i = 1; i < counter; i++) { 
        if (array[i] < minimum) {
            minimum = array[i];
        }
    }
    return minimum;
}

void sort_array(unsigned char array[], unsigned int counter) {
    unsigned char temp;
    for (int i= 0; i < counter; i++) {
        for (int j = 0; j < counter; j++) {
            if (array[i] > array[j]){
                temp = array[i];
                array[i] = array[j];
                array[j] = temp;
            }
        }
    }
}