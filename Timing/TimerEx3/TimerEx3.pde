color c = color(0);
int currenttime = 0; 
int oldtime = 0;
int timechange = 0;
float d;
float x;
float y;
float d2;
float x2;
float y2;
float d3;
float x3;
float y3;
color ce = color(random(255), random(255), random(255));
color ce2 = color(random(255), random(255), random(255));
color ce3 = color(random(255), random(255), random(255));


void setup() { 
  size(displayWidth, displayHeight);
  frameRate(30);
  textSize(100);
  textAlign(CENTER);
  d = random(10, 250);
  x = random(d, width-d);
  y = random(d, height-d);
  d2 = random(10, 250);
  x2 = random(d, width-d);
  y2 = random(d, height-d);
  d3 = random(10, 250);
  x3 = random(d, width-d);
  y3 = random(d, height-d);
}

void draw() {
  background(c);
  currenttime = millis();
  timechange = currenttime - oldtime;
  fill(ce);
  ellipse(x, y, d, d);
  fill(ce2);
  ellipse(x2, y2, d2, d2);
  fill(ce3);
  ellipse(x3, y3, d3, d3);
  if (timechange >= 3000) {
    c = color(random(255), random(255), random(255));
    ce = color(random(255), random(255), random(255));
    color ce2 = color(random(255), random(255), random(255));
    color ce3 = color(random(255), random(255), random(255));
    d = random(10, 250);
    x = random(d, width-d);
    y = random(d, height-d);
    d2 = random(10, 250);
    x2 = random(d, width-d);
    y2 = random(d, height-d);
    d3 = random(10, 250);
    x3 = random(d, width-d);
    y3 = random(d, height-d);
    oldtime = currenttime;
  }
  fill(255);
  text(millis()/1000, width/2, height/2);
}

