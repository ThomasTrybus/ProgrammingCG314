SpaceShip Ship;
float x;
float y;
float size;
color theColor;

void setup(){
  size(800,600);
  x=width/2;
  y=height/2;
  size = 60;
Ship=new SpaceShip(width/2,height/2, 50, color(135,140,180));
}
void draw(){
  background(0);
  Ship.display();
}