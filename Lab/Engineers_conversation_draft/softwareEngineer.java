/* this classs is the template for drawing the software engineer 
and determining his speech
//the hardware engineer will have a head, eyes and body
//the body, head and eyes can't be changed outside this class*/


public class softwareEngineer extends Engineers_conversation_draft{

  //declare the fields for the x and y location of the software engineer
  int x;
  int y;
  //declare the default constructor 
  softwareEngineer( ){ x= 0;
  y =0;
  }

  //declare a seconadry constructor
  //this constructor gets the x and y position of the software engineer  
  //depending on the pane in which we want to draw him
  softwareEngineer(int x, int y) {
  }
  //declare the display method
  //this method displays the physical features of the software engineer 
  public void display() {
  }
  // this methd displays the text to be displayed when the mouse hovers over the software engineer
  //it receives a string from the arrayWords method and displays it
  public void speak( String engineer1_words) {
  }

  //the method arrayWords is the method that contains the hardcoded array of words to be spoken
  //this method contains  two local variables i.e speech and word
  //the speech variable contains the array of words
  //the word variable is the variable for the specific words the software engineer should speak
  //this method access the which_Pane() method in Engineer class
  public String arrayWords() {

    //declare an array of words to be spoken by the software engineer
    String [] speech = {" HEr", "Hers"};

    //declare variable to hold the specific word we want to access
    //we will get hte specific word we want to access by looping through the array
    //we wiill select a string depending on the vaalue returned by whichpane() method
    String word = " ";

    return word;
  }
  //this method will drwa the head of the software engineer
  //it receives two parameters, the x and y locations of the mouse
  // it uses these the x and y locations passed into it to determine where to draw the head
  private void head(int x, int y) {
  }
  //this method will draw the head of the software engineer
  // it uses these the x and y locations passed into it to determine where to draw the head
  private void eyes(int x, int y) {
  }
 //this method will draw the body of the software engineer
  //it receives two parameters, the x and y locations of the mouse
  // it uses these the x and y locations passed into it to determine where to draw the body
  private void body (int x, int y) {
  } 

  
}
