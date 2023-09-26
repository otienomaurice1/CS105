/***********************************************
* The setup() is used to test your code. 
* Do NOT change this function.
************************************************/
void setup() {
  boolean[][] values = {{false, false},{true, false},{false, true},{true, true}};
  boolean[] expected = {true, false, true, true};
  boolean finalSol = true;
  for (int i=0; i<values.length; i++) {
    if (sleepIn(values[i][0],values[i][1])!=expected[i]) {
      println("Your solution is not correct: "
        +sleepIn(values[i][0],values[i][1])+" expected to be "+expected[i]);
      finalSol = false;
    }
  }
  if(finalSol)
    println("Your solution is correct!");
}

/***********************************************
* Implement the function sleepIn():
* The parameter weekday is true if it is a weekday, 
* and the parameter vacation is true if we are on vacation. 
* We sleep in if it is not a weekday or we're on vacation. 
* Return true if we sleep in.
************************************************/
boolean sleepIn(boolean weekday, boolean vacation) {
   boolean sleep_in = true;
  
 if (weekday && !vacation){
   sleep_in = false;
 }
 else if ( vacation && !weekday){
 sleep_in = true;}
  
 
 return sleep_in;
}
