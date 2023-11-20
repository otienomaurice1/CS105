//This class is the template for drawing sea worms 
//it contains two public methods 

import processing.core.*;

class MOtienoThingy {
  //declare a variable for the Appelet type
  PApplet P;
  // declare variable for transparency
  int transparency ;   
  //  declare the size of the worm
  float size_of_worm ;         
  // declare the number of spikes in a cross section of the worm
  int  number_of_spikes;      
  // the outer size of the worm
  float outer_radius ;    
  // the inner size of the worm
  float inner_radius ;    
  //declare variable for the position of the worm
  float x;
  float y; 
  //declare length of worm
  int length_of_worm = 10;

  // declare the default constructor
  MOtienoThingy(PApplet P) {
    this.P = P;
    // initialize transparency
    transparency = 100;       
    // initialize the size of the worm
    size_of_worm = P.width/12;
    // declare the number of spikes in a cross section of the worm
    number_of_spikes= 32;           
    // the outer size of the worm
    outer_radius = size_of_worm/2;              
    inner_radius = (float)(outer_radius *0.4);         
    //initialize  the position of the worm
    x = P.width/8;
    y =P.height/(2);
  }

  //declare a secondary constructor
  MOtienoThingy(PApplet P, float xposition, float yposition) {
    this.P = P;
    x = xposition;
    y = yposition;
  }
  // declare a method to draw the cross-section of the worm

  private void worm(float xCoord, float yCoord) { // star function header

    float inR =inner_radius; 
    float outR = outer_radius; 
    int nPoint = number_of_spikes;
    float pie = P.PI;
    // declare and initialize the angle for which you want to locate upper vertices
    float rotateAngle = (2*pie)/nPoint; 
    //declare and initialize the offset angle for which you want to locate lower vertices
    float midAngle = rotateAngle/2;               

    P.beginShape();

    for (float currentAngle = 0; currentAngle <= (2*pie); currentAngle += rotateAngle) { // declare the current angle 
      float xpoint1 = xCoord+ P.cos(currentAngle)*outR;                                  // x coordinate of first vertex
      float ypoint1 =yCoord +P.sin(currentAngle)*outR;                                   // x coordinate of first vertex
      float xpoint2 = xCoord+ P.cos(midAngle+currentAngle)*inR;                         // x coordinate of second vertex
      float ypoint2 = yCoord+P.sin (midAngle+currentAngle)*inR;                          // y coordinate of second vertex


      P.fill(100, 255, 100, transparency);   // set the color 
      P.stroke(100, 55, 100);

      // draw  an edge of the star
      P.vertex(xpoint1, ypoint1);

      P.vertex(xpoint2, ypoint2);
    }
    P.endShape();
    P.fill(0);
    P.circle(x, y, 25);
    P.fill(22, 0, 0);
    P.circle(x, y, 10);
  }

  //method to move creature
  public void move() {
    if (x== 0) {
      x++;
    }
    if (x<P.width-1) {
      x+=1;
    } else if (x >= P.width-1) {
      x-=1;
    }
  }
  //method to display the worm
  public void display() {
    float yCoord, xCoord;
    yCoord = y;
    xCoord = x;
    for (int i =0; i<= length_of_worm; i++) {
      //rotate each worm cross-section before drawing the next
      P.rotate(P.radians(1));
      worm(xCoord, yCoord);
    }
  }
}
