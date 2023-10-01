/*
Project:
Author:
Description:
Contact:otienom@lafayette.edu*/



int fillcolor = 0;
int strokecolor = 255;
int transparency = 5;
int numberOfStars = 50;
int xCoordinate = width/2;
int yCoordinate = height/2;

void setup() {
  size(1000, 1000);
  background(2);
  float widthOfMandala = 600;
  int  numberOfPoints= 8; 
 
mandala(xCoordinate,yCoordinate,widthOfMandala,numberOfPoints,numberOfStars );

}
void mandala(float x, float y, float sWidth, int nPoint, int steps) {
  float largest_radius = sWidth/2;
  float outer_radius = largest_radius;
 float inner_radius = outer_radius *0.7;

 int offset_outer = (int) largest_radius/steps;  
  int    rotateAngle = 1;
 
  for (int i = 1; i <= steps; i++) {
     pushMatrix();
     translate(height/2,width/2);
      rotate(radians(rotateAngle)); 
    star(x, y, inner_radius,outer_radius, nPoint);  // draw the star
    fillcolor += (255/steps); // update fill color
    strokecolor -= (255/steps); //update stroke color
   popMatrix();
    
     outer_radius = outer_radius -offset_outer; // update the value of outer radius
     inner_radius = outer_radius*0.7;
     rotateAngle += 1;
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

  
    fill(fillcolor, transparency);   // set the color 
    stroke(strokecolor);

    // draw  an edge of the star
    vertex(xpoint1, ypoint1);
    vertex(xpoint2, ypoint2);
  }
  endShape();
}
