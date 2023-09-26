/* 
 Lab1: Traffic Lights.
 Author: Otieno Maurice
 Description: In this sketch , i draw a traffic light displaying the three colors Red, yellow and Gree on a road
 */


size(500, 500);            // draw a canvas 500 pixels wide and tall 500 pixels.
background(255);           // set the background color to white


rectMode(CORNERS);
fill(133, 31, 32);
rect(90, 30, 210, 245);   //draw a rectangle with the left corner at point (50,50) and is 200 pixels wide and 300 pixels tall

fill(0); 
quad(50, 490, 250, 490, 500, 170, 500, 10); // draw a black road starting at position (50,490)

fill(133, 31, 32);
quad(210, 30, 210, 245, 230, 135, 230, 175); // draw the support for the traffic lights

fill(255);
quad(150,470,190,470,230,420,190,420); // draw white strips to devide the road
quad(225,380,265,380,305,330,265,330);
quad(305,290,345,290,385,240,345,240);
quad(370,200,410,200,450,160,410,160);


fill(133, 31, 32);
rect(230, 135, 245, 490); // draw the pole for the traffic light support system

fill(0);                 // set the fill color to black
rectMode(CORNER);        
rect(100, 50, 100, 180);// draw a rectangle 200 pixels tall, 100 pixels wide and whose top left corner is at point(100,100)

fill(255, 0, 0);         // set the color of the circle to be drawn to light red
ellipseMode(CENTER);
ellipse(150, 85, 40, 40); // draw a cirle of radius 40 pixels whose centre is at point (150,135);

fill(250, 255, 0);         // set the color of the circle to be drawn to light yellow
ellipse(150, 140, 40, 40);  // draw a cirle of radius 40 pixels whose centre is at point (150,135);

fill(0, 255, 0);            // set the color of the circle to be drawn to light green
ellipse(150, 200, 40, 40); // draw a cirle of radius 40 pixels whose centre is at point (150,135);
