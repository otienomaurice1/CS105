
//-----------global variables---------------------------------
//declare an array of images to give the background of each tab
//each tab may share a background or may have a different background
//this background are stored in the baackground_images array
PImage [] background_images;

//declare variable for the number of panes needed
//this will determine the number of colums and rows per page
int number_of_panes = 12;

//declare variable to hold number of colums and initialize it
int number_of_columns = 3; 


//declare variable to hold number of rows and initialize it
int number_of_rows =0; 


//declare variables for width and height of panes
int widthOfPanes;
int heightOfPanes;
//
float pane[] [] = new float [12][2];

//-------------------------------------------------------------------
void setup () {
  //declare the window size
  size(1000, 1000);
  //declare the window background
  background(0);
  display1();
  fill(1);
  text(which_Pane(333.0, 750.0), 250, 210);
  //println(which_Pane());
}

//this method provides the default set up of the screen 
void display1() {
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
}

//controls the interactivity 
public void draw() {
}


// this method checks which pane the mouse is in
public int which_Pane(float x, float y) {
  // declare variables to determine the pane's x and y positions and initialize them 
  float paneX_position = 0;
  float paneY_position = 0;
  int k = 0;
  //----------------------------------------------------------------------
  for (int i = 0; i < number_of_rows; i++) {

    for (int j = 0; j < number_of_columns; j++) {

      //determine x and y positions of each pane
      paneX_position = j* widthOfPanes;
      paneY_position = i* heightOfPanes;
      if (k < 12) {
        pane[k] [0] = paneX_position;
        pane[k] [1] = paneY_position;
      }

      k++;
    }
  }
  for (int i = 0; i+1 < 12; i++) {
    print(x+","+y);
    print("\t");
    print(pane[i+1][0]+","+pane[i+1][1]);
    print("\t  ");
    print(pane[i][0]+","+pane[i][1]);
    print("\n");
    if ( (x< pane[i+1][0]&& x>= pane[i][0]) && (y < pane[i+3][1])) {
      return i;
    }
     else if (( x> pane[i+1][0]&& x>= pane[i][0]) && (y < pane[i+1][1]) ){
      return i;
    }
    else if (( x< pane[i+1][0]&& x>= pane[i][0]) && (y == pane[i][1]) ){
      return i;
    }
  }
  return 0;
}
// this method checks which half of the pane the mouse is at
//it returns true if the mouse is on the left of the pane 
//returns false if the mouse is  on the right of the pane
public boolean which_half() {
  //declare a boolean value that determines whether the mouse is on the left half of a particular pane
  //its true if it is on the left and false if on the right
  boolean leftHalf =true;
  return leftHalf;
}

//this method loads the images displayed
//provides the background image to be dispayed in a certain pane
public void display(PImage[] backgroundImage) {
  //declarea local variable to hold the string of selected image
  //this method uses the value returned from the which pane method
}
