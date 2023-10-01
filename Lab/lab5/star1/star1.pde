/*
Project: Mandala
 Author:Otieno Maurice
 //---------------------------------------------------------------
/*Description: This program draws a mandala consisting of a specified number of stars 
 it has two functions- the star function to draw each star in the mandala 
 and the mandala function to draw the whole mandala 
 -----The mandala function takes five parameters  i.e -----------------
 the x coordinate  of its center and y coordinates of its center
 the width of the mandala
 the number of stars in the mandala
 the number of points in each star
 ----- the star function takes in five parameters i.e ----------------
 
 */
//--------------------------------------------------------------
//Contact:otienom@lafayette.edu*/


int fillcolor = 0;                   // declare and initialize initial fill color
int strokecolor = 255;               // declare and initialize initial stroke color
int transparency = 100;                // declare and initialize transparency
int numberOfStars = 50;
int xCoordinate = width/2;           // declare the x coordinate of center of mandala
int yCoordinate = height/2;          // declare the y coordinate of center of mandala
float widthOfMandala = 600;          // the width of the entire mandala
int  numberOfPoints= 8;              // number of points in each star of the mandala


void setup() {
  size(700, 700);
  background(2);

  mandala(xCoordinate, yCoordinate, widthOfMandala, numberOfPoints, numberOfStars );
}
void mandala(float x, float y, float sWidth, int nPoint, int steps) {
  float largest_radius = sWidth/2;                   // radious of outermost star
  float outer_radius = largest_radius;               // outermost radius of any star
  float inner_radius = outer_radius *0.7;           // innermost radius of any star in the mandala 

  int offset_outer = (int) largest_radius/steps;  // distance between stars in the mandala
  int    rotateAngle = 1;                         // angle between stars in the mandala in the clockwise direction

  // the for loop draws several stars as per the above specified constraints
  for (int i = 1; i <= steps; i++) {
    pushMatrix();
    translate(height/2, width/2);
    rotate(radians(rotateAngle)); 
    star(x, y, inner_radius, outer_radius, nPoint);  // draw the star
    fillcolor += (255/steps);                        // update fill color
    strokecolor -= (255/steps);                      //update stroke color
    popMatrix();

    outer_radius = outer_radius - offset_outer; // update the value of outer radius
    inner_radius = outer_radius*0.7;          // inner radius is always seven tenths of outer radius
    rotateAngle += 1;                         // update rotate angle
  }
}



void star(float x, float y, float inR, float outR, int nPoint) {

  float rotateAngle = (2*PI)/nPoint;            // declare and initialize the angle for which you want to locate upper vertices
  float midAngle = rotateAngle/2;               //declare and initialize the offset angle for which you want to locate

  beginShape();
  for (float currentAngle = 0; currentAngle <= (2*PI); currentAngle += rotateAngle) { // declare the current angle 
    float xpoint1 = x+ cos(currentAngle)*outR;            // x coordinate of first vertice
    float ypoint1 = y +sin(currentAngle)*outR;            // x coordinate of first vertice
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
