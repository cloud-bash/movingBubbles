class Bubble {
  float x, y;
  float r;
  color col;
  //constructor
  Bubble(float tempR, float tempX, float tempY) {
    x = tempX;
    y = tempY;
    r = tempR;
    col = color(0);
  }

  float xspeed = 3.4;
  float yspeed = 2.3;
  
  boolean overlaps(Bubble other){
    float d = dist(x,y,other.x,other.y);
    
    if(d < r/2 + other.r/2){
      col = color(0,255,0);
      other.col = color(255,0,0);
      return true;
    } else {
      col = color(0,0,255);
      other.col = (color(0));
      return false;
    }
  }

  void displayBall() {
    stroke(5);
    fill(col);
    ellipse(x, y, r, r);
  }

  void moveBall() {
    x = x + xspeed;
    y = y + yspeed;
  }

  void checkEdges() {
    if (x > width-r/2 || x < r/2) {
      xspeed = xspeed * -1;
    }
    if (y > height-r/2 || y < r/2) {
      yspeed = yspeed * -1;
    }
  }
}
