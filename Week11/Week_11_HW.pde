//fast foward by mouse click through one of the greatest scenes of any movie ever. 
//also when you move your mouse the colors should like change and stuff randomly. 


import processing.video.*;
Movie myMovie;
float factor = 0.1;
int x = 0;


void setup() {
  size (600,360);
  frameRate(30);
  myMovie = new Movie(this, "Tommy_Wiseau.mp4");
  myMovie.speed(1); 
  myMovie.loop();
 
 }

void draw() {
  if (myMovie.available()) {
    myMovie.read();
    tint(random(1,255),mouseY, mouseY);
  }
  image(myMovie, 0, 0);
  //for (int x = 0; x < width; x++){//image manipulation
   // for (int y = 0; y < height; y++){
     // int theIndex = x + y * width;
      //float r = 255 - (red(video.pixels[theIndex])) * factor;
      //float g = 255 - (green(video.pixels[theIndex])) * factor;
      //float b = 255 - (blue(video.pixels[theIndex])) * factor;
   
      //pixels[theIndex] = color(r, g, b);
}

void mousePressed(){
  myMovie.speed(3);
 
}


  