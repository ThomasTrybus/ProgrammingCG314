ArrayList <harambe> harambeMeme = new ArrayList<harambe>();
int harambeCount = 10;
void setup() {
  size(800, 600, P3D);
  for (int i = 0; i < harambeCount; i++) {
   harambeMeme.add(new harambe(2,random(-400,400), random(-400,400)));
  }
}

void draw() {
  background(0);
  rotateX(radians(-14));
   for (int i = 0; i<harambeMeme.size(); i++) {
   harambeMeme.get(i).moving();
    harambeMeme.get(i).destroy();
  
  }
 
 
}