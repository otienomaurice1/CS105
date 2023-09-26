 // author: Otieno Maurice
 //Description: this sketch drws zoog and makes it  move with the mouse
 // additional info: this is homework for witch i was given extension
 
 
 void setup(){
   size(200,200); // set canvas size to 200 by 200 pixels
 }
 void draw(){
 background(255);  // draw a white background 
 
 // set ellipses and reacts to CENTER MODE
 ellipseMode(CENTER);
 rectMode(CENTER);
 
 //Draw zoogs body
 stroke(0);
 fill(255);
 rect( mouseX, mouseY,20,100);
 
 // Draw Zoogs head
 stroke(0);
 fill(255);
 ellipse(mouseX, mouseY-30,60,60);
 
 // Draw Zoog's eyes
 fill(0);
 ellipse(mouseX+20,mouseY-25,16,32);
 ellipse(mouseX-20,mouseY-25,16,32);
 
 //Draw zoogs legs
 stroke(0);
 line(mouseX+10,mouseY+50,mouseX+20,mouseY+100);
 line(mouseX-10,mouseY+50,mouseX-20,mouseY+100);
 }
