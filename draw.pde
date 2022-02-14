Bubble b;
Bubble a;

void setup() {
  size(900, 900);
    background(255);
  b = new Bubble(100, width/2, height-200);
  a = new Bubble(200, width/2, height-100);
}

void draw() {

  
  
  b.displayBall();
  b.moveBall();
  b.checkEdges();
  
  a.displayBall();
  a.moveBall();
  a.checkEdges();
  
  if(b.overlaps(a)){
    b.displayBall();
  }

}
