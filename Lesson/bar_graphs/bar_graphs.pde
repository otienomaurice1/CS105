
void setup() {
  size(500, 500);
  background(0);
  String [] lines = loadStrings("heights.csv");
  // int [] barHeights = {148, 365, 90, 400};
  barGraphs(extractHeightData(lines), extractNameData(lines));
  // extractHeightData(lines);
}
void barGraphs(int [] heights, String [] names) {
 int red = 10,green = 220, color_offset = 220/heights.length;
  for (int i =0; i<heights.length; i++) {
    int z = width-40;
    rectMode(CORNER);
    int widthOfBars = z/heights.length;
    int x=i*widthOfBars;
    int barHeight = heights[i];
    int text_offset = 35;
   
    fill(red,green,100);
    rect(x+20, height-(text_offset+barHeight), widthOfBars, barHeight);
    fill(0,0,255);
    text(names[i], x+20, height-(text_offset/2));
    red=i*color_offset;
    green-=color_offset;
  }
  stroke(255,265,0);
  line(20,height-35,width,height-35);
  line(20,0,20,height-35);

  
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
