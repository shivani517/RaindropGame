class Bucket {
  float diam;
  PVector loc;

  Bucket(float x, float y) {
    diam=100;
    loc= new PVector(x,y);
  }
  void display(float x, float y) {
    ellipse(loc.x, loc.y, diam, diam);
  }
  
  void update(){
    loc.set(mouseX,mouseY);
  }
}