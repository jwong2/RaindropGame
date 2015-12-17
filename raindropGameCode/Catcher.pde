class Catcher {
  float w, h;
  PVector loc;
  Catcher(float widthb, float heightb) {
    w = widthb;
    h = heightb;
    rectMode(CENTER);
  }
  
  void display() {
    loc = new PVector(mouseX, mouseY);
    fill(0);
    rect(mouseX, mouseY, w, h);
    
  }

}