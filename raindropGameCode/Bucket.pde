


class Bucket {
  float diam;
  PVector loc;


  Bucket(float x, float y) {
    diam=100;
    loc= new PVector(x,y);
  }
  void display() {
image(dog,mouseX,mouseY);  }
  
  void update(){
    loc.set(mouseX,mouseY);
  }
}