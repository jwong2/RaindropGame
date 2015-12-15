PVector mouse;   //declare a P
Raindrop[] r = new Raindrop[3000];      //declare a new Raindrop called r
Bucket catcher;

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 800);
  noStroke();
  catcher = new Bucket(50, 50);
  mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  for(int i = 0; i < r.length; i++) {
    r[i] = new Raindrop(random(width), -3*random(height));   //Initialize r. The parameters used are the initial x and y positions, negative so starts blank and above screen
  }
}

void draw() {
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(0, 200, 255);
  catcher.display(); //draw a bucket
  for(int i = 0; i < r.length; i++) {
    catcher.catchDrops(r[i]);
  }
}