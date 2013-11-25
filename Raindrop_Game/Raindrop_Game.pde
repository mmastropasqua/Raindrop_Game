Rain[] drops = new Rain[9001];
Catcher c;

void setup() {
  size(displayWidth, displayHeight);
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Rain();
  }
  c = new Catcher();
  frameRate(90000000);
}

void draw() {
  background(0, 0, 0);
  for (int i = 0; i < drops.length; i++) {
    drops[i].storm();
    drops[i].fall();
    drops[i].fodrizzle();
  }
  Catcher.display();
}
