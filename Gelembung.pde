class Gelembung {
  float x, y, r;

  Gelembung(float tempX, float tempY, float tempR) {
    x = tempX;
    y = tempY;
    r = tempR;
  }

  void tampil() {
    pushMatrix();
    fill(255, 255, 255, 100);
    circle(x, y, r);
    popMatrix();
  }

  void gerak() {
    y = y - random(1, 4);
    x = x + random(-1, 1);
  }

  void pinggir() {
    if (y<-r) {
      y=height+r;
    }
  }
}
