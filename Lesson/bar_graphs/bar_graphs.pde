
void setup() {
  size(500, 500);
  background(0);
  String [] lines = loadStrings("heights.csv");
  // int [] barHeights = {148, 365, 90, 400};
  barGraphs(extractHeightData(lines), extractNameData(lines));
  // extractHeightData(lines);
}
void barGraphs(int [] heights, String [] names) {

  for (int i =0; i<heights.length; i++) {
    rectMode(CORNER);
    int widthOfBars = width/heights.length;
    int x=i*widthOfBars;
    int barHeight = heights[i];
    int text_offset = 20;
    rect(x, height-(text_offset+barHeight), widthOfBars, barHeight);
    text(names[i], x, height-(text_offset/2));
  }
}

int [] extractHeightData(String [] heights) {
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


String [] extractNameData(String [] heights) {
  String [] nameData = new String [heights.length-1];

  for (int i =1; i < heights.length; i++) {
    String [] words = splitTokens(heights[i], ",");
    String name =words[0];
    nameData[i-1] = name;
  }
  return nameData;
}
