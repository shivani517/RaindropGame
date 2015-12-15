class Raindrop {
  PVector loc, vel;
  float diam;
  color c;

  Raindrop(float x, float y) {
    diam=50;
    loc = new PVector(random(width), 0);
    vel = new PVector(0, random(2));
    c= color(255);
  }

  void display() {
    fill(c);
    ellipse(loc.x, loc.y, diam, diam);
  }

  void fall() {
    loc.add(vel);
    vel.mult(1.5);
    vel.limit(30);
  }

  boolean isInContactWith(PVector mouse) {
    if (loc.dist(mouse)<= diam/2) {
      return true;
    } else return false;
  }

  void reset() {
     loc = new PVector(random(width), 0);
    vel = new PVector(0, random(2));
  }
}