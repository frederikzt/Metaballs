class Blob {
  PVector pos, vel;
  float r;

  Blob(float x, float y) {
    pos = new PVector(x,y);
    vel = PVector.random2D();
    vel.mult(random(0.5, 5));
    r = random(30,60);
  }

void update(){
 pos.add(vel);
 if(pos.x>width || pos.x < 0) vel.x *= -1;
 if(pos.y>height || pos.y < 0) vel.y *= -1;
}


  void show() {
    fill(200);
    ellipse(pos.x, pos.y, r, r);
  }
}