class Scene11 {
  int startFrame;
  boolean isFinished;
  Penyu penyu = new Penyu(800, -1050);
  Gelembung[] gelembung = new Gelembung[18];

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    //size(1920,1080);
    fullScreen();
    gelembung[0] = new Gelembung(random(600, 1000), 33, 70);
    gelembung[1] = new Gelembung(random(600, 1000), 66, 20);
    gelembung[2] = new Gelembung(random(600, 1000), 99, 50);
    gelembung[3] = new Gelembung(random(600, 1000), 132, 40);
    gelembung[4] = new Gelembung(random(600, 1000), 165, 10);
    gelembung[5] = new Gelembung(random(600, 1000), 198, 70);
    gelembung[6] = new Gelembung(random(600, 1000), 231, 20);
    gelembung[7] = new Gelembung(random(600, 1000), 264, 50);
    gelembung[8] = new Gelembung(random(600, 1000), 297, 40);
    gelembung[9] = new Gelembung(random(600, 1000), 330, 10);
    gelembung[10] = new Gelembung(random(600, 1000), 363, 70);
    gelembung[11] = new Gelembung(random(600, 1000), 396, 20);
    gelembung[12] = new Gelembung(random(600, 1000), 429, 50);
    gelembung[13] = new Gelembung(random(600, 1000), 462, 40);
    gelembung[14] = new Gelembung(random(600, 1000), 495, 10);
    gelembung[15] = new Gelembung(random(600, 1000), 528, 40);
    gelembung[16] = new Gelembung(random(600, 1000), 561, 10);
    gelembung[17] = new Gelembung(random(600, 1000), 594, 40);
  }

  void draw() {
    int duration = 10*60; // Durasi dalam frame
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    int t = millis()/1000;
    println(t);

    background(#2D7AC0);
    noStroke();
    for (int i=0; i<gelembung.length; i++) {
      if (penyu.y>= 33+(33*i)) {
        gelembung[i].gerak();
        gelembung[i].tampil();
      }
    }

    if (penyu.y<=650) {
      penyu.jatuh(5);
    }
    if (penyu.anglePutar <= radians(720)) {
      penyu.berputar();
    }
    penyu.tampilKanan();
  }
}
