/***********************************************
* The setup() is used to test your code. 
* Do NOT change this function.
************************************************/
void setup() {
  int[] values = {93, 90, 89, 110, 111, 121, -101, -209, 190, 209, 
    0, 5, -50, 191, 189, 200, 210, 211, 290};
  boolean[] expected = {true, true, false, true, false, false, false, false, 
    true, true, false, false, false, true, false, true, true, false, false};
  boolean finalSol = true;
  for (int i=0; i<values.length; i++) {
    if (nearHundred(values[i])!=expected[i]) {
      println("Your solution is not correct: "
        +nearHundred(values[i])+" expected to be "+expected[i]);
      finalSol = false;
    }
  }
  if(finalSol)
  println("Your solution is correct!");
}

/***********************************************
* Implement the function nearHundred():
* Given an int n, return true   
* if it is within 10 of 100 or 200.
************************************************/
boolean nearHundred(int n) {


if (190 <= n && n <= 210){
  return true;}
if (90 <= n && n <= 110){
return true;
}
return false;
}
