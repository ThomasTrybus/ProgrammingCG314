PImage doggo;
PFont liberator;
void setup() {
  liberator = createFont("liberator.otf", 36);
  doggo = loadImage("howard.jpg");
  size(900, 900);
  textFont(liberator);
}
void draw() {
  background(mouseX, 200, 100);
  textSize(50);
  image(doggo, mouseX,mouseY,50,50);
  text("Smol Pupper loves you", mouseX, mouseY);
}