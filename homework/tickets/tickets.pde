/*
Program: tickets
Author: Otieno Maurice 
 Description: This code contains the tickets function and its test function ticketsTest
              tickets receives the number of friends as a parameter and checks if it is less than zero. 
              if less than zero it prints out an error message and if not it returns the number of tickets that should be bought
 Lab04
 */



void setup() {
  ticketsTest();
}
int tickets ( int numOfFriends) {    // declare the function tickets and have it take the number of friends as a parameter
  if (numOfFriends <= 0) {          // check if number of friends is a negative number
    println("Illegal number of tickets! Number of friends can't be negative.\nPlease Try again"); //if number of friends is negative print an error message and return -1
    return -1;
  } else {
    return numOfFriends;
  }
}
void ticketsTest() {
  int test1 = -20, test2 = 20;                 // declare and initialize test variables  test1 and test2 for ticket numbers
  int test1Expected = -1, test2Expected = 20; // declare and initialize expected variables 
  if (tickets(test1) == test1Expected) { // check if the reeturn values of the ticket function are similar to the expected values
    println("  Test 1 passed:  The tickets function is working properly");
  } else {
    println( " Test 1 failed: The tickets function is not working properly");
  }
   if (tickets(test2) == test2Expected ) { // check if the return values of the ticket function are similar to the expected values
    println("  Test 2 passed: The tickets function is working properly");
  } else {
    println("  Test 2 failed: The tickets function is not working properly");
  }
}
