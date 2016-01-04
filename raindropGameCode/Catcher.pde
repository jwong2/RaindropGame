//class for the bucket and the game
class Catcher {
  //variable declaration
  float w, h;
  int score;
  float raindropCount, raindropsCaught; //needs to be float since int/int returns an int
  PVector loc;
  Catcher(float widthb, float heightb) {
    //constructor assigns class variables
    w = widthb;
    h = heightb;
    score = 0;
    raindropCount = 0;
    rectMode(CENTER);
  }
  
  //display the catcher
  void display() {
    loc = new PVector(mouseX, mouseY);
    fill(0);
    rect(mouseX, mouseY, w, h);
    //display an ellipse so it looks like a bucket
    ellipse(mouseX, mouseY + h/2, w, h);
    
  }
  
  //adds to raindrop count
  void addRaindropCount() {
    raindropCount += 1;
  }
  
  //adds the score
  void addScore(int scoreToAdd) {
    score += scoreToAdd;
    raindropsCaught += 1;
  }
  
  //check if the game is over
  boolean isGameOver() {
    if(score >= 100) {
      return true;
    } return false;
  }

}