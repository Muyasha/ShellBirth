class Scene04 {
  int startFrame;
  boolean isFinished;

  PImage sampah;

  Penyu penyu1 = new Penyu(1300, 1000);
  Penyu penyu2 = new Penyu(1600, 1300);
  MC penyumc = new MC(900, 1500);

  void setup() {
    fullScreen();
    startFrame = frameCount;
    isFinished = false;
    sampah = loadImage("sampah.png");
  }

  void draw() {
    int duration = 12*60; // Durasi dalam frame
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    int t = millis()/1000;
    println(t);

    background(#D9CD8A);
    noStroke();

    ////pasir
    //fill(#D9CD8A);
    //rect(0,400,width,900);

    //sampah
    image(sampah, 50, 400, 600, 300);

    penyu1.gerakDepan();
    if (penyu1.y<=700) {
      penyu1.menjauh();
    }
    penyu1.tampilDepan();

    penyu2.gerakDepan();
    if (penyu2.y<=700) {
      penyu2.menjauh();
    }
    penyu2.tampilDepan();

    penyumc.gerak();
    penyumc.show();

    //langit
    fill(#16213F);
    rect(0, 0, width, 200);

    //bintang
    bintang(100, 100);
    bintang(500, 50);
    bintang(1100, 100);
    bintang(1700, 50);

    //laut
    fill(#2D7AC0);
    rect(0, 200, width, 200);
  }

  void awan(float x, float y, float lebar, float tinggi) {
    fill(255);
    arc(x, y, lebar, tinggi, radians(180), radians(360));
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
