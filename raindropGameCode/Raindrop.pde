class Raindrop {
  PVector loc, vel, accel;
  float diam;
  color hue;
  Raindrop(float xpos, float ypos, color colorOfRaindrop) {
    //constructor assigns class variables
    loc = new PVector(xpos, ypos);
    vel = new PVector(0, 0);
    accel = new PVector(0, 0.4);
    hue = colorOfRaindrop; 
    diam = 20;
  }
  
  //move downwards
  void fall() {
    vel.add(accel);
    loc.add(vel);
  }
  
  //display the raindrop
  void display() {
    fill(hue);
    ellipse(loc.x, loc.y, diam, diam);
  }
  
  //check if it's in contact with the bucket
  boolean isInContactWith(Catcher b) {
    //add 3 to score if raindrop is green and 1 to score if raindrop is something else (blue)
    if(loc.dist(b.loc) < b.w - diam) {
      if(hue == color(0,255,0)) {
        b.addScore(30);
      }
      else {
        b.addScore(1);
       } 
       return true;
    } else {
      return false;
    }
  }
  
}