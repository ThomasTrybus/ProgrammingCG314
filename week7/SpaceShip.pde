class SpaceShip{
  float x;
  float y;
  float size;
  color theColor;
  
  SpaceShip(float tempX, float tempY, float tempSize, color tempColor){
    x = tempX;
    y = tempY;
    size = tempSize;
    theColor = tempColor;
  }
  void display(){
    noStroke();
    fill(theColor);
    rectMode(CENTER);
    rect(x,y,size,size*2);
 rect(x,y+30,size*2,size);   
 triangle(x+size/2,y-size-100,x+size/2,y+size/4,x+size,y);
  triangle(x+-size+10,y-size+-95,x+-size+-23,y+size+-69,x+size,y+47);
  ellipse(x+size/6,y+size+-139,size/2,size/2);
  triangle(x+size-64,y+size-101,x+size+-88,y+size+194,x+size+15,y+81);
 
  }
}

    