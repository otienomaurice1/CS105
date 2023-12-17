/* this clas draws the software engineer
The software  engineer will have a red mask, a head, a body and eyes
The software  engineer will be able to speak
He should also be displayed
The background for the software engineer will be yellow stars

The display method should display the engineer while the speak method should make him speak
The display method calls four functions named eye, backgroundl,head and body.
Body draws the body of the software engineer
eye draws the eyes of the software  engineer
backgroundl sets the background of the software engineer
The spek method calls the arraywords method. It uses the value returned by array words to 
determine what to display to the screen.
Arraywords is a method that holds the speech of the hardware engineer

 //*/import processing.core.*;

public class softwareEngineer extends Engineers_conversation {


  //declare the fields for the x and y location of the hardware engineer
  float x;
  float y;
  int offsetx = 50;
  int offsety = 120;
  int head_size = 70;
  int eye_size = 10;
  int heightofpanes;
  PApplet p ;
  //--------------------------------------------------------------

  //--------------------------------------------------------------
  softwareEngineer(int heightofpanes) {
    // this.heightofpanes = heightofpanes; 
    //println(heightofpanes);
  }
  //--------------------------------------------------------------

  //--------------------------------------------------------------
  //declare the default constructor 
  softwareEngineer(float x, float y, PApplet p) {
    this.p =p;
    this.x = x;
    this.y = y;
    //println(heightofpanes);
  }
  //--------------------------------------------------------------

  //--------------------------------------------------------------
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
    p.ellipse(x+40, y+10, 205, 80);
    p.ellipseMode(CENTER);
    p.fill(255, 0, 0);
    p.textSize(12);
    p.text( s, x+50, y+45);
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
    String [] speech = {
      " Hi,my name is John\n  what about you?", 
      "I'm gonna stick with mauricio,\n  its alot more fun", 
      "I am a software engineer at \n  at Google.", 
      "AMD??? no offense but i don't \n   seem to recognise it", 
      "   How so?", 
      "Unapologetically, yeah,.They \n   are the largest companies",
      "Oh shut up! all you hardware\n engineers think you're smatter\n            than us",
      "you need us,to write your\n programs",
      "Haha!, you think, How much\n  do you even earn ? Pennies!",
      "Ahaa, I thought so. Then \nhow come i don't hear people \n             saying that?", 
      "Anyway, I would still chose \nsoftware engineering in my\n             next life", 
      "  Good for you. I guess we all \n  need each other Mauricio ", 
      " I learnt something new today,\n  i'll be sure to look it up", 
       " Yeah I do. I am running a \n little late, i'll talk to you later",
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
    p.fill(95, 163, 150);
    p. ellipse(x+offsetx, y+offsety, head_size-20, head_size);

    //draw the mouth
    p.fill(255);
    p.ellipseMode(CENTER);
    p.ellipse(x+offsetx, y+offsety+10, eye_size+10, 7);
    p.noFill();

    //draw software engineers mask
    p.strokeWeight(2);
    p.fill(255, 0, 0);
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
    p.fill(106, 93, 93);
    p.arc(x+offsetx, y+(offsety+80), offsety-25, offsety+10, PI, 2*PI);
    p.noFill();
  } 
  //----------------------------------------------------------------------------------------
  void backgroundl() {
    p.fill(0);
    p.stroke(0);
    p.rectMode(CORNER);
    p.rect(x, y, 250, 200);
    for (int i =0; i<500; i++) {
      p.stroke(255, 255, 0);
      p.point(x+p.random(0, 250), y+p.random(150));
    }
    p.noFill();
    p.noStroke();
  }
}
