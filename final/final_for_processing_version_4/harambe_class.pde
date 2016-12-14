
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
    //img = loadImage("realHarambe.JPG");
    if (isDead == false) {
    XW = (x/2)+offsetX;
    YW = (y/2)+offsetY;
    ZW +=speed;
    z = ZW;
    pushMatrix();
    stroke(1);
    fill(180,200,190);
    translate(XW, YW, ZW);
    
    sphere(80);
  
    popMatrix();
    println(XW);
    }
    
  }
void destroy(){
  println(mouseX);
if (mouseX > XW - 40 && mouseY < XW +40 && mouseX < YW +240 && mouseY> YW - 40){
  isDead=true;
}
if (isDead == true){
   harambeMeme.add(new harambe(1,random(-400,400), random(-400,400)));
}
}

  }