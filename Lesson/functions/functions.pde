float avr(float x, float y) {
  float z = (x+y)/2;

  return z;
}
void eyeball (int k, int l, int w, int c) {
  fill(10);
  ellipseMode(CORNER);
  ellipse(avr(k, l), avr(w, c), 25, 25);
}
void face(){ 
  strokeWeight(3);
  circle (avr(350,100),avr(300,0),200);
  eye();
}
void eye() {
  eyeball(350, 100, 0, 200);
  eyeball(250,50,0,200);
}

void setup() {
  size(500, 500);
  background(255);
}
void draw() {
}
void mousePressed() {
  face();
}
