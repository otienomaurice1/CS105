/***********************************************
 * The setup() is used to test your code. 
 * Do NOT change this function.
 ************************************************/
void setup() {
  int[][] values = {{13, 20, 10}, {20, 19, 10}, {20, 10, 13}, 
    {1, 20, 12}, {19, 20, 12}, {12, 20, 19}, {12, 9, 20}, {12, 18, 20}, 
    {14, 2, 20}, {4, 2, 20}, {11, 22, 22}};
  boolean[] expected = {true, true, true, false, true, true, 
    false, true, true, false, false};
  boolean finalSol = true;
  for (int i=0; i<values.length; i++) {
    if (hasTeen(values[i][0], values[i][1], values[i][2])!=expected[i]) {
      println("Your solution is not correct: "
        +hasTeen(values[i][0], values[i][1], values[i][2])
        +" expected to be "+expected[i]);
      finalSol = false;
    }
  }
  if (finalSol)
    println("Your solution is correct!");
}

/***********************************************
 * Implement the function hasTeen():
 * A number is "teen" if it is in the range  
 * 13..19 inclusive. Given 3 int values, return true 
 * if 1 or more of them are teen.
 ************************************************/
boolean hasTeen(int a, int b, int c) {
  if ((13 <= a )&&(a <=19)  || (13 <= b )&&(b <=19) || (13 <= c )&&(c <=19) ) {
    return true;
  } else { 
    return false;
  }
}
