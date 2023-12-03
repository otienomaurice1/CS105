void setup(){
  //declare the window size
  size(1000,1000);
  //declare the window background
  background(0);
//declare variable for the number of panes needed
//this will determine the number of colums and rows per page
int number_of_panes = 21;
//declare variable to hold number of colums and initialize it
int number_of_columns; 
number_of_columns = 0;
//declare variable to hold number of rows and initialize it
int number_of_rows; 
number_of_rows = 3;
// declare variables to determine the pane's x and y positions and initialize them 
float paneX_position = 0;
float paneY_position = 0;
//declare variables for width and height of panes
int widthOfPanes;
int heightOfPanes;
//determine the number of colums and rows
if(number_of_panes < number_of_rows){
  number_of_columns =1;
  number_of_rows = number_of_panes;
}
else{
   number_of_columns += 1; 
  while( number_of_panes> number_of_rows){
  number_of_columns++;
  number_of_panes-=number_of_rows;
}  
}

//determine the width and height of panes
widthOfPanes = width/number_of_rows;
heightOfPanes = height/number_of_columns;
//draw the panes 
for(int i = 0;i < number_of_columns; i++){

for(int j = 0; j < number_of_rows;j++){

  //determine x and y positions of each pane
 paneX_position = j* widthOfPanes;
 paneY_position = i* heightOfPanes;
 //draw each pane
  rectMode(CORNER);
  rect(paneX_position,paneY_position,widthOfPanes,heightOfPanes);
 
}
}
}
