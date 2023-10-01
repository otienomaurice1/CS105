/*
Project:
Author:
Description:
Contact:otienom@lafayette.edu*/



int fillcolor, strokecolor, transparency = 200, numberOfStars = 50;
int xCoordinate = 350, yCoordinate = 350;
void setup() {
  size(700, 700);
  background(2);

  float largeStarRadius = 300;
  float offset_inner, offset_outer;
offset_inner = offset_outer = largeStarRadius/numberOfStars;


  for (int i = 1; i <= numberOfStars; i++) {
      float inner_radius =30, outer_radius = 50; 
    star(xCoordinate, yCoordinate, inner_radius, outer_radius, 8);  // draw the star
   /* fillcolor += (255/numberOfStars);
    strokecolor -= (255/numberOfStars);*/
     inner_radius += offset_inner;outer_radius += offset_outer; // update the value of inner and outer radius
  }
}



void star(float x, float y, float inR, float outR, int nPoint) {

  float rotateAngle = (2*PI)/nPoint;  // declare and initialize the angle for which you want to locate upper vertices
  float midAngle = rotateAngle/2;  //declare and initialize the offset angle for which you want to locate

  beginShape();
  for (float currentAngle = 0; currentAngle <= (2*PI); currentAngle += rotateAngle) { // declare the current angle 
    float xpoint1 = x+ cos(currentAngle)*outR; // x coordinate of first vertice
    float ypoint1 = y +sin(currentAngle)*outR;  // x coordinate of first vertice
    float xpoint2 = x+ cos(midAngle+currentAngle)*inR; // x coordinate of second vertex
    float ypoint2 = y+sin (midAngle+currentAngle)*inR;// y coordinate of second vertex

    fillcolor = 100; 
    strokecolor = 255;  // initialize stroke and fill values
    fill(fillcolor, transparency);   // set the color 
    stroke(strokecolor);

    // draw  an edge of the star
    vertex(xpoint1, ypoint1);
    vertex(xpoint2, ypoint2);
  }
  endShape();
}
