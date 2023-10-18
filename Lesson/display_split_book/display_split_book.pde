
 int i ;String [] word;

void setup(){
  size(500,500);
   String [] data = loadStrings("data.txt");
   splitString(data);
    i =0;
}

void draw(){
  frameRate(6qa);
 background(0);
if(i >=word.length){
  i = 0;}
 text(word[i],height/2,width/2);
i++;
}
void splitString( String [] lines){
  
 String book = join(lines," ");
 word = splitTokens(book," ");
}
