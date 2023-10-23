int x = 0;
void setup(){
size(500,500);
background(255);}
void draw(){
  
  myLine(100,7);
}
void myLine(float yIntercept, float slope){
   while(x <=  width){
  point(x,slope*x+yIntercept);
x++;
}
}
