int l = 0; 

void setup() {
  size(200, 200);
  rectangles();
  println("\n");
  triangles();
 // println("\n");
 // println("\n");
  triangles1();
  
}
void rectangles() {
  for (int i = 0, w =0; i <= 3; i++, w+=width/4) {
    for (int j = 0; j <= 4; j++) {
      rectMode(CORNER);
      print("5");
      rect(w, l, width/5, height/4);
      l+= height/4;
    }
    println("\n");
  }
}


void triangles() {
  for (int i = 0; i <= 4; i++) {
    for (int j = 0; j <= i; j++) {
      print("*");
    }
    println("\n");
  }
}

void triangles1() {
  for (int i = 5; i >= 0; i--) {
    for (int j = 0; j < i; j++) {
      print("*");
    }
    println("\n");
  }
}
