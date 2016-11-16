int[]random;

void setup () {
  size(480, 120);
  Table stats = loadTable("RandomStat.csv", "header");
  random = new int [stats.getRowCount()-2];
  for (int i=0; i<stats.getRowCount()-2; i++) {
    random[i] = stats.getInt(i, 4);
  }
}


void draw() {
  background(255);
  stroke(255, 0, 0);
  noFill();
  beginShape();
  for (int i = 0; i < random.length; i++) {
    float x = map(i, 0, random.length-1, 20, 460);
    float y = map(random[i], 0, 60, 100, 20);
    stroke(200);
    line(x, 0, x, height);
    stroke(255, 0, 0);
    vertex(x,y);
  }
  endShape();
  
}