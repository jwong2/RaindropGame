class Raindrop {
  PVector loc, vel, accel;
  float diam;
  Raindrop(float xpos, float ypos) {
    loc = new PVector(xpos, ypos);
    vel = new PVector(0, 0);
    accel = new PVector(0, 0.4);
    diam = 10;
  }
  
  void fall() {
    vel.add(accel);
    loc.add(vel);
  }
  void display() {
    fill(255);
    ellipse(loc.x, loc.y, diam, diam);
  }
  boolean isInContactWith(Catcher b) {
    if(loc.dist(b.loc) < 50) {
      return true;
    } else {
      return false;
    }
  }
  
  void reset() {
    loc.y = 0;
    vel.y = 0;
  }
}