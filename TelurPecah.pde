class TelurPecah {
  int startFrame;
  boolean isFinished;

  Penyu penyu1 = new Penyu(1100, 230);
  Penyu penyu2 = new Penyu(800, 950);
  Penyu penyu3 = new Penyu(100, 950);
  float alpha=255;


  void setup() {
    fullScreen();
    startFrame = frameCount;
    isFinished = false;
  }

  void draw() {
    int duration = 8*60; // Durasi dalam frame
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    int t = millis()/1000;
    println(t);
    background(#D9CD8A);
    noStroke();

    fill(#7F7F7F, 50);
    ellipse(width/2, height/2+40, width, height-80);

    //telur
    fill(#FFFDD3);
    telurPecah(960, 400, 0, 170, 0);
    telurPecah(850, 200, 0, 190, 90);

    fill(#F9F7C2);
    telurPecah(700, 680, 0, 200, 300);
    telurPecah(600, 560, 0, 160, 150);

    fill(#F3F2CC);
    telurPecah(1200, 750, 35, 200, 90);
    telurPecah(1400, 500, 165, 360, 270);

    penyu1.gerakKanan(2500);
    penyu1.tampilKanan();

    penyu2.gerakKanan(2500);
    penyu2.tampilKanan();

    penyu3.gerakKanan(2500);
    penyu3.tampilKanan();

    if (t>=33 && t<39) {
      fill(255, 255, 255, alpha);
      rect(0, 0, width, height);

      alpha-=10;
    }
  }

  void telurPecah(float x, float y, float start, float end, float rotasi) {
    pushMatrix();
    translate(x, y);
    rotate(radians(rotasi));
    arc(0, 0, 360, 456, radians(start), radians(end));
    popMatrix();
  }
}
