/*
Author: Otieno Maurice
Description: This sketch contains the drawing of a pizza of radius 90 pixels 


*/
size(500,500);
background(255);

stroke(0);
strokeWeight(1);


fill(242,72,10);     // make the fill color orange for the outer circle
circle(250,250,180); // draw outer circle

fill(242,239,10);  // make the fill color yellow for inner circle
circle(250,250,160); // draw inner circle
                        
                       //the next  two lines create a sector out  of our pizza 
line(250,250,200,325); // draw line from center of circle to the circumference 
line(250,250,260,340);  // draw line from center of circle to the circumference

fill(242,0,10);     // make the fill color red for inner small circles(the toppings)
circle(230,190,10); // the next 17 lines of code draw circles on the pizza
circle(200,220,10);
circle(195,240,10);
circle(190,280,10);
circle(250,200,10);
circle(230,315,10);
circle(280,295,10);
circle(240,305,10);
circle(240,280,10);
circle(220,260,10);
circle(200,260,10);
circle(260,235,10);
circle(280,215,10);
circle(290,245,10);
circle(310,265,10);
circle(300,280,10);
circle(270,265,10);
circle(240,245,10);
