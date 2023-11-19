MOtienoThingy creature1 ;

void setup(){
  size(1000,1000);
  background(0);

creature1 = new MOtienoThingy(this);
}
void draw(){
  creature1.display();
}
