/*
Project: Sea worm
Author: Maurice Otieno
Description: ------------------------------------------------------------------
             This project entails a sketch to draw a ugly sea worm 
             the sea worm moves by drifting across the dark,deep waters of the sea
             the seaworm is dark in color with purple spikes and green across its body 
             to make it more scary
             its mouth is a circle and it has no eyes
             -----------------------------------------------------------------------
             Date:11/19/2023
*/


//create instances of the MotienoThingy class
MOtienoThingy seaworm1 ;
MOtienoThingy seaworm2;
void setup() {
  //set the size of the canvas to 800 by 600
  size(800, 600);
//create the seaworm
  seaworm1 = new MOtienoThingy(this);
 //seaworm2 = new MOtienoThingy(this, 400,500);

}
void draw() {
  background(2);
 seaworm1.display();
  seaworm1.move();
 // seaworm2.move();
 // seaworm2.display();
}
