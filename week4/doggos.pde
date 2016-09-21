PImage bigDoggoBork;
PImage smolPupper;
void setup(){
  size(640,480);
  bigDoggoBork = loadImage("howardGang.jpg");
  smolPupper = loadImage("howard.jpg");
 
}

void draw(){
 
  image(bigDoggoBork,0,0,640,480);
  image(smolPupper, mouseX,mouseY,pmouseX,pmouseY);
}