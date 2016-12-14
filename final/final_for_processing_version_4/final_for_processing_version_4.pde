
//this was originally going to be a game but I turned it into an interactive experience. I tried to add a harambe texture to the project but it proved 
//difficult given the time we had, so for now you have to unfortunetly use your imagination. essentailly the concept is that Harambe, or really any 
//meme you wanna put in its place, will never die, but live on and only grow the more you talk about it, so when your mouse hovers over the 
//sphere, the sphere multiplies continuously until it fills up the entire screen, and never stops, until who knows what happens. 
// it may not be the more intensive thing ever but IMO it's a pretty good though and is esentially the experience of interacting with watchingf 
//paint dry on a wall. It's almost meme worthy in and of itself. 

ArrayList <harambe> harambeMeme = new ArrayList<harambe>();



int harambeCount = 2;
boolean titleScreen;
void setup() {
  size(800, 600, P3D);
  for (int i = 0; i < harambeCount; i++) {
   harambeMeme.add(new harambe(2,random(-400,400), random(-400,400)));
   titleScreen = true;
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
 
 