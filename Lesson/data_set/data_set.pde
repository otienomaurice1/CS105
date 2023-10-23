void setup() {
size(500,500);
background(0);
  String [] lines = loadStrings("titanic.csv");
  printName(lines);
  averageFare(lines);
  survivors(lines);
  survivorsPerClass(lines);
}

void printName(String [] loadedStrings) {
  String [] playerInfo = splitTokens(loadedStrings[1], ",");
  String playerName = playerInfo[2];
  println(playerName);
}

// average fare function
void averageFare(String [] loadedStrings) {
  float sum = 0;
  for (int i = 1; i< loadedStrings.length; i++) {
    String [] playerInfo = splitTokens(loadedStrings[i], ",");
    sum += float(playerInfo[7]);
  }
  float averageFare = sum/loadedStrings.length;
  println(averageFare);
}

//
void survivors(String [] loadedStrings) {
  int survived = 0;
  for (int i = 1; i< loadedStrings.length; i++) {
    String [] playerInfo = splitTokens(loadedStrings[i], ",");
    if (int(playerInfo[0]) == 0) {
      survived++;
    }
  }
  println(survived);
}

void survivorsPerClass(String [] loadedStrings) {
  int survivedClass1 = 0, survivedClass2 = 0, survivedClass3 = 0;
  for (int i = 1; i< loadedStrings.length; i++) {
    String [] playerInfo = splitTokens(loadedStrings[i], ",");
    if (int(playerInfo[0]) == 1) {
      if (int(playerInfo[1]) == 1) {
        survivedClass1++;
      } else if (int(playerInfo[1]) == 2) {
        survivedClass2++;
      } else if (int(playerInfo[1]) == 3) {
        survivedClass3++;
      }
    }
  }
  String class1 = "The number of people from class 1 who survived is "+ survivedClass1;
  String class2 = "The number of people from class 2 who survived is "+ survivedClass2;
  String class3 = "The number of people from class 3 who survived is "+ survivedClass3;
  text(class1,50,50);
  text(class2,50,70);
  text(class3,50,90);
}
