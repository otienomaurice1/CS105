 /*Lab1: Bulls eye
 Author: Otieno Maurice
 Description: In this sketch , i draw Bull's eye with Red, yellow and Green.
 */


size(500, 500);            // draw a canvas 500 pixels wide and tall 500 pixels.
background(255);           // set the background color to white

rect(50, 50, 270, 270);   //draw a rectangle with the left corner at point (50,50) and is 270 pixels wide and 270 pixels tall

fill(252, 31, 31);         // set the color of the circle to be drawn to light red
ellipseMode(CENTER);
ellipse(185, 200, 200, 200); // draw a cirle of radius 40 pixels whose centre is at point (150,135);

fill(0, 0, 255);         // set the color of the circle to be drawn to blue
ellipse(185, 200, 150, 150);  // draw a cirle of radius 40 pixels whose centre is at point (150,135);

fill(0, 255, 0);            // set the color of the circle to be drawn to green
ellipse(185, 200, 90, 90); // draw a cirle of radius 40 pixels whose centre is at point (150,135);
fill(0);
 triangle(185, 200, 190, 196, 190, 200);  // create a triangle: This will be the arrow-like head of the dart
 quad(190, 197,190, 199,240,180,240,185); //create a quad for the body of the dart
