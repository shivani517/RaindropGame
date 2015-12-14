class Raindrop {
  PVector loc, vel, acceleration;
  float diam;
  color c;

  Raindrop() {
    diam=20;
    loc= new PVector(random(width), 0);
    vel =PVector.random2D();
    vel.mult(5);
    c= color(255); 


    Raindrop(float tX, float tY) {
      diam=tDiam;
      diam=20;
      loc= new PVector(random(width), 0);
      vel =PVector.random2D();
      vel.mult(5);
      c= color(255);
    }
    
    
    
    void diplay(){
      
      
    }


void fall(){
}

boolean isInContactWith(){

 if()
 
}