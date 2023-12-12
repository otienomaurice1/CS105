import processing.core.*;
public class hardwareEngineer extends Engineers_conversation{
  //declare the fields for the x and y location of the hardware engineer
  int x;
  int y;
  //declare the default constructor 
  hardwareEngineer(int x, int y, PApplet p) {
   this.p =p;
    this.x = x;
    this.y = y;
  }

  //declare the display method
  //this method displays the physical features of the engineer 
  public void display() {
   p.stroke(0,0,200);
   p.strokeWeight(2);
   p. rect(x,y,100,20);
  }
// this methd displays the text to be displayed when the mouse hovers over the hardware engineer
//it receives a string from the arrayWords method and displays it
  public void speak( String engineer1_words) {
  }

  //the method arrayWords is the method that contains the hardcoded array of words to be spoken
  //this method contains  two local variables i.e speech and word
  //the speech variable contains the array of words
  //the word variable is the variable for the specific words the hardware engineer should speak
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
  
}
