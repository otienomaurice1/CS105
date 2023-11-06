/*Author: Otieno Maurice
 Project Descripotion:
 
 
 
 
 
 
 
 
 
 
 Contact: otienom@lafayette.edu
 Date:11/05/2023
 */
// create an instances of PImage class
PImage logo[] = new PImage[59], 
  captain[] = new PImage[60], 
  bestPlayer[]= new PImage[61];
void setup() {
  size(1500, 1000);
  background(0);
  //load team logo images
  for (int i = 1; i<=58; i+=3) {
    String logoName = i+".png";
    println(logoName);
    logo[i] = loadImage(logoName);
  }

  //load team captain images
  for (int j = 2; j<=59; j+=3) {
    String imageName = j+".png";
    captain[j] = loadImage(imageName);
  }
  //load team bestplayer images
  for (int k = 3; k<=60; k+=1) {
    String bestPlayerName = k+".png";
    bestPlayer[k] = loadImage(bestPlayerName);
  }
  image(bestPlayer[33], 50, 50, 100, 100);
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





/*
 // Get information about the team captain
 String [] extractCaptainNameData(String [] heights) {
 String [] nameData = new String [heights.length-1];
 
 for (int i =1; i < heights.length; i++) {
 String [] words = splitTokens(heights[i], ",");
 String name =words[0];
 nameData[i-1] = name;
 }
 return nameData;
 }
 // get the name of the Best player for the current season
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
 
 //display bestplayerImage
 String [] displayBestPlayerImage (String [] heights) {
 String [] nameData = new String [heights.length-1];
 
 for (int i =1; i < heights.length; i++) {
 String [] words = splitTokens(heights[i], ",");
 String name =words[0];
 nameData[i-1] = name;
 }
 return nameData;
 }
 
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
