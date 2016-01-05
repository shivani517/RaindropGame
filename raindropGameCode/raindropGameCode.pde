int count = 100;
PVector mouse;   //declare a P
ArrayList<Raindrop> r = new ArrayList<Raindrop>();      //declare a new Raindrop called r
Bucket b;
PImage dog;
int score =0;
int time = 0;
boolean GameOver= false;

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 800);
  mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  r.add(new Raindrop(random(width), 0));   //Initialize r. The parameters used are the initial x and y positions
  b = new Bucket(mouse.x, mouse.y);
  imageMode(CENTER);
  dog=loadImage("dog.png");
}

void draw() {
  if (GameOver==false) {
    if (time>10) {
      r.add(new Raindrop(random(width), 0));
      time=0;
    }

    b.update();
    mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
    background(#A0E2FF);
    for (Raindrop rd : r) {
      rd.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
      rd.display();      //display the raindrop
      if (rd.isInContactWith(b)) {     //check to see if the raindrop is in contact with the point represented by the PVector called mouse
        rd.reset();                         //if it is, reset the raindrop
      }
      if (rd.loc.y > height + rd.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
        rd.reset();
        score= score+ 1;
      }
    }
    time=time + 1;

    textSize(100);
    text(score, 550, 600);
    if (score>100) {
      GameOver= true;

      textSize(50);
      text("game over!press a key", 150, 700);
    }
  }

  b.display();
}


void keyPressed() {
    score=0;
    time=0;
    GameOver= false;
    r.clear();
}