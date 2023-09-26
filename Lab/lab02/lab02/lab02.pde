/* Project:CrewMan
 lab:Lab02
 Author: Otieno Maurice
 Description: This is a sketch of a crewman named booz. Bood wears a black hat and has an arm that can elongate with respect to position of the mouse.
 Contact:otienom@lafayette.edu
 */




void setup() {
  size(500, 500);
}
void draw() {
  background(255);

  fill(100);
  rectMode(CORNERS);
  rect(0, 0, 500, 500); //draw booz'sbackground

  fill(252, 191, 252); 
  //draw booz's left arm
  ellipseMode(CENTER);
  arc(175, 135, 25, 50, radians(65), radians(270));

  /* this section draws booz's body*/
  beginShape();  

  // draw left side of crew master
  curveVertex(210, 95);
  curveVertex(180, 94);
  curveVertex(174, 115);
  curveVertex(173, 120);
  curveVertex(174, 145);
  curveVertex(180, 164);
  curveVertex(180, 173);

  //  draw booz's left leg
  curveVertex(182, 190);
  curveVertex(191, 196);
  curveVertex(200, 190);
  curveVertex(203, 173);

  //draw horizontal between legs
  curveVertex(215, 170);

  //draw booz's right leg
  curveVertex(220, 190);
  curveVertex(229, 196);
  curveVertex(237, 190);
  curveVertex(237, 173);

  //draw booz's right side
  curveVertex(238, 164);
  curveVertex(238, 145);
  curveVertex(236, 115);
  curveVertex(230, 95);

  //draw booz's head
  curveVertex(205, 80);
  curveVertex(180, 95);
  curveVertex(210, 95);
  endShape();

  fill(2);  // make fill color black
  arc(200, 85, 70, 20, radians(-40), radians(180)); // draw booz's cap

  //draw booz's eyes
  circle(190, 102, 10); // draw booz's left eye
  fill(232, 275, 67); // make the inside of booz's left eye yellow
  circle(190, 102, 5); //draw booz's inner eye
  fill(1); // make outer eye black
  circle(210, 102, 10);// draw booz's right eye
  fill(232, 275, 67);//// make the inside of booz's right eye yellow
  circle(210, 102, 5);

  fill(107, 218, 247);
  curve(400, 50, 230, 122, 230, 142, 50, 50); // draw booz's right hand joint

  //draw booz's right arm
  fill(107, 218, 247);
  beginShape();
  curveVertex(50, 50);
  curveVertex(230, 122);

  //make booz's arm follow the mouse 
  curveVertex(mouseX+0.1, mouseY+0.1);
  curveVertex(mouseX+0.1, mouseY+10);

  //continue drawing booz's arm
  curveVertex(231, 142);
  curveVertex(400, 50);
  endShape();
}

