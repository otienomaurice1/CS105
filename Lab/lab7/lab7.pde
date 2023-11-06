/*Author: Otieno Maurice
 Project Descripotion:
 
 
 
 
 
 
 
 
 
 
 Contact: otienom@lafayette.edu
 Date:11/05/2023
 */
// create an instances of PImage class
PImage loadimages[] = new PImage[61],
  logo[] = new PImage[20], 
  captain[] = new PImage[20], 
  bestPlayer[]= new PImage[21];
void setup() {
  size(1200, 500);
  background(0);
  //load team logo images
  for (int i = 1; i<61; i++) {
    String imageName = i+".png";
    println(imageName);
    loadimages[i] = loadImage(imageName);
  }

  //sort images into their categories numbering them from 1 to 20
  for (int i = 1; i<20; i++) {
    for(int j = 1; j <59;j+=3){
      int k = j+1;
      int l = j+2;
    logo[i] = loadimages[j];
    captain[i] = loadimages[k];
    bestPlayer[i] = loadimages[l];
    }
  }
  image(bestPlayer[19], 50, 50, 100, 100);
  fill(200, 200, 0);
  text("hwang", 50, 170);

  //load the primier league table as a series of strings
  String [] lines = loadStrings("Primier_League_Table.csv");
  // int [] barHeights = {148, 365, 90, 400};
  barGraphs(extractWinData(lines), extractTeamNameData(lines));
  // extractHeightData(lines);*/
}
void draw() {
}








//draw bargraph depending on info selected
void barGraphs(int [] heights, String [] names) {
  //declare variables for color 
  int red = 10, 
    green = 220, 
    color_offset = 220/heights.length, 
    barHeightOffset = height-(height/43),
    barWidthOffset = width/50-10;
  for (int i =0; i<heights.length; i++) {
    int z = width-40;
    rectMode(CORNER);
    int widthOfBars = z/heights.length;
    int x=i*widthOfBars;
    int barHeight = heights[i];
    int text_offset = height/10;


    fill(red, green, 100);
    rect(x+barWidthOffset, height-(text_offset+barHeight), widthOfBars, barHeight);
    fill(0, 0, 255);
    text(names[i], x+barWidthOffset, height-(text_offset/2));
    red=i*color_offset;
    green-=color_offset;
   
  }
  
   stroke(255, 265, 0);
    line(barWidthOffset,barHeightOffset,barWidthOffset , 10);
    line(barWidthOffset, barHeightOffset, width-10,barHeightOffset);
}

int [] extractWinData(String [] heights) {
  int [] heightData = new int [heights.length-1];

  for (int i =1; i < heights.length; i++) {
    String [] words = splitTokens(heights[i], ",");
    int win = int(words[1]);
    heightData[i-1] = win*10;
  }
  return heightData;
}


//This function returns the name of the club
//  Get information about the team name
String [] extractTeamNameData(String [] heights) {
  //declare the namedata to take in name of team
  String [] nameData = new String [heights.length-1];

  for (int i =1; i < heights.length; i++) {
    String [] words = splitTokens(heights[i], ",");
    String name =words[0];
    // if the name is too long to be displayed on the bar graph, shorten it.
    //check if name contains space in between words
    if (name.contains(" ")) {
      String [] shortName = splitTokens(name, " ");
      name = shortName[0];
    }
    nameData[i-1] = name;
  }
  return nameData;
}


 // Get information about the team captain
 //retun the current captain selected
 String []extractCaptainNameData(String [] Captains) {
 String [] CaptainName = new String [Captains.length-1];
 
 for (int i =1; i < Captains.length; i++) {
 String [] words = splitTokens(Captains[i], ",");
 String name = words[12];
 CaptainName[i-1] = name;
 }
 return CaptainName;
 }
 /*
  get the name of the Best player for the current season
 String [] extractBestplayerNameData(String [] heights) {
 String [] nameData = new String [heights.length-1];
 
 for (int i =1; i < heights.length; i++) {
 String [] words = splitTokens(heights[i], ",");
 String name =words[0];
 nameData[i-1] = name;
 }
 return nameData;
 }
 
 //get information about the number of yellow cards the team has
 String [] extractYellowCardData(String [] heights) {
 String [] nameData = new String [heights.length-1];
 
 for (int i =1; i < heights.length; i++) {
 String [] words = splitTokens(heights[i], ",");
 String name =words[0];
 nameData[i-1] = name;
 }
 return nameData;
 }
 //Red Card
 String [] extractRedCardData(String [] heights) {
 String [] nameData = new String [heights.length-1];
 
 for (int i =1; i < heights.length; i++) {
 String [] words = splitTokens(heights[i], ",");
 String name =words[0];
 nameData[i-1] = name;
 }
 return nameData;
 }
 
 
 // extract team form
 String [] extractCaptainNameData(String [] heights) {
 String [] nameData = new String [heights.length-1];
 
 for (int i =1; i < heights.length; i++) {
 String [] words = splitTokens(heights[i], ",");
 String name =words[0];
 nameData[i-1] = name;
 }
 return nameData;
 }
 */
 
 //display bestplayerImage
 void displayBestPlayerImage (String [] heights) {
   if(mouseX >=0&&mouseX<50 && mouseY< 500&& mouseY>450){
   image(captain[34],250,250,40,40);
   fill(0,100,200);
   text("Team Captain",250,300);
   String []captains = extractCaptainNameData(heights);
   
   text(captains[20],250,320);
   
   }

 }
 /*
 //display the team logo
 String [] displayBestPlayerImage (String [] heights) {
 String [] nameData = new String [heights.length-1];
 
 for (int i =1; i < heights.length; i++) {
 String [] words = splitTokens(heights[i], ",");
 String name =words[0];
 nameData[i-1] = name;
 }
 return nameData;
 }
 
 //display captain image
 String [] displayCaptainImage (String [] heights) {
 String [] nameData = new String [heights.length-1];
 
 for (int i =1; i < heights.length; i++) {
 String [] words = splitTokens(heights[i], ",");
 String name =words[0];
 nameData[i-1] = name;
 }
 return nameData;
 }
 */
