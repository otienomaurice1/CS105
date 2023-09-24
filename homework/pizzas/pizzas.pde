
/* 
Program: Pizza
Author: Otieno Maurice
Description: This code contains two functions pizza and pizza test
             pizza takes in two parameters pizzaSize and PizzaNumber
             it then uses the parameters to determine if  the pizza will be delivered cold or  hot
             pizza returns 1 when hot and 0 when cold
             When I order  a large pizza and 5 or less pizzas are ordered before me  wil get the pizza delivered hot
             When I order  a small pizza and 2 or less pizzas are ordered before me  will get the pizza delivered hot
            pizzaTest passes all possible arguments to pizza
Date: 09/24/2023
Contact: otienom@lafayette.edu
Lab04
*/

void setup() {
  pizzaTest();   // call the pizzaTest function
}

int pizza (char pizzaSize, int pizzaNumber) {   // declare the pizza function header

  if (pizzaSize == 'l') {    // check pizza size
    if (pizzaNumber <= 5) {   // check number of pizzas orderd before me
      return 1;
    } else {
      return 0;
    }
  } else if (pizzaSize == 's') {     // check pizza size
    if ( pizzaNumber  <= 2) {         // check number of pizzas orderd before me
      return 1;
    } else {
      return 0;
    }
  }
  return 0;   // default return statement
}


void pizzaTest() {
   //case1
char test1size = 'l';  int test1Number = 10;  int test1Expected = 0;  // when it is large and 10 pizzas are ordered before me
  //case2
  char test2size = 'l';   int test2Number = 5;  int test2Expected = 1; // when it is large and 5 pizzas are ordered before me
 // case 3 
  char test3size = 'l';   int test3Number = 2;  int test3Expected = 1; // when it is large and 2 pizzas are ordered before me
// case4  
  char test4size = 's';   int test4Number = 2;  int test4Expected = 1; // when it is small and 2 pizzas are ordered before me
 // case5 
  char test5size = 's';   int test5Number = 1;  int test5Expected = 1;  // when it is small and 1 pizza is ordered before me
  // casee 6
  char test6size = 's';   int test6Number = 5;  int test6Expected = 0;  // when it is small and 5 pizzas are ordered before meed before me



  // test1
  if (pizza(test1size, test1Number) == test1Expected) {
    println("Test1 passed");
  } else {
    println("Test1 failed");
  }

  // test2
  if (pizza( test2size, test2Number) == test2Expected) {
    println("Test 2 passed");
  } else {
    println("Test 2 failed");
  }

  //test3
  if (pizza( test3size, test3Number) == test3Expected) {
    println("Test 3 passed");
  } else {
    println("Test 3 failed");
  }

  // test4
  if (pizza( test4size, test4Number) == test4Expected) {
    println("Test 4 passed");
  } else {
    println("Test 4 failed");
  }

  //  test5
  if (pizza( test5size, test5Number) == test5Expected) {
    println("Test 5 passed");
  } else {
    println("Test 5 failed");
  }

  //test6
  if (pizza( test6size, test6Number) == test6Expected) {
    println("Test 6 passed");
  } else {
    println("Test 6 failed");
  }
}
