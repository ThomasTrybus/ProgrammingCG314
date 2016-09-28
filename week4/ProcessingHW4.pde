PImage doggo;
PImage yee;
PImage memeLord;

void setup() {
  size (500, 500);
  background (#430664);
  noStroke ();
  fill (#E8C2FC);
  rect ( 0 , 430, 500, 70);

textSize (12);
text("Press 1", 160, 420);
doggo = loadImage("doggo.png");
textSize (12);
text("Press 2", 240, 420);
yee = loadImage("yee.png");
textSize (12);
text("Press 3", 320, 420);
memeLord = loadImage("memeLord.png");

image (yee, 150, 440, 50, 50);
image (doggo, 228, 485, 65, -38);
image (memeLord, 314, 440, 50, 50);

}

void draw(){
  if (mousePressed) {
    if (key == '1') {
        image (yee, mouseX, mouseY, 50, 50);
    }  else if (key == '2'){
       image (doggo, mouseX, mouseY, 65, -38);
    }  else if (key == '3'){
      image (memeLord, mouseX, mouseY, 50, 50);
    }  else if (key == '4'){
       textSize (18);
       fill (#FF7EAB);
       text("meme", mouseX, mouseY);
    } else if (key == '5'){
      textSize(32);
      fill(#FF7EAB);
      text("Aesthetics", mouseX,mouseY);
    }
    
    }
  }