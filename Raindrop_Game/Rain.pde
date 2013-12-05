class Rain {
  PVector loc;
  PVector vel;
  int d;
  int droplimit;
  int dropcount;

  Rain() {
    loc = new PVector(random(width), 0);
    vel = new PVector(random(-1, 1), random(1, 2));
    d = 5;
    droplimit = 10;
    dropcount = 0;
  }

  void storm() {
    strokeWeight(1);
    stroke(0, 128, 255);
    fill(0, 75, 255);
    ellipse(loc.x, loc.y, d, d);
    dropcount++;
    }
  

  void fall() {
    loc.add(vel);
  }
  void fodrizzle() {
    if (loc.y > height) {
      loc.set(random(width), 0) ;
    }
  }
}

