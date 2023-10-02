/*
Project STAR
Author:Otieno Maurice
---------------------------------------------------------------
Description: This program draws a star with grey fill and white stroke
             The  star function takes five parameters
             the x coordinate  of its center and y coordinates of its center - this are made to move with the mouse
             the inner radius of the star 
             the outer radius of the star
             the number of points in each star
            *trig functions cosine and sine are used to determine the radii
--------------------------------------------------------------
Contact:otienom@lafayette.edu
*/


int fillcolor = 100;                   // declare and initialize initial fill color
int strokecolor = 255;               // declare and initialize initial stroke color
int transparency = 200;                // declare and initialize transparency
float widthOfMandala = width/2;          // declare and initialize the diameter of the star
int  numberOfPoints= 8;              // number of points in each star of the mandala


void setup() {
  size(700, 700);}
  
 void  draw(){
  background(2);
  float outer_radius = widthOfMandala/2;               // outermost radius of the star
  float inner_radius = outer_radius *0.7;           // innermost radius of the star 
  star(mouseX,mouseY, inner_radius,outer_radius,numberOfPoints);
}

void star(float x, float y, float inR, float outR, int nPoint) { // star function header

  float rotateAngle = (2*PI)/nPoint;            // declare and initialize the angle for which you want to locate upper vertices
  float midAngle = rotateAngle/2;               //declare and initialize the offset angle for which you want to locate lower vertices

  beginShape();
  for (float currentAngle = 0; currentAngle <= (2*PI); currentAngle += rotateAngle) { // declare the current angle 
    float xpoint1 = x+ cos(currentAngle)*outR;            // x coordinate of first vertex
    float ypoint1 = y +sin(currentAngle)*outR;            // x coordinate of first vertex
    float xpoint2 = x+ cos(midAngle+currentAngle)*inR;    // x coordinate of second vertex
    float ypoint2 = y+sin (midAngle+currentAngle)*inR;    // y coordinate of second vertex


    fill(fillcolor, transparency);   // set the color 
    stroke(strokecolor);

    // draw  an edge of the star
    vertex(xpoint1, ypoint1);
    vertex(xpoint2, ypoint2);
  }
  endShape();
}
