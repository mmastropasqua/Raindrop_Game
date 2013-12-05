color c = color(0);
int currenttime = 0; 
int oldtime = 0;
int timechange = 0;
int x;
int y;
int xc;
int d;
boolean fireball;

void setup() { 
  size(displayWidth, displayHeight);
  frameRate(30);
  textSize(200);
  textAlign(CENTER);
  y=height/2;
  x = 10;
  xc = x+70;
  d = 25;
  fireball = false;
}

void draw() {
  background(c);
  currenttime = millis();
  timechange = currenttime - oldtime;
  fill(255);
  ellipse(x+60, y-25, 50, 50);
  line(x+60, y, x+60, y+40);
  line(x+40, y+20, x+80, y+20);
  line(x+60, y+40, x+40, y+60);
  line(x+60, y+40, x+80, y+60);
  if (timechange >= 2000) {
    c = color(random(255), random(255), random(255));
    fireball = true;
    oldtime = currenttime;
  }
  if (fireball == true) {
    fill(255,128,0);
    ellipse(xc, height/2, d, d);
    xc+=25;
  }
  if (xc > width+d/2) {
    xc = x+70;
    fireball = false;
  }
  fill(255);
  text(millis()/1000, width/2, height/2);
}

