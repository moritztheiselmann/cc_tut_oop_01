class Shape {
  float x;
  float y;
  float diameter;
  int segments;
  color col;
  
  Shape(float x, float y, float diameter, int segments) {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    this.segments = segments;
    col = color(255);
  }
  
  void show() {
    pushMatrix();
    translate(x, y);
    stroke(255);
    fill(col);
    beginShape();
    for (int n = 0; n < segments; n++) {
      float angle = TWO_PI / segments * n;
      float dx = cos(angle) * diameter/2;
      float dy = sin(angle) * diameter/2;
      vertex(dx, dy);
    }
    endShape(CLOSE);
    popMatrix();
  }
  
  void checkPosition(int mousex, int mousey) {
    float d = dist(x, y, mousex, mousey);
    
    if ( d < diameter/2) {
      col = color(255);
    }
    else {
      col = color(0);
    }
  }
}
