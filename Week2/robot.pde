int x = 60;
int y = 420;
int bodyHeight = 110;
int neckHeight = 140;
int radius = 45;
int ny = y - bodyHeight - neckHeight - radius; 

size(500,500);
smooth();
strokeWeight(2);
background(204);
ellipseMode(RADIUS);
//neck
stroke(#AD1010); 
line(x+2, y-bodyHeight, x+2, ny);
line(x+12, y-bodyHeight, x+12, ny);
line(x+22, y-bodyHeight, x+22, ny);
//antennae
line(x+12, ny, x-18, ny-43);
line(x+12, ny, x+42, ny-99); 
line(x+12, ny, x+78, ny+15);
//body
noStroke();
fill(#832213);
ellipse(x, y-33, 33, 33);
fill(0);
rect(x-45, y-bodyHeight, 90, bodyHeight-33);
fill(#832213);
rect(x-45, y-bodyHeight+17, 90, 6);
//head 
fill(0);
rect(x-20, bodyHeight, 90,90);
fill(#F3FF4D);
rect(x-10, bodyHeight+20, 30,30);
rect(x+40, bodyHeight+10, 20,30);
ellipse(x+20, bodyHeight+75, 5,5);
fill(#832213);