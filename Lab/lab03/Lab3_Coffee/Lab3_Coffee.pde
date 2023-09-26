/*
  
 Author: Otieno Maurice
 CS 105. Lab 3
 Description: this is the sketch of a cup of coffee whose direction is determined by the mouse's position 
 */

void setup() {
  size(500, 500); //set the size of the canvas to 100
}
void draw() {
  //Grey background
  background(80);
  drawCup();
}

void drawCup() {

  //Draw mug handlef
  fill(255);
  ellipse(mouseX+width/6, mouseY+height/9, width/7, height/7);

  //Match fill to background color
  fill(80);
  //Draw hole in handle
  ellipse(mouseX+width/6, mouseY+height/9, width/8, height/10);
  //Reset fill back to white
  fill(255);

  //Draw bottom of mug
  ellipse(mouseX+(width/12), mouseY+height/5, width/6, height/9);
  //Draw mug rectangle
  rectMode(CORNER);
  rect(mouseX, mouseY, width/6, height/5);

  //Cover bottom line with a white rect
  noStroke();
  rect(mouseX, mouseY+ height/5, width/6, height/200);
  stroke(0);

  //Top of mug
  ellipse(mouseX+(width/12), mouseY, width/6, height/8);
  //Coffee in the mug
  fill(170, 70, 0);
  ellipse(mouseX+(width/12), mouseY, width/7, height/9);
}
