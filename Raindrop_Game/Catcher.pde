class Catcher {
  PVector loc;
  int d;

  Catcher() {
    loc = new PVector(mouseX, height-100);
    d = 40;
  }

  void display() {
    fill(random(255), random(255), random(255));
    ellipse(loc.x, loc.y, d, d/4);
  }
}

