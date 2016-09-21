
int button = 0 ;
PFont ariale;


void setup() {
  size (1920, 1080);
  stroke(77);
  ariale = createFont("Arial",16,true);
  background(255);
  smooth();
}


boolean boundaryTruth(int ab, int bc, int cd, int ef) {
  boolean truth;
  if (mouseX>ab && mouseX<bc && mouseY>cd && mouseY<ef)
  {
    return true;
  } else {
    return false;
  }
}

void draw() {
  fill (255);
  int a, b;
  a= 75;
  b=80;
  float randomShake;

  ellipse (a, a, b, b);
  ellipse(a, 2*a+b, b, b);
  ellipse(a, b+70, b, b);
  
  

  if (boundaryTruth(a, a+b, b, 2*b)) {
    fill(255, 0, 0);  
    ellipse (a, a, b, b);
    button = 1;
    println("Pencil Tool");
    text("Pencil",b,b-10);
    
  } 
  else if (boundaryTruth(a, a+b, 2*a+b, 2*a+2*b)) {
    fill(255, 0, 0);  
    ellipse(a, 2*a+b, b, b);
    button =2;
    println("Block Stamp");
    text("Block Stamp",b,2*a+b-10);
  }
 
  else if (boundaryTruth(a, b+70, b+70, 5*a+5*b)) {
    fill(255, 0, 0);  
    ellipse(a, b+70, b, b);
    button = 5;
    println("Clear Window");
    text ("Clear Window", b, b+70);
  }
  else {
    fill(255);
  }
//pencil
  if (button == 1 && mousePressed)
  {
    
    fill(20);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  
  //bubble
 
  else if (button ==2 && mousePressed){
    fill(#55E4FF);
    if (mousePressed) {
       float targetX= mouseX;
       float targetY= mouseY;
           a+= (targetX- a);
          b+= (targetY -b);
               ellipse(a, b, 12, 12);
             } else {
              ellipse(mouseX,mouseY, 12, 12);
         }
  }
  
  
 
 //clear
  else if (button == 5 && mousePressed)
  {
    clear();
    background (255);
  }
  stroke(0);
  
}