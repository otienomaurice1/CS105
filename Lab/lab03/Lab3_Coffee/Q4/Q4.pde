/***********************************************
* The setup() is used to test your code. 
* Do NOT change this function.
************************************************/
void setup() {
  boolean[] value1 = {true,true,false,true,false,false,true,false,true,false};
  int[] value2={6,7,6,21,21,20,23,23,20,12};
boolean[] expected = {true,false,false,true,false,false,true,false,false,false};
  boolean finalSol = true;
  for (int i=0; i<value1.length; i++) {
    if (parrotTrouble(value1[i],value2[i])!=expected[i]) {
      println("Your solution is not correct: "
        +parrotTrouble(value1[i],value2[i])
        +" expected to be "+expected[i]);
      finalSol = false;
    }
  }
  if(finalSol)
    println("Your solution is correct!");
}

/***********************************************
* Implement the function parrotTrouble():
* We have a loud talking parrot. 
* The "hour" parameter is the current hour time 
* in the range 0..23. 
* We are in trouble if the parrot is talking 
* and the hour is before 7 or after 20. 
* Return true if we are in trouble.
************************************************/
boolean parrotTrouble(boolean talking, int hour) {
//Reorder the following 6 lines of code to solve the problem. You don't need to edit the lines, just put them in the right order.
if(talking){
if(hour < 7 || hour > 20){
  return true;
}
}
return false;
}
