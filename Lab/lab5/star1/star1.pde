/*
Project:
Author:
Description:
Contact:otienom@lafayette.edu*/



int fillcolor, strokecolor, transparency = 10, numberOfStars = 50;
int xCoordinate = 350, yCoordinate = 350;
void setup() {
  size(700, 700);
  background(2);

  float largeStarRadius = 300;
  float offset_inner, offset_outer;
offset_inner = offset_outer = largeStarRadius/numberOfStars;
float inner_radius =10, outer_radius = 50; int  numberOfPoints= 8; 

  for (int i = 1; i <= numberOfStars; i++) {
      
     pushMatrix();
     translate(0,0);
      rotate(radians(0));
    star(xCoordinate, yCoordinate, inner_radius, outer_radius, numberOfPoints);  // draw the star
    fillcolor += (255/numberOfStars);
    strokecolor -= (255/numberOfStars);
   
    popMatrix();
    
     outer_radius = outer_radius + offset_outer; // update the value of outer radius
     inner_radius = inner_radius + offset_inner; // update the value of inner radius
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
