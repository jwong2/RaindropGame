//PVector mouse;   //declare a P
ArrayList<Raindrop> r = new ArrayList<Raindrop>();      //declare a new Raindrop called r
Catcher bucket;

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 800);
  noStroke();
  bucket = new Catcher(100, 100);
  //mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
}

void draw() {
  if(frameCount % 10 == 0) {
    //create a new raindrop that is green if random is less than 0.2
    if(random(1) < 0.2) {
      r.add(new Raindrop(random(width), 0, color(0,255,0)));
    } else {
      r.add(new Raindrop(random(width), 0, color(0,200,255)));
    }
    
  }
  //mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(255);
  bucket.display(); //draw a bucket
  for(int i = 0; i < r.size(); i++) {
    Raindrop drop = r.get(i);
    drop.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    drop.display();      //display the raindrop
    if (drop.isInContactWith(bucket)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      r.remove(i);                         //if it is, reset the raindrop and add to the raindrop fallen count
      bucket.addRaindropCount();
    }
    if (drop.loc.y > height + drop.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      r.remove(i); 
      bucket.addRaindropCount();
  }
  }
  fill(0);
  textSize(32);
  //print text on screen
  text("Raindrop Game", 50, 50);
  text("Score: " + bucket.score, width - 200, 50);
  
  //if the game is over
  if(bucket.isGameOver()) {
    textSize(20);
    textAlign(CENTER);
    background(255);
    text("Thanks for playing. Your efficiency ratio is " + round(bucket.raindropsCaught/bucket.raindropCount*100) + "% and you got or exceeded a score of 100 in "+frameCount+" frames. Try to beat that!", width/2, height/2);
    noLoop();
  }
}