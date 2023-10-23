PImage image1, image2;
void setup() {
  size(1100, 1100);
  image1 = loadImage("image1.png");
}

void draw() {
}

//declare noRed function header
PImage noRed(PImage original) { 
  // instatiate a new image
  PImage newImage = original;
  // instantiate a new color
  color colorOfImage, newColorOfImage; 
  //loop through all pixels in the image
  for (int i = 0; i < 1100; i++) {

    for (int j = 0; j <= 1100; j++) {
      //get color of each pixel in the image
      colorOfImage = newImage.get(i, j);
      //provide the new image colors
      newColorOfImage =  color(red(0), green(colorOfImage), blue(colorOfImage));
      // set the image to new color
      newImage.set(i, j, newColorOfImage);
    }
  }
  return newImage;
}


PImage noGreenBlue(PImage original) { 
  // instatiate a new image
  PImage newImage = original;
  // instantiate a new color
  color colorOfImage, newColorOfImage; 
  //loop through all pixels in the image
  for (int i = 0; i < 1100; i++) {

    for (int j = 0; j <= 1100; j++) {
      //get color of each pixel in the image
      colorOfImage = newImage.get(i, j);
      //provide the new image colors----set blue and green to 0
      newColorOfImage =  color(red(colorOfImage), green(0), blue(0));
      // set the image to new color
      newImage.set(i, j, newColorOfImage);
    }
  }
  return newImage;
}

PImage grayScale(PImage original) { 
  // instatiate a new image
  PImage newImage = original;
  // instantiate a new color
  color colorOfImage; 
  //loop through all pixels in the image

  for (int i = 0; i < 1100; i++) {

    for (int j = 0; j <= 1100; j++) {
      //get color of each pixel in the image
      colorOfImage = newImage.get(i, j);
      //provide the new image colors
      color  grayscalecolor =  color((red(colorOfImage)+ green(colorOfImage)+ blue(colorOfImage))/3,
      (red(colorOfImage)+ green(colorOfImage)+ blue(colorOfImage))/3,
      (red(colorOfImage)+ green(colorOfImage)+ blue(colorOfImage))/3);
      // set the image to new color
      newImage.set(i, j, grayscalecolor);
      // println(grayscalecolor);
      println(grayscalecolor);
    }
    
  }

  return newImage;
}


PImage transparency(PImage original, int alphaValue) { 
  // instatiate a new image
  PImage newImage = original;


  // check for invalid color passed 
  if (alphaValue < 0 || alphaValue > 255) {
    println("Invalid transparency value passed");
  } else {

    // instantiate a new color
    color colorOfImage, newColorOfImage; 

    //loop through all pixels in the image
    for (int i = 0; i < 1100; i++) {
      for (int j = 0; j <= 1100; j++) {
        //get color of each pixel in the image
        colorOfImage = newImage.get(i, j);
        //provide the new image colors and the transparency
        newColorOfImage =  color(red(colorOfImage), green(colorOfImage), blue(colorOfImage), alphaValue);
        // set the image to new color
        newImage.set(i, j, newColorOfImage);
      }
    }
    return newImage;
  }
  return original;
}

void keyPressed() {
  // check if the pressed key is r
  if (key == 'r') {
    image2 = noRed(image1);
  }
  //check if pressed key is b
  else if (key == 'b') {
    image2 = noGreenBlue(image1);
  }
  // check if pressed key is t
  else if (key == 't') {
    image2 = transparency(image1, 100);
  }
  //check if pressed key is g
  else if (key == 'g') {
    image2 =  grayScale(image1);
  }

  image(image2, 0, 0);
}
