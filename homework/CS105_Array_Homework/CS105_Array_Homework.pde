void setup(){
int [] input1 = {5, 4, 3, 2, 1};
int [] input2 = {21, 18, 40, 52};
println(findMax(input1));  //Should ouput 5
println(findMax(input2));  //Should output 52
}

void draw(){
}
int findMax(int [] input){ // declare function header
  int largest = 0;         // declare and initialize a variable to store the value of largest
  for(int i = 0; i <= input.length-1;i++){ // iterate through the array
  if(input[i] >largest){// check if the current array element is larger than the largest value stored
  largest = input[i];} // if its larger update the value of largest to that element
  }
return largest; // return largest
}

//Put your code here...
//Write a function named "findMax" that finds the maximum value in an array
//Input:  An array of ints.
//Return: The largest value in that array.
