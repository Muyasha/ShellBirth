class Scene10 {
  int startFrame;
  boolean isFinished;
  Penyu penyu = new Penyu(850, -50);

  void setup() {
    //size(1920,1080);
    fullScreen();
    startFrame = frameCount;
    isFinished = false;
  }

  void draw() {
    int duration = 10*60; // Durasi dalam frame
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    int t = millis()/1000;
    println(t);

    background(#16213F);
    bintang(150, 50);
    bintang(180, 750);
    bintang(600, 450);
    bintang(700, 100);
    bintang(800, 800);
    bintang(950, 600);
    bintang(1050, 120);
    bintang(1400, 900);
    bintang(1800, 500);

    if (penyu.y<=1500) {
      penyu.jatuh(2);
    }
    if (penyu.anglePutar <= radians(1440)) {
      penyu.berputar();
    }
    penyu.tampilKanan();
  }

  void bintang(float x, float y) {
    float alpha = random(150, 255);
    fill(255, 255, 255, alpha);
    noStroke();
    triangle(x-2, y, x+2, y, x, y-20);
    triangle(x-2, y, x+2, y, x, y+20);
    triangle(x, y-2, x, y+2, x-10, y);
    triangle(x, y-2, x, y+2, x+10, y);
  }
}
