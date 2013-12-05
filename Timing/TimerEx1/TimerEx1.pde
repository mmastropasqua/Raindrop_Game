color c = color(0);
int time = 2000; 

void setup() { 
  size(displayWidth, displayHeight);
  frameRate(30);
  textSize(200);
  textAlign(CENTER);
}

void draw() {
  background(c);
  if (frameCount%60 == 0) {
    c = color(random(255), random(255), random(255));
  }

  text(millis()/1000, width/2, height/2);
}

