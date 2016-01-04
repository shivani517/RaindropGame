class Raindrop {
  PVector loc, vel;
  float diam;
  color c;

  Raindrop(float x, float y) {
    diam=50;
    loc = new PVector(x, y);
    vel = new PVector(0, random(2));
    c= color(255);
  }

  void display() {
    fill(#18F55E);
    ellipse(loc.x, loc.y, diam, diam);
  }

  void fall() {
    loc.add(vel);
    vel.mult(1.1);
    vel.limit(30);
  }

  boolean isInContactWith(Bucket other ) {
    if (loc.dist(other.loc)<= diam/2 + other.diam/2) {
      return true;
    } else { 
      return false;
    }
  }

  void reset() {
    loc = new PVector(random(width), 0);
    vel = new PVector(0, random(2));
    println("resetting in frame " + frameCount);
  }
}