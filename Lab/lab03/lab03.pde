void setup(){
size(500,500);
}
void draw(){
  drawCrewMaster();
}
void drawCrewMaster(){
  fill(200,250,10);
  beginShape();  // draw left side of crew master
  curveVertex(210,95);
  curveVertex(180, 94);
  curveVertex(175,115);
  curveVertex(125,120);
  curveVertex(175,135);
  curveVertex(180,164);
  curveVertex(210,160);
  endShape();
  ellipseMode(CENTER);
  arc(195,154,30,50,PI/6,5*PI/6);
  arc(195,104,30,50,7*PI/6,11*PI/6);
   fill(200,250,10);
  beginShape();  // draw right side of crew master
  curveVertex(210,95);
  curveVertex(230, 94);
  curveVertex(235,115);
  curveVertex(295,120);
  curveVertex(235,135);
  curveVertex(230,164);
  curveVertex(210,160);
  endShape();
  ellipseMode(CENTER);
  arc(235,154,30,50,PI/6,5*PI/6);
  arc(235,104,30,50,7*PI/6,11*PI/6);
}
