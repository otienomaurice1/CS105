/* 
Project; Final project Engineers conversation
 Author: Otieno Maurice
 Contact:otienom@lafayette.edu
 --------------------------Project Description:-------------------------------------------------------
 This project is a comic the display the converstion between two engineers.
 One of the Engineers is a software engineer while the other is a hardware engineer.
 They are having a video call and therefore have different backgrounds at a particular time.
 The program is specifically designed to work with 13 to 15 panes but tte number of panes can 
 be changed by the number of panes variable. Several aspects of this comic depend on that variable.
 In this comic we use 14 panes. Each pane should have both the software engineer and hardware engineer 
 alternating in speech. The software engineer should display whatever he says in red 
 while the hardware engineer should display whatever he says in blue.
 When the mouse hovers over the hardware engineer, the hardware engineer should speak. Thi involves 
 words popping up in an ellipse in blue. At that time the software engineer should be silent. The reverse 
 should also be true. However, this was difficult to achieve.
 The program should end by the software engineer hanging up and disappearing.
 

 ---------------------------Design specifications:--------------------------------------------------------
 A canvas size of size(1500,1000) to display the full comic. Stick to that canvas size !!!!
 14 panes for the full comic. Though the number of panes is resetable to however number we want, the locations
 of the hardware and software engineer are statically defined. Their locations are not relative to the canvas size 
 and changing the canvas size or number of panes for this comic will likely change their positions and display
 a wrong representation of the comic
 All methods in the main sketch should be called in setup
 The draw method has been comented out.
 Implementation of interactivity became a challenge with draw.
 The number of panes and columns should be preset. Since one of the functions changes number of panes, there is
 a second varaible l that should always store the initial value of number of panes
 This design is based arrays. All objects, strings, and relative positions are stored in an array of one form 
 or the other.These are parallel arrays whose size depends on the number of panes.
 The order in which the functions in setup are called muist not change or the program will break
 The display method is overriden in the hard and software engineering classes
 hardware engineering and software engineering classes are subclasses of engineering conversation

 
 --------------------------Design implementation:------------------------------------------------------------ 
 The sketch uses a mthod named set_panes to set the size,of panes and the number of rows for the comic
 This method determines the number of rows and uses ti along with the number of columns to determine t
 the height of panes and width of panes. It then uses the wwidth and height of panes to determine
 the x and y positions of each pane. Finally, it stores these positions in an a global array named pane
 
 The next method named create_engineers creates an arrays of soft and hardware engineering objects
 This method accesses the pane array using a for loop and passes the x and y locations in the pane array 
 to the constructors of the respective classes as parameters. This will be used to determine where to display
 which engineer
 
 The next method named display should display the soft and hardware enginers at their respective locations on different panes
 This method accesses calls each soft and hardware enginering objects's display method using a for loop.
 It also calls the display_panes method.
 
 The display panes method draws the boundaries of each pane as white rectangles using a for loop. It indexes the pane
 array to determine the x and y locations to draw these rectangles.
 
 Next we have the speak method that displays the speech of each hardware and software engineer. Like the display method,
 it uses a for loop to accesss each objects speak method. It also calls the default speak method
 
 The default_speak method is a method that displays the default text at the end of the program
 This occurs in the last pane
 
 Finally we have the draw mthod that is supposed to contol interactivity
 */
 
 
 
 
//----------------------------------------------------------------------------------------------------------
//global variables
//--------------------------------------------------------------------------------------------------------
//declare variable for the number of panes needed
//this will determine the number of colums and rows per page
int number_of_panes = 15;
int l = number_of_panes;

//declare variable to hold number of colums and initialize it
int number_of_columns = 3; 


//declare variable to hold number of rows and initialize it
int number_of_rows =0; 


//declare variables for width and height of panes
int widthOfPanes;
int heightOfPanes;
int half_widthOfPanes;

//This array was not included in the initial design but it was completely necessary
//that we store the x and y location of each pane in an array
//the size size of the array depends on the number of panes
//the first indesx represents the x location of a pane while the second index represents the y location of a pane
float pane[] [] = new float [number_of_panes][2];

//-------------
//create an array of soft and hardware enngineering objects
softwareEngineer [] soft = new softwareEngineer [number_of_panes ];
hardwareEngineer [] hard = new hardwareEngineer [number_of_panes ];
//-----------------------------------------------------------------------------------

//Functions

//-----------------------------------------------------------------------------------
void setup () {
  //set canvas size
  size(1500, 1000);
  //declare the window background
  background(0);
  set_panes();
  create_engineers();
  display();
  speak();
  // draw();
}
//---------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------
//this section will use if and for statements to determine the default settings for the number of rows and columns
//determine the width and height of panes
// use the values of the number of rows and colums to determine the height and width of each pane
//Every pane should be the same size.The panes should also depend on the size of the window
//the sizes will be determined by dividing the width by number of columns and the height by number of rows
//this section will use if and while statements to determine the number of colums and rows
//the number of rows will depend on the number of panes required and the number of columns required
// we first fill an entire row with panes before moving to the next row
// this will be done by multiplying the current index of the row and column by the width and height 
//of panes respectively
public void set_panes() {
  // declare variables to determine the pane's x and y positions and initialize them 
  float paneX_position = 0;
  float paneY_position = 0;

  //determine the number of colums and rows
  if (number_of_panes < number_of_rows) {
    number_of_rows = 1;
    number_of_columns = number_of_panes;
  } else {
    number_of_rows += 1; 
    while ( number_of_panes> number_of_columns) {
      number_of_rows++;
      number_of_panes-=number_of_columns;
    }
  }

  //determine the width and height of panes
  widthOfPanes = width/number_of_columns;
  heightOfPanes = height/number_of_rows;
  half_widthOfPanes = widthOfPanes/2;

  for (int i = 0; i < number_of_rows; i++) {

    for (int j = 0; j < number_of_columns; j++) {

      //determine x and y positions of each pane
      paneX_position = j* widthOfPanes;
      paneY_position = i* heightOfPanes;
    }
  }
  //----
  int k = 0;
  for (int i = 0; i < number_of_rows; i++) {

    for (int j = 0; j < number_of_columns; j++) {

      //determine x and y positions of each pane
      paneX_position = j* widthOfPanes;
      paneY_position = i* heightOfPanes;
      if (k < l) {
        pane[k] [0] = paneX_position;
        pane[k] [1] = paneY_position;
      }

      k++;
    }
  }
}
//-------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------
//this method creates an array of software engineering objects
void create_engineers() {
   //create a new object for each index of the objects array and pass in the x and y locations and  java Applet as parameters
  for (int i = 0; i < soft.length; i++) {
    soft[i]  =  new softwareEngineer( pane[i][0], pane[i][1], this);
    hard[i]   = new hardwareEngineer( pane[i][0]+half_widthOfPanes, pane[i][1], this);
  }
}
//------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------
void display() {
   //loop through each each object in the array and call its display method
  for (int i = 0; i < soft.length; i++) {
    soft[i].display();
    hard[i].display();
  }
  // display pane boundaries
  display_panes();
}
//-----------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------
//use a for loop to loop through every row and column do draw rectangles that represent the panes
//the mode of drawing rectangles will be corner mode
// index the parallel array pane determine the x and y position of each position

void display_panes() {
  for (int i = 0; i < soft.length; i++) {
    //draw each pane
    rectMode(CORNER);
    stroke(255);
    rect(pane[i][0], pane[i][1], widthOfPanes, heightOfPanes);
    noFill();
  }
}
//----------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------------------
void speak() {
  //loop through each each object in the array and call its speak method
  for (int i = 0; i < soft.length; i++) {
    if (i == (soft.length-1)) {
      default_speak();
    } else { 
      soft[i].speak(i);
      hard[i].speak(i);
    }
  }
}
//-------------------------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------------------
//the default speak method
//this method displays text on the screen depending on the pane we are at
// it has the x and y parameters to determine the position to display the speech
void default_speak() {
  fill(0);
  String s = "Software Engineer Hang's up";
  rectMode(CORNER);
  rect(pane[14][0], pane[14][1], widthOfPanes, heightOfPanes);
  fill(255);
  rect(pane[14][0]+40, pane[14][1]+20, 200, 50);
  fill(0, 234, 255);
  textSize(12);
  text( s, pane[14][0]+50, pane[14][1]+45);
  fill(255);
  noFill();
  hard[14].display();
}
//-------------------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------------
//controls the interactivity 
//the code inside this draw loop is supposed to control interactivity
//it should check the position of the mouses location and make the selected engineer speak
public void draw() {
  int i =0;
  while (i < (soft.length-1)) {
    if ((mouseX >= pane[i][0] && mouseX < pane[i+1][0]) && (mouseY < pane[i+1][1] && mouseY >= pane[i][1])) {
      soft[i].speak(i);
    } else if ((mouseX >=( pane[i][0]+half_widthOfPanes )&& mouseX< ( pane[i][0]+half_widthOfPanes)) && (mouseY < pane[i+1][1] && mouseY >= pane[i][1])) {
      hard[i].speak(i);
    }
  }
  i++;
}

//-----------------------------------------------------------------------------------
