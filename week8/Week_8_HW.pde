
Peppers red;
Peppers yellow;
Peppers green;
Cat cat;
Harambe Gorilla;
Harambe Gorilla2;
Harambe Gorilla3;

void setup() {
  size(800, 900);


  red=new Peppers (width/2, height/2, 60, color(240, 29, 29));
  yellow=new Peppers (width/4, height/4, 60, color(240, 216, 36));
  green=new Peppers (width/1.2, height/8, 60, color(68, 129, 74));
  cat=new Cat (500, 500, 0, 0, 255);
  Gorilla=new Harambe(width/2, height/2, 50, color(135, 140, 180));
  Gorilla2=new Harambe(width/2,height/2, 100, color(51,214,37));
 
}

void draw() {
  background(0);


  if (mousePressed) {
    red.hover();
    yellow.hover();
    green.hover();
   Gorilla2.display();
   
  } else {
    red.drop();
    yellow.drop();
    green.drop();
    Gorilla.display();
    cat.display();

  }

  
  

  red.display();
  yellow.display();
  green.display();
}