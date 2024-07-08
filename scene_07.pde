class Scene07 {
  int startFrame;
  boolean isFinished;
  Penyu penyu = new Penyu(1300, 650);
  Kepiting crab = new Kepiting(700, 660);
  Burung burung = new Burung(300, -500);

  void setup() {
    fullScreen();
    startFrame = frameCount;
    isFinished = false;
  }

  void draw() {
    int duration = 25*60; // Durasi dalam frame
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    int t = millis()/1000;
    println(t);

    background(#16213F);
    noStroke();

    //laut
    fill(#2D7AC0);
    rect(0, 100, width, 150);

    //pasir
    fill(#D9CD8A);
    rect(0, 250, width, height);

    crab.gerakKanan(700);
    crab.tampil();
    //ciki
    pushMatrix();
    fill(#F95E2D);
    rect(150, 500, 350, 280);
    fill(#FFE814);
    rect(350, 500, 100, 280);
    popMatrix();

    penyu.gerakKiri(1300);
    penyu.tampilKiri();

    burung.ambil(360);
    burung.terbang();
    burung.tampilKanan();

    if (burung.x>=700) {
      crab.tertangkap();
    }
  }
}
