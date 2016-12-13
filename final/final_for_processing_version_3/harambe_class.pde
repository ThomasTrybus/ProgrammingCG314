
class harambe {
  boolean isDead;
  PImage img; 
  PShape cube;
  float x, y, speed;
  PShape object;
  float z = 0;
  float ZW;
  float YW;
  float XW;
  float offsetX,offsetY;
  harambe(float Speed, float ToffsetX, float ToffsetY) {
    x = width;
    y = height;
    offsetX = ToffsetX;
    offsetY = ToffsetY;
    speed = Speed;
    isDead = false;
    
  }
  void moving() {
    img = loadImage("realHarambe.jpg");
    if (isDead == false) {
    XW = (x/2)+offsetX;
    YW = (y/2)+offsetY;
    ZW +=speed;
    z = ZW;
    pushMatrix();
    translate(XW, YW, ZW);
    
    cube = box(80);
    cube.setTexture(img);
    popMatrix();
    println(XW);
    }
    
  }
void destroy(){
  println(mouseX);
if (mouseX > XW - 40 && mouseX < XW +40 && mouseY < YW +240 && mouseY > YW - 40){
  isDead=true;
}
if (isDead == true){
   harambeMeme.add(new harambe(2,random(-400,400), random(-400,400)));
}
}

  }