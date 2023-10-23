  PImage image1,image2,newImage;
  void setup(){
  size(1100,1100);
  image1 = loadImage("image1.png");
  image2 = negativeImage(image1);
  
  }
  
  void draw(){
    background(255);
    image(image2, 50,50);
  }


PImage negativeImage(PImage original){
    color originalColor, newColor;
    newImage = original;
for(int i = 0; i < original.width; i++){
for(int j = 0; j < original.height; j++){
  originalColor = original.get(i,j);
  newColor = color(255-red(originalColor),255-green(originalColor),255-blue(originalColor));
  newImage.set(i,j,newColor);
  }
  }
  return newImage;
  }
