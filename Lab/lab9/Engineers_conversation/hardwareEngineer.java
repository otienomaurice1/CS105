/* this clas draws the hardtware engineer
The hardware engineer will have a black mask, a head, a body and eyes
The hardware engineer will be able to speak
He should also be displayed
The background for the software engineer will be yellow stars

The display method should display the engineer while the speak method should make him speak
The display method calls four functions named eye, backgroundl,head and body.
Body draws the body of the hardware engineer
eye draws the eyes of the hardware engineer
backgroundl sets the background of the hardware engineer
The spek method calls the arraywords method. It uses the value returned by array words to 
determine what to display to the screen.
Arraywords is a method that holds the speech of the hardware engineer

*/

import processing.core.*;
public class hardwareEngineer extends Engineers_conversation {

  //declare the fields for the x and y location of the hardware engineer
  float x;
  float y;
  //declare x and y offset value, this value will be used for several drawings
  int offsetx = 50;
  int offsety = 120;
  //declare the size of eyes and head of the hardware engineer
  int head_size = 70;
  int eye_size = 10;
  PApplet p ;
  //----------------------------------------------------------------------
  
  //----------------------------------------------------------------------
  //declare the default constructor 
  hardwareEngineer(float x, float y, PApplet p) {
    this.p =p;
    this.x = x;
    this.y = y;
  } 
 //----------------------------------------------------------------------
  
  //----------------------------------------------------------------------
  //declare the display method
  //this method displays the physical features of the engineer 
  public void display() {
    backgroundl();
    body();
    head();
    eyes();
  }
   //----------------------------------------------------------------------
  
  //----------------------------------------------------------------------
  // this methd displays the text to be displayed when the mouse hovers over the hardware engineer
  //it receives a string from the arrayWords method and displays it
  public void speak( int engineer1_words) {
    String s = arrayWords(engineer1_words);
    p.fill(255);
    p.ellipseMode(CORNER);
    p.ellipse(x+40, y+10, 207, 80);
    p.ellipseMode(CENTER);
    p.fill(25, 0, 255);
    p.textSize(12);
    //display the string
    p.text( s, x+50, y+45);
    p.fill(255);
  }
  //-------------------------------------------------------------------------------------

  //-------------------------------------------------------------------------------------
  //the method arrayWords is the method that contains the hardcoded array of words to be spoken
  //this method contains  two local variables i.e speech and word
  //the speech variable contains the array of words
  //the word variable is the variable for the specific words the hardware engineer should speak
  public String arrayWords(int n) {

    //declare an array of words to be spoken by the software engineer
    String [] speech = {
      "Hi,I am Maurice, but alot of\n    people call me Mauricio", 
      "So John, what do you \n   do for a living?", 
      "Ooh nice! I am an hardware\n   engineer at AMD", 
      "Really, all you software\n  engineers are the same ", 
      "You all think of Google,Facebook,\n  Meta,Amazon and Netflix.", 
      "Who cares! Software engineering\n   sucks anyways!", 
      "Of course we are, you need \n  us to design you devices.", 
      " I guess writnig a program is\n  as easy as reading a novel.", 
      " Come on now,we make \n   good money too.", 
      "We just don't make a big \n   deal of it like you guys.", 
      "Same.So long as I am not stuck\n  only writing code for the\n           rest of my life.", 
      " By the way, AMD stands for \nAnalog Macro Devices", 
      " You should, we are more like\n  NVIDIA, I'm sure you resonate\n        with that", 
       " No problem bye!",
       "  "
    };

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
    p.fill(211, 186, 186);
    p. ellipse(x+offsetx, y+offsety, head_size-20, head_size);
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
    p.ellipse(x+offsetx-15, y+offsety-10, eye_size, eye_size/2);
    p.ellipse(x+offsetx+15, y+offsety-10, eye_size, eye_size/2);
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
    p.fill(39, 73, 95);
    // p.ellipseMode(CENTER);
    p.arc(x+offsetx, y+(offsety+80), offsety-25, offsety+10, PI, 2*PI);
    p.noFill();
  } 
  //----------------------------------------------------------------------------------------
  //this method draws the background of the hardware engineer
  void backgroundl() {
    p.fill(0);
    p.strokeWeight(12);
    p.stroke(1);
    p.rectMode(CORNER);
    //draw background rectangle
    p.rect(x+1, y+1, 250, 200);
    //generate random positions for drawing stars in backgrou
    for (int i =0; i<500; i++) {
      p.stroke(255, 25, 100);
      p.strokeWeight(2);
      p.point(x+p.random(0, 250), y+p.random(150));
      p.noFill();
      p.noStroke();
    }
  }
}
