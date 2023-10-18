  PImage image1;
  void setup(){
  size(1100,1100);
  image1 = loadImage("image1.png");
  }
  
  void draw(){
    image(image1, 50,50);
    color colorImage; 
for(int i = 0; i < 1100; i++){
for(int j = 0; j <= 1100; j++){
  colorImage = image1.get(i,j);
  image1.set(i,j,colorImage);
 
  }
  }
  }
