PImage [] background_images;


//this method provides the default set up of the screen 
void setup() {
 
  //declare the window size
  size(1000, 1000);
 
  //declare the window background
  background(0);
 
  //declare variable for the number of panes needed
  //this will determine the number of colums and rows per page
  int number_of_panes = 4;
  
  //declare variable to hold number of colums and initialize it
  int number_of_columns; 
  number_of_columns = 0;
 
  //declare variable to hold number of rows and initialize it
  int number_of_rows; 
  number_of_rows = 2;
  
  // declare variables to determine the pane's x and y positions and initialize them 
  float paneX_position = 0;
  float paneY_position = 0;
 
  //declare variables for width and height of panes
  int widthOfPanes;
  int heightOfPanes;
 
  //determine the number of colums and rows
  if (number_of_panes < number_of_rows) {
    number_of_columns =1;
    number_of_rows = number_of_panes;
  } else {
    number_of_columns += 1; 
    while ( number_of_panes> number_of_rows) {
      number_of_columns++;
      number_of_panes-=number_of_rows;
    }
  }

  //determine the width and height of panes
  widthOfPanes = width/number_of_rows;
  heightOfPanes = height/number_of_columns;
  //draw the panes 
  for (int i = 0; i < number_of_columns; i++) {

    for (int j = 0; j < number_of_rows; j++) {

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
public int which_Pane() {
  return 1;
}


// this method checks which half of the pane the mouse is at
//it returns true if the mouse is on the left of the pane 
//returns false if the mouse is  on the right of the pane
public boolean which_half () {
  boolean leftHalf =true;
  return leftHalf;
}

//this method loads the images displayed
//provides the background image to be dispayed in a certain pane

public void display(PImage[] backgroundImage) {
}
