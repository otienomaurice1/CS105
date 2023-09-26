/***********************************************
* The setup() is used to test your code. 
* Do NOT change this function.
************************************************/
void setup() {
  int[][] values = {{7, 17}, {6, 17}, {3, 113}, {114, 113},
    {114, 4}, {10, 0}, {11, 0}};
  boolean[] expected = {true, false, true, false, true, true, false};
  boolean finalSol = true;
  for (int i=0; i<values.length; i++) {
    if (lastDigit(values[i][0], values[i][1])!=expected[i]) {
      println("Your solution is not correct: "
        +lastDigit(values[i][0], values[i][1])
        +" expected to be "+expected[i]);
      finalSol = false;
    }
  }
  if(finalSol)
    println("Your solution is correct!");
}

/***********************************************
* Implement the function lastDigit():
* Given two non-negative int values, return true 
* if they have the same last digit, such as with 27 and 57. 
************************************************/
boolean lastDigit(int a, int b) {
  int c = a%10 ; int d = b%10 ; 
  if( c == d){
    return true;}
    else{ return false;}
  
  }
  
