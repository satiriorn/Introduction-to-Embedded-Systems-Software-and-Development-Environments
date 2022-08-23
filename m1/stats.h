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
  * @file stats.h
  * @brief Definitions and macros required for the c1m1 assignment
  *
  *
  * @author Denys Astapieiev
  * @date 22/08/2022
  *
  */
#ifndef __STATS_H__
#define __STATS_H__

  /**
   * @brief Prints the statistics of a array
   *
   * Show all data of array
   * which are: minimum, maximum, mean and median, and print those
   * values on the screen
   *
   * @param minimum The minimum number of array
   * @param maximum The maximum number of array
   * @param mean The mean of array
   * @param median The median of array
   *
   * @return void
   */
void print_statistics(unsigned char minimum, unsigned char maximum, float mean, unsigned char median);


/**
 * @brief Prints the contents of a given array
 *
 * This function takes the given array and prints it to the
 * screen.
 *
 * @param array The first element of the array to be printed on the screen
 *
 * @return void
 */
void print_array(unsigned char* array, unsigned int counter);


/**
 * @brief Finds the median of array
 *
 * This function takes array and finds median
 *
 * @param array The first element of the array
 *
 * @return median The median value of array.
 */
unsigned char find_median(unsigned char* array, unsigned int counter);

/**
 * @brief Finds the mean of the given array
 *
 * This function takes the array and finds mean.
 *
 * @param array The first element of the array to be processed
 *
 * @return mean The mean value of array.
 */
float find_mean(unsigned char* array, unsigned int counter);

/**
 * @brief Finds the maximum of array
 *
 * This function takes array and finds maximum.
 *
 * @param array The first element of the array to be processed
 *
 * @return maximum The maximum value of array.
 */
unsigned char find_maximum(unsigned char* array, unsigned int counter);

/**
 * @brief Finds the minimum of the given array
 *
 * This function takes array and finds minimum.
 * 
 * @param array The first element of the array to be processed
 *
 * @return minimum The minimum value of array.
 */
unsigned char find_minimum(unsigned char* array, unsigned int counter);

/**
 * @brief Sorts the given array from the largest to smallest
 *
 * This function takes array and its length, sorts
 * the array from the largest to smallest using bubble sort and returns the
 * sorted array.
 *
 * @param array The first element of the array to be processed
 *
 * @return void
 */
void sort_array(unsigned char* array, unsigned int counter);

#endif /* __STATS_H__ */