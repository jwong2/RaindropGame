class Bucket {
  float w, h;
  Bucket(float widthb, float heightb) {
    w = widthb;
    h = heightb;
    rectMode(CENTER);
  }
  
  void display() {
    fill(0);
    rect(mouseX, mouseY, w, h);
  }
  
  void catchDrops(Raindrop r) {
    r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    r.display();      //display the raindrop
    if (r.isInContactWith(mouse)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      r.reset();                         //if it is, reset the raindrop
    }
    if (r.loc.y > height + r.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      r.reset();                           //if it does, reset the raindrop
    }
  }
}