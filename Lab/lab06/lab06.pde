/*
Project: Anaglyph
Author: Otieno Maurice
Descrption: This code contains five functions each with a specific task to achieve the desired effect
 tHE FUNCTIONS FUNCTION AS FOLLOWS:
 noRed- eliminates red in each pixel of the image
 noGreenBlue- eliminates both blue ad green colors in each pixel
 transparency- alters the transparency of each pixel in the image
 grayScale- switches the color of each pixel in an image from RGB to grayscale colors
 anaglyph- combines the left and right perspectives of an image to create a 3-D effect. users the red color 
            from the first image and the blue and green colors from the second image
            

*/





PImage originalImage1, originalImage2,originalImage3, newImage; // create the images
void setup() {
  size(1100, 1100);
  
//  load images from the skecth folder
  originalImage1 = loadImage("libraryleft.JPG");
  originalImage2 = loadImage("libraryright.JPG");
  // initialize new image by createImage function
  newImage = createImage(originalImage1.width, originalImage1.height,RGB);
}

void draw() {
}

//declare noRed function header
PImage noRed(PImage original) { 
  // instantiate a new color
  color colorOfImage, newColorOfImage; 
  //loop through all pixels in the image
  for (int i = 0; i < original.height; i++) {

    for (int j = 0; j <= original.width; j++) {
      //get color of each pixel in the image
      colorOfImage = original.get(i, j);
      //provide the new image colors
      newColorOfImage =  color(red(0), green(colorOfImage), blue(colorOfImage));
      // set the image to new color
      newImage.set(i, j, newColorOfImage);
    }
  }
  return newImage;
}


PImage noGreenBlue(PImage original) { 
  // instantiate a new color
  color colorOfImage, newColorOfImage; 
  //loop through all pixels in the image
  for (int i = 0; i < original.height; i++) {

    for (int j = 0; j <= original.width; j++) {
      //get color of each pixel in the image
      colorOfImage = original.get(i, j);
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
  // instantiate a new color
  color colorOfImage, newColorOfImage; 
  //loop through all pixels in the image
  for (int i = 0; i < original.height; i++) {
    for (int j = 0; j < original.width; j++) {
      //get color of each pixel in the image
      colorOfImage = original.get(i, j);
      //provide the new image colors
      int avg = (int)(red(colorOfImage)+green(colorOfImage)+blue(colorOfImage))/3;
      newColorOfImage = color(avg, avg, avg);
      // set the image to new color
      newImage.set(i, j, newColorOfImage);
    }
  }
  return newImage;
}


PImage transparency(PImage original, int alphaValue) { 
  // check for invalid color passed 
  if (alphaValue < 0 || alphaValue > 255) {
    println("Invalid transparency value passed");
  } else {

    // instantiate a new color
    color colorOfImage, newColorOfImage; 

    //loop through all pixels in the image
    for (int i = 0; i < original.width; i++) {
      for (int j = 0; j < original.height; j++) {
        //get color of each pixel in the image
        colorOfImage = original.get(i, j);
        //provide the new image colors and the transparency
        newColorOfImage =  color(red(colorOfImage), green(colorOfImage), blue(colorOfImage), alphaValue);
        // set the image to new color
         newImage.set(i, j, newColorOfImage);
      }
    }
  }
  return newImage;
}


// declare anaglyph function header
PImage anaglyph( PImage original1, PImage original2){

    // instantiate a new color
    color colorOfImage1,colorOfImage2, newColorOfImage; 

    //loop through all pixels in the image
    for (int i = 0; i <original1.width ; i++) {
      for (int j = 0; j < original1.height; j++) {
        //get color of each pixel in the image
        colorOfImage1 = original1.get(i, j);
        colorOfImage2 = original2.get(i, j);
        //provide the new image colors and the transparency
        newColorOfImage =  color(red(colorOfImage1), green(colorOfImage2), blue(colorOfImage2));
        // set the image to new color
         newImage.set(i, j, newColorOfImage);
      }
    }
  return newImage;

}





void keyPressed() {
  // check if the pressed key is r
  if (key == 'r') {
    newImage = noRed(originalImage1);
  }
  //check if pressed key is b
  else if (key == 'b') {
     newImage = noGreenBlue(originalImage1);
  }
  // check if pressed key is t
  else if (key == 't') {
     newImage = transparency(originalImage1, 100);
  }
  //check if pressed key is g
  else if (key == 'g') {
     newImage =  grayScale(originalImage1);
  }
  else if(key == 'a'){
  newImage =anaglyph(originalImage1,originalImage2);}
  image( newImage, 0, 0);
  
}
