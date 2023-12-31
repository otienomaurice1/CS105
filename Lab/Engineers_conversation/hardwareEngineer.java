import processing.core.*;
public class hardwareEngineer extends Engineers_conversation {
  
  //declare the fields for the x and y location of the hardware engineer
  float x;
  float y;
  int offsetx = 50;
  int offsety = 120;
  int head_size = 70;
  int eye_size = 10;
  PApplet p ;
  //declare the default constructor 
  hardwareEngineer(float x, float y, PApplet p) {
   this.p =p;
    this.x = x;
    this.y = y;
  } 

  //declare the display method
  //this method displays the physical features of the engineer 
  public void display() {
    backgroundl();
     body();
    head();
    eyes();
   
  }
// this methd displays the text to be displayed when the mouse hovers over the hardware engineer
//it receives a string from the arrayWords method and displays it
  public void speak( int engineer1_words) {
     String s = arrayWords(engineer1_words);
     p.fill(255);
     p.ellipseMode(CORNER);
     p.ellipse(x+40,y+20,200,70);
     p.ellipseMode(CENTER);
    p.fill(25,0,255);
    p.textSize(12);
   p.text( s,x+50,y+55);
   p.fill(255);
 
  }
//-------------------------------------------------------------------------------------

 //-------------------------------------------------------------------------------------
  //the method arrayWords is the method that contains the hardcoded array of words to be spoken
  //this method contains  two local variables i.e speech and word
  //the speech variable contains the array of words
  //the word variable is the variable for the specific words the hardware engineer should speak
 //this method access the which_Pane() method in Engineer class
  public String arrayWords(int n) {
   
    //declare an array of words to be spoken by the software engineer
    String [] speech = {" Hi, I am a software engineer", "Hers","Hi, I am a hardware engineer","herself","themselves"};
    
    //declare variable to hold the specific word we want to access
    //we will get hte specific word we want to access by looping through the array
    //we wiill select a string depending on the vaalue returned by whichpane() method
    String word = " ";
    word = speech[n];
    return word;
  }
 //-------------------------------------------------------------------------------------

  //-------------------------------------------------------------------------------------
  //this method will drwa the head of the software engineer
  //it receives two parameters, the x and y locations of the mouse
  // it uses these the x and y locations passed into it to determine where to draw the head
  private void head() {
   //draw the head
    p.stroke(0);
    p.strokeWeight(2);
    p.fill(211,186,186);
    p. ellipse(x+offsetx, y+offsety, head_size-20,head_size);
    //draw the mouth
    p.fill(255);
    p.ellipseMode(CENTER);
    p.ellipse(x+offsetx, y+offsety+10, eye_size+10, 7);
    p.noFill();
    //drw hardware engineers hat
    p.strokeWeight(2);
    p.fill(0);
    p. rect(x+30, y+offsety-20, head_size-30, 20);
    p.noFill();
   
  }
  //-------------------------------------------------------------------------------------

  //-------------------------------------------------------------------------------------
  //this method will draw the head of the software engineer
  // it uses these the x and y locations passed into it to determine where to draw the head
  private void eyes() {
    p.stroke(0);
    p.fill(0);
    p.strokeWeight(2);
    p. circle(x+offsetx-15, y+offsety-10, eye_size);
    p. circle(x+offsetx+15, y+offsety-10, eye_size);
    p.fill(255);
    p.ellipse(x+offsetx-15,y+offsety-10,eye_size,eye_size/2);
    p.ellipse(x+offsetx+15,y+offsety-10,eye_size,eye_size/2);
    p.noFill();
  }
  //-------------------------------------------------------------------------------------

  //-------------------------------------------------------------------------------------
  //this method will draw the body of the software engineer
  //it receives two parameters, the x and y locations of the mouse
  // it uses these the x and y locations passed into it to determine where to draw the body
  private void body () {
        p.stroke(0);
    p.strokeWeight(2);
    p.fill(39,73,95);
   // p.ellipseMode(CENTER);
    p.arc(x+offsetx, y+(offsety+80),offsety-25, offsety+10, PI,2*PI);
    p.noFill();
  } 
  //----------------------------------------------------------------------------------------
   void backgroundl(){
    p.fill(0);
    p.strokeWeight(12);
    p.stroke(1);
    p.rectMode(CORNER);
    p.rect(x+1,y+1,250,200);
    for(int i =0; i<500;i++){
    p.stroke(255,25,100);
    p.strokeWeight(2);
    p.point(x+p.random(0,250),y+p.random(150));
    p.noFill();
    p.noStroke();
  }
   }
}
