/* this classs is the template for drawing the hardware engineer 
and determining his speech
//the hardware engineer will have a head, eyes and body
//the body, head and eyes can't be changed outside this class*/

public class hardwareEngineer extends Engineers_conversation_draft{
  //declare the fields for the x and y location of the hardware engineer
  int x;
  int y;
  //declare the default constructor 
  hardwareEngineer() {
  }

  //declare a secondary constructor
  //this constructor gets the x and y position of the hardware engineer  
  //depending on the pane in which we want to draw him
  hardwareEngineer(int x, int y) {
  }
  //declare the display method
  //this method displays the physical features of the engineer 
 
  public void display() {
  }
// this methd displays the text to be displayed when the mouse hovers over the hardware engineer
//it receives a string from the arrayWords method and displays it
// it laso tekes two parametrs x and y to determine the location of the text 
  public void speak( String engineer1_words, int x, int y) {
  }

  //the method arrayWords is the method that contains the hardcoded array of words to be spoken
  //this method contains  two local variables i.e speech and word
  //the speech variable contains the array of words
  //the word variable is the variable for the specific words the hardware engineer should speak
 //this method access the which_Pane() method in Engineer class
  public String arrayWords() {
   
    //declare an array of words to be spoken by the hardware engineer
    String [] speech = {" HEr", "Hers"};
    
    //declare variable to hold the specific word we want to access
    //we will get hte specific word we want to access by looping through the array
    //we wiill select a string depending on the vaalue returned by whichpane() method
    String word = " ";
    
    return word;
  }
    //this method will drwa the head of the hardware engineer
  //it receives two parameters, the x and y locations of the mouse
  // it uses these the x and y locations passed into it to determine where to draw the head
  private void head(int x, int y) {
  }
  //this method will draw the head of the hardware engineer
  // it uses these the x and y locations passed into it to determine where to draw the head
  private void eyes(int x, int y) {
  }
 //this method will draw the body of the hardware engineer
  //it receives two parameters, the x and y locations of the mouse
  // it uses these the x and y locations passed into it to determine where to draw the body
  private void body (int x, int y) {
  } 

  
}
