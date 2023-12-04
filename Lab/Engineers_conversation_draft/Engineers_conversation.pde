/ declare variables to determine the pane's x and y positions and initialize them 
  float paneX_position ;
  float paneY_position ;
 
  //declare variables for width and height of panes
  int widthOfPanes;
  int heightOfPanes;
 
  //this section will use if and while statements to determine the number of colums and rows
  //the number of rows will depend on the number of panes required and the number of columns required
  // we first fill an entire row with panes before moving to the next row

/* code for determining the number of rows and colums goes here
*/


//this section will use if and for statements to draw the panes
  //determine the width and height of panes
  // use the values of the number of rows and colums to determine the height and width of each pane
  //Every pane should be the same size.The panes should also depend on the size of the window
  //the sizes will be determined by dividing the width by number of columns and the height by number of rows
  //use a for loop to loop through every row and column do draw rectangles that represent the panes
  //the mode of drawing rectangles will be corner mode
  // use the values of the height and width of panes to determine the x and y position of each position
  // this will be done by multiplying the current index of the row and column by the width and height 
  //of panes respectively
  
  /* code for drawing the panes goes here
*/

 
}

//controls the interactivity 
public void draw() {
}

//This method displays the software and hardware engineers when called
//it uses the value of the whichhalf and whichpane mthods to determine what to display
public void display(){}

// this method checks which pane the mouse is in
//it returns an integer value representing the current pane the mouse is at
//it takes in the x and y positions of the mouse
//it use the mouse's x and y coordinates to determine the current pane
public int which_Pane(int mousex, int mousey) { 
  return 1;
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
public PImage display(PImage[] backgroundImage) {
  PImage backgroundimage = new PImage();
  //declare local variable to hold the string of selected image
  //this method uses the value returned from the which pane method
  return backgroundimage;
}
 //the default speak method
  //this method displays text on the screen depending on the pane we are at
  // it has the x and y parameters to determine the position to display the speech
  public void speak(int x, int y){
  //any engineer who speaks may say these words
  String words = "Hey! I am an Engineer";
  }

