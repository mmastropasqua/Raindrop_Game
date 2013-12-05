class Catcher {
  int d;

  Catcher() {
    d = 80;
  }

  void display() {
    fill(random(255), random(255), random(255));
    ellipse(mouseX, height-100, d, d/4);
  }
}

