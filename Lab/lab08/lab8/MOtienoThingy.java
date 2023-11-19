import processing.core.*;

class MOtienoThingy {
  PApplet P;
  int fillcolor;                   // declare and initialize initial fill color
  int strokecolor ;               // declare and initialize initial stroke color
  int transparency ;                // declare and initialize transparency
  float widthOfMandala ;          // declare and initialize the diameter of the star
  int  numberOfPoints;              // number of points in each star of the mandala
  float outer_radius ;               // outermost radius of the star
  float inner_radius ;           // innermost radius of the star 
  float x;
  float y; 
  int numberOfSpikes = 5;

  MOtienoThingy(PApplet P) {
    this.P = P;
    fillcolor = 100;                   // declare and initialize initial fill color
    strokecolor = 255;               // declare and initialize initial stroke color
    transparency = 200;                // declare and initialize transparency
    widthOfMandala = P.width/6;          // declare and initialize the diameter of the star
    numberOfPoints= 32;              // number of points in each star of the mandala
    outer_radius = widthOfMandala/2;               // outermost radius of the star
    inner_radius = (float)(outer_radius *0.7);           // innermost radius of the star
    x = P.width/2;
    y =P.height/2;
  }
  //MOtienoThingy(){}


  void star() { // star function header

    float inR =inner_radius; 
    float outR = outer_radius; 
    int nPoint = numberOfPoints;
    float pie = P.PI;
    float rotateAngle = (2*pie)/nPoint;            // declare and initialize the angle for which you want to locate upper vertices
    float midAngle = rotateAngle/2;               //declare and initialize the offset angle for which you want to locate lower vertices

    P.beginShape();
    for (float currentAngle = 0; currentAngle <= (2*pie); currentAngle += rotateAngle) { // declare the current angle 
      float xpoint1 = x+ P.cos(currentAngle)*outR;            // x coordinate of first vertex
      float ypoint1 =y +P.sin(currentAngle)*outR;            // x coordinate of first vertex
      float xpoint2 = x+ P.cos(midAngle+currentAngle)*inR;    // x coordinate of second vertex
      float ypoint2 = y+P.sin (midAngle+currentAngle)*inR;    // y coordinate of second vertex


      P.fill(fillcolor, transparency);   // set the color 
      P.stroke(strokecolor);

      // draw  an edge of the star
      P.vertex(xpoint1, ypoint1);
      P.vertex(xpoint2, ypoint2);
    }
    P.endShape();
  }

  //method to move creature
  void move() {
  }



  void display() {
    for (int i =0; i<= numberOfSpikes; i++) {
      star();
      x+=10;
      y-=10;
    }
  }
}
