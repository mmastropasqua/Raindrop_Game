class Rain {
  PVector loc;
  PVector vel;
  int d;
  Rain() {
    loc = new PVector(random(width), 0);
    vel = new PVector(random(-2, 2), random(1, 4));
    d = 5;
  }

  void storm() {
    strokeWeight(1);
    stroke(0,128,255);
    fill(0,75,255);
    ellipse(loc.x, loc.y, d, d);
  }

  void fall() {
    loc.add(vel);
  }
  void fodrizzle() {
    if (loc.y > height) {
      loc.y = 0;
    }
  }
}
