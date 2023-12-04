public class hardwareEngineer {
  //declare the default constructor 
  hardwareEngineer() {
  }
  
  //declare a seconadry constructor
  hardwareEngineer(int x) {
  }
  //declare the display method
  //this method displays the physical features of the engineer 
  public void display() {
  }

  public void speak( String engineer1_words) {
  }

  public String arrayWords() {
    //declare an array of words to be spoken by the software engineer
    String [] speech = {" HEr", 
      "Hers"};
    //declare variable to hold the specific word we want to access
    String word = " ";
    //LOOP THROUGH ARRAY
    for (int i = 0; i< speech.length; i++) {
      word = speech[i];
    }
    return word;
  }
}
