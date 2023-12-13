
//-----------global variables-----------------------------------------------------
//declare an array of images to give the background of each tab
//each tab may share a background or may have a different background
//this background are stored in the baackground_images array
PImage [] background_images;

int x;
int y;

//declare variable for the number of panes needed
//this will determine the number of colums and rows per page
int number_of_panes = 13;
int l = 13;

//declare variable to hold number of colums and initialize it
int number_of_columns = 3; 


//declare variable to hold number of rows and initialize it
int number_of_rows =0; 


//declare variables for width and height of panes
int widthOfPanes;
int heightOfPanes;
int half_widthOfPanes;
//
float pane[] [] = new float [number_of_panes][2];

//-------------
PApplet p ;
softwareEngineer [] soft = new softwareEngineer [number_of_panes ];
hardwareEngineer [] hard = new hardwareEngineer [number_of_panes ];
//-----------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------
void setup () {
  //------------------------------------
  size(1500, 1000);
  //declare the window background
  background(0);
  //----
  //which_Pane(mouseX, mouseY);
  display();
  draw();
  //---
}
//---------------------------------------------------------------------------------

//----------------------------------------------------------------------------------

//controls the interactivity 
public void draw() {
  frameRate(1);
}

//--------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------
//this method provides the default set up of the screen 
void display() {
  display1();
  //---------
  for (int i = 0; i < soft.length; i++) {
    soft[i]  =  new softwareEngineer( pane[i][0], pane[i][1], this);
    hard[i]   = new hardwareEngineer( pane[i][0]+half_widthOfPanes, pane[i][1], this);
  } 
  for (int i = 0; i < soft.length; i++) {
    soft[i].display();
    soft[i].speak(4);
    hard[i].display();
    hard[i].speak(2);
  }
}
//-------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------
// this method checks which pane the mouse is in
public int which_Pane(float x, float y) {

  for (int i = 0; i < soft.length; i++) {
    if (i+3 < number_of_panes ) {
      if ( (x< pane[i+1][0]&& x>= pane[i][0]) && (y < pane[i+3][1])) {
        println(i); 
        return i;
      }
    } else if (( x> pane[i+1][0]&& x>= pane[i][0]) && (y < pane[i+1][1]) ) {
      println(i);  
      return i;
    } else if (( x< pane[i+1][0]&& x>= pane[i][0]) && (y < pane[i][1]) ) {
      println(i); 
      return i;
    }
  }


  return -1;
}
//-----------------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------------
// this method checks which half of the pane the mouse is at
//it returns true if the mouse is on the left of the pane 
//returns false if the mouse is  on the right of the pane
public boolean which_half() {
  //declare a boolean value that determines whether the mouse is on the left half of a particular pane
  //its true if it is on the left and false if on the right
  boolean leftHalf =true;
  return leftHalf;
}
//-------------------------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------------------
//this method loads the images displayed
//provides the background image to be dispayed in a certain pane
public void display1(/*PImage[] backgroundImage, int k*/) {

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
  //----

  //draw the panes 
  for (int i = 0; i < number_of_rows; i++) {

    for (int j = 0; j < number_of_columns; j++) {

      //determine x and y positions of each pane
      paneX_position = j* widthOfPanes;
      paneY_position = i* heightOfPanes;
      //draw each pane
      rectMode(CORNER);
      rect(paneX_position, paneY_position, widthOfPanes, heightOfPanes);
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
  //---
  //declarea local variable to hold the string of selected image
  //this method uses the value returned from the which pane method
}
//-----------------------------------------------------------------------------------------------------
void speak() {
}
