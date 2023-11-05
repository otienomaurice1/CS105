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
  size(500, 500);
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
  // load the primier league table as a series of strings
  /* String [] lines = loadStrings("Primier_league_Table.csv");
   // int [] barHeights = {148, 365, 90, 400};
   barGraphs(extractHeightData(lines), extractNameData(lines));
   // extractHeightData(lines);*/
}
void draw() {
}






/*

 //draw bargraph depending on info selected
 void barGraphs(int [] heights, String [] names) {
 int red = 10, green = 220, color_offset = 220/heights.length;
 for (int i =0; i<heights.length; i++) {
 int z = width-40;
 rectMode(CORNER);
 int widthOfBars = z/heights.length;
 int x=i*widthOfBars;
 int barHeight = heights[i];
 int text_offset = 35;
 
 fill(red, green, 100);
 rect(x+20, height-(text_offset+barHeight), widthOfBars, barHeight);
 fill(0, 0, 255);
 text(names[i], x+20, height-(text_offset/2));
 red=i*color_offset;
 green-=color_offset;
 }
 stroke(255, 265, 0);
 line(20, height-35, width, height-35);
 line(20, 0, 20, height-35);
 }
 
 int [] extractWinData(String [] heights) {
 int [] heightData = new int [heights.length-1];
 
 for (int i =1; i < heights.length; i++) {
 String [] words = splitTokens(heights[i], ",");
 int feet = int(words[1]);
 int inches = int(words[2]);
 int heightArray = 12*feet+inches;
 heightData[i-1] = heightArray;
 }
 return heightData;
 }
 
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
