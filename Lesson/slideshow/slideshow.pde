  PImage image1[] = new PImage[4];
  int x =0;
  void setup(){
  size(1100,1100);
  for(int i =0; i < image1.length; i++){
  image1[i] = loadImage("led_matrix"+i+".jpg");}
  }
  
  void draw(){
   // frameRate(1);
    background(255);
    for(int i = 0; i < image1.length; i++){
    
    image(image1[i], x,0);
    x++;
    }
  }
