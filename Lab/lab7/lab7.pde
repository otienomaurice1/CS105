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

String [] lines ; //declare the variable to hold data from the csv file

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
  int i = 0;
  while ( i< 20) {
    if (i == 0) {// in data folder the images are named from 1. we have to 
      int j = 1;
      int k =2;
      int  l= 3;
      logo[i] = loadimages[j];
      captain[i] = loadimages[k];
      bestPlayer[i] = loadimages[l];
    } else {
      int j = (i*3)+1;
      int k = j+1;
      int l = j+2;
      logo[i] = loadimages[j];
      captain[i] = loadimages[k];
      bestPlayer[i] = loadimages[l];
    }
    i++;
  }
  //load the primier league table as a series of strings
  lines = loadStrings("Primier_League_Table.csv");
  // int [] barHeights = {148, 365, 90, 400};
}
void draw() {
  background(0);
  keyPressed();
  int trackposition = 70;
  String[] NamebestPlayer = extractbestPlayerNameData(lines); 
  String [] Namecaptain = extractCaptainNameData(lines);
  String [] Nameteam = extractTeamNameData(lines);
  int widthofbars = (width-40)/lines.length;
  if (mouseX < trackposition && mouseY >350) {
    displayBestPlayerImage(NamebestPlayer[0], bestPlayer[0]);
    displayCaptainImage(Namecaptain[0], captain[0]);
    displayTeamLogoImage(Nameteam[0], logo[0]);
  }
  //display Arsenal
  else  if (mouseX > trackposition && mouseX < (trackposition+widthofbars) && mouseY >350) {
    displayBestPlayerImage(NamebestPlayer[1], bestPlayer[1]);
    displayCaptainImage(Namecaptain[1], captain[1]);
    displayTeamLogoImage(Nameteam[1], logo[1]);
  }
  //display Chelsea
  else  if (mouseX > (trackposition+widthofbars) && mouseX < (trackposition+(widthofbars*2)) && mouseY >350) {
    displayBestPlayerImage(NamebestPlayer[2], bestPlayer[2]);
    displayCaptainImage(Namecaptain[2], captain[2]);
    displayTeamLogoImage(Nameteam[2], logo[2]);
  }
  //display Mancity
  else  if (mouseX > (trackposition+(widthofbars*2)) && mouseX < (trackposition+(widthofbars*3)) && mouseY >350) {
    displayBestPlayerImage(NamebestPlayer[3], bestPlayer[3]);
    displayCaptainImage(Namecaptain[3], captain[3]);
    displayTeamLogoImage(Nameteam[3], logo[3]);
  }
  //display Liverpool
  else  if (mouseX > (trackposition+(widthofbars*3)) && mouseX < (trackposition+(widthofbars*4)) && mouseY >350) {
    displayBestPlayerImage(NamebestPlayer[4], bestPlayer[4]);
    displayCaptainImage(Namecaptain[4], captain[4]);
    displayTeamLogoImage(Nameteam[4], logo[4]);
  }
  //Display Newcastle
  else  if (mouseX > (trackposition+(widthofbars*4)) && mouseX < (trackposition+(widthofbars*5)) && mouseY >350) {
    displayBestPlayerImage(NamebestPlayer[5], bestPlayer[5]);
    displayCaptainImage(Namecaptain[5], captain[5]);
    displayTeamLogoImage(Nameteam[5], logo[5]);
  }
  //Display Tottenham
  else  if (mouseX > (trackposition+(widthofbars*5)) && mouseX < (trackposition+(widthofbars*6)) && mouseY >350) {
    displayBestPlayerImage(NamebestPlayer[6], bestPlayer[6]);
    displayCaptainImage(Namecaptain[6], captain[6]);
    displayTeamLogoImage(Nameteam[6], logo[6]);
  }
  //Display 
  else  if (mouseX > (trackposition+(widthofbars*6)) && mouseX < (trackposition+(widthofbars*7)) && mouseY >350) {
    displayBestPlayerImage(NamebestPlayer[7], bestPlayer[7]);
    displayCaptainImage(Namecaptain[7], captain[7]);
    displayTeamLogoImage(Nameteam[7], logo[7]);
  }
  //Display Crystall Palace
  else  if (mouseX > (trackposition+(widthofbars*7)) && mouseX < (trackposition+(widthofbars*8)) && mouseY >350) {
    displayBestPlayerImage(NamebestPlayer[8], bestPlayer[8]);
    displayCaptainImage(Namecaptain[8], captain[8]);
    displayTeamLogoImage(Nameteam[8], logo[8]);
  }
  //Display Aston Villa 
    else  if (mouseX > (trackposition+(widthofbars*8)) && mouseX < (trackposition+(widthofbars*9)) && mouseY >350) {
    displayBestPlayerImage(NamebestPlayer[9], bestPlayer[9]);
    displayCaptainImage(Namecaptain[9], captain[9]);
    displayTeamLogoImage(Nameteam[9], logo[9]);
  }
  //Display Wolves
  else  if (mouseX > (trackposition+(widthofbars*9)) && mouseX < (trackposition+(widthofbars*10)) && mouseY >350) {
    displayBestPlayerImage(NamebestPlayer[10], bestPlayer[10]);
    displayCaptainImage(Namecaptain[10], captain[10]);
    displayTeamLogoImage(Nameteam[10], logo[10]);
  }
  //Display Luton town
  else  if (mouseX > (trackposition+(widthofbars*10)) && mouseX < (trackposition+(widthofbars*11)) && mouseY >350) {
    displayBestPlayerImage(NamebestPlayer[11], bestPlayer[11]);
    displayCaptainImage(Namecaptain[11], captain[11]);
    displayTeamLogoImage(Nameteam[11], logo[11]);
  }
  //Display Nottingham Forest
  else  if (mouseX > (trackposition+(widthofbars*11)) && mouseX < (trackposition+(widthofbars*12)) && mouseY >350) {
    displayBestPlayerImage(NamebestPlayer[12], bestPlayer[12]);
    displayCaptainImage(Namecaptain[12], captain[12]);
    displayTeamLogoImage(Nameteam[12], logo[12]);
  }
  //Display Fulham United
  else  if (mouseX > (trackposition+(widthofbars*12)) && mouseX < (trackposition+(widthofbars*13)) && mouseY >350) {
    displayBestPlayerImage(NamebestPlayer[13], bestPlayer[13]);
    displayCaptainImage(Namecaptain[13], captain[13]);
    displayTeamLogoImage(Nameteam[13], logo[13]);
  }
  //Display Brentford fc
  else  if (mouseX > (trackposition+(widthofbars*13)) && mouseX < (trackposition+(widthofbars*14)) && mouseY >350) {
    displayBestPlayerImage(NamebestPlayer[14], bestPlayer[14]);
    displayCaptainImage(Namecaptain[14], captain[14]);
    displayTeamLogoImage(Nameteam[14], logo[14]);
  }
  //Display Burnley
  else  if (mouseX > (trackposition+(widthofbars*14)) && mouseX < (trackposition+(widthofbars*15)) && mouseY >350) {
    displayBestPlayerImage(NamebestPlayer[15], bestPlayer[15]);
    displayCaptainImage(Namecaptain[15], captain[15]);
    displayTeamLogoImage(Nameteam[15], logo[15]);
  }
  
  //Display Wolves
  else  if (mouseX > (trackposition+(widthofbars*15)) && mouseX < (trackposition+(widthofbars*16)) && mouseY >350) {
    displayBestPlayerImage(NamebestPlayer[16], bestPlayer[16]);
    displayCaptainImage(Namecaptain[16], captain[16]);
    displayTeamLogoImage(Nameteam[16], logo[16]);
  }
  //Display Luton town
  else  if (mouseX > (trackposition+(widthofbars*16)) && mouseX < (trackposition+(widthofbars*17)) && mouseY >350) {
    displayBestPlayerImage(NamebestPlayer[17], bestPlayer[17]);
    displayCaptainImage(Namecaptain[17], captain[17]);
    displayTeamLogoImage(Nameteam[17], logo[17]);
  }
  //Display Nottingham Forest
  else  if (mouseX > (trackposition+(widthofbars*17)) && mouseX < (trackposition+(widthofbars*18)) && mouseY >350) {
    displayBestPlayerImage(NamebestPlayer[18], bestPlayer[18]);
    displayCaptainImage(Namecaptain[18], captain[18]);
    displayTeamLogoImage(Nameteam[18], logo[18]);
  }
  //Display Bournemouth 
  else  if (mouseX > (trackposition+(widthofbars*18)) && mouseX < (trackposition+(widthofbars*19)) && mouseY >350) {
    displayBestPlayerImage(NamebestPlayer[19], bestPlayer[19]);
    displayCaptainImage(Namecaptain[19], captain[19]);
    displayTeamLogoImage(Nameteam[19], logo[19]);
  }
  
}




void keyPressed() {


  //refresh background
  // background(0);
  //if  W is pressed show 
  if (key == 'W' || key =='w') {
    barGraphs(extractWinData(lines), extractTeamNameData(lines));
    textSize(20);
    text("Bar Graph representing Wins  for English  Primier league clubs for the 2023/2024 season", 100, 100);
    textSize(12);
  } else if (key == 'D' || key =='d') {
    barGraphs(extractDrawData(lines), extractTeamNameData(lines));
    textSize(20);
    text("Bar Graph representing Draws  for English  Premier league clubs for the 2023/2024 season", 100, 100);
    textSize(12);
  } else if (key == 'L' || key =='l') {
    barGraphs(extractLossData(lines), extractTeamNameData(lines));
    textSize(20);
    text("Bar Graph representing Losses  for English  Premier league clubs for the 2023/2024 season", 100, 100);
    textSize(12);
  } else if (key == 'I' || key =='i') {
    barGraphs(extractIndisciplineData(lines), extractTeamNameData(lines));
    textSize(20);
    text("Bar Graph representing Player Indiscipline for English  Premier league clubs for the 2023/2024 season", 100, 100);
    textSize(12);
  } else if (key == 'P' || key == 'p') {
    barGraphs(extractPointsData(lines), extractTeamNameData(lines));
    textSize(20);
    text("Bar Graph representing Points garnered by  English  Premier league clubs for the 2023/2024 season", 100, 100);
    textSize(12);
  }
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


    fill(red, green, 50 );
    rect(x+barWidthOffset, height-(text_offset+barHeight), widthOfBars, barHeight);
    fill(255, 0, 0);
    text(names[i], x+barWidthOffset, height-(text_offset/2));
    red=i*color_offset;
    green-=color_offset;
  }

  stroke(255, 265, 0);
  line(barWidthOffset, barHeightOffset, barWidthOffset, 10);
  line(barWidthOffset, barHeightOffset, width-10, barHeightOffset);
}
// this function gets the total number of wins per team and returns an array of team wins
int [] extractWinData(String [] heights) {
  int [] heightData = new int [heights.length-1];

  for (int i =1; i < heights.length; i++) {
    String [] words = splitTokens(heights[i], ",");
    int win = int(words[2]);
    heightData[i-1] = win*10;
  }
  return heightData;
}

// this function gets the total number of Losses per team and returns an array of team Losses
int [] extractLossData(String [] heights) {
  int [] heightData = new int [heights.length-1];

  for (int i =1; i < heights.length; i++) {
    String [] words = splitTokens(heights[i], ",");
    int win = int(words[4]);
    heightData[i-1] = win*10;
  }
  return heightData;
}
// this function gets the total number of wins per team and returns an array of team wins
int [] extractDrawData(String [] heights) {
  int [] heightData = new int [heights.length-1];

  for (int i =1; i < heights.length; i++) {
    String [] words = splitTokens(heights[i], ",");
    int win = int(words[3]);
    heightData[i-1] = win*10;
  }
  return heightData;
}
// this function gets the total number of yellow cards and red cards divided by 3 and adds them, multiplies the result by 10 and returns this value as indiscipline data 
int [] extractIndisciplineData(String [] redYellow) {
  int [] heightData = new int [redYellow.length-1];

  for (int i =1; i < redYellow.length; i++) {
    String [] words = splitTokens(redYellow[i], ",");
    int red = int(words[9]);
    int yellow =int(words[10]);
    heightData[i-1] = (red+yellow)*2;
  }
  return heightData;
}
// this function gets the total number of POINTS garnered per team and returns an array of team wins
int [] extractPointsData(String [] heights) {
  int [] heightData = new int [heights.length-1];

  for (int i =1; i < heights.length; i++) {
    String [] words = splitTokens(heights[i], ",");
    int win = int(words[8]);
    heightData[i-1] = win*5;
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
      //update name to the second word os the split name
      name = shortName[1];
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

//display bestplayerImage
void displayBestPlayerImage (String Bestplayer, PImage bestPlayerImage) {
  fill(200, 200, 0);
  image(bestPlayerImage, 550, 250, 100, 100);
  text("Best Player:"+Bestplayer, 550, 370);
}
//display the team captain's name and Image
void displayCaptainImage (String Teamcaptain, PImage captainImage) {
  fill(200, 200, 0);
  image(captainImage, 400, 250, 100, 100); //display image
  text("Team C:"+Teamcaptain, 400, 370);//display name
}
//display the team's bestplayer name and image
void displayTeamLogoImage (String Teamname, PImage logoImage) {
  fill(200, 200, 0);
  image(logoImage, 250, 250, 100, 100);//display image
  text("Team:"+Teamname, 250, 370);//display name
}

//get the name of the best player
String [] extractbestPlayerNameData (String [] BestPlayerName) {
  String [] nameData = new String [BestPlayerName.length-1];

  for (int i =1; i < BestPlayerName.length; i++) {
    String [] words = splitTokens(BestPlayerName[i], ",");
    String name =words[13];
    nameData[i-1] = name;
  }
  return nameData;
}
