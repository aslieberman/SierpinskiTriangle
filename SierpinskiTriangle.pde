public void setup() {
  size(600, 600);
  background(255);
}

public void draw() {
  background(255);
  sierpinski(100, 500, 400);
}

public void mouseDragged() {
  background(255);
  sierpinski(mouseX, mouseY, 400);
}

public void sierpinski(int x, int y, int length) {
  if (length <= 20) {
    drawTriangle(x, y, length);
  } else {
    int newLength = length / 2;
    
    sierpinski(x, y, newLength);
    sierpinski(x + newLength, y, newLength);
    sierpinski(x + newLength / 2, y - (int)(newLength * Math.sqrt(3) / 2), newLength);
  }
}

void drawTriangle(int x, int y, int length) {
  int x1 = x;
  int y1 = y;
  int x2 = x + length;
  int y2 = y;
  int x3 = x + length / 2;
  int y3 = y - (int)(length * Math.sqrt(3) / 2);
  
  triangle(x1, y1, x2, y2, x3, y3);
}
