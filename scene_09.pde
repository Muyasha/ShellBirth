class Scene09 {
  int startFrame;
  boolean isFinished;
  Burung burung1 = new Burung(-445, 400);
  Burung burung2 = new Burung(2300, 400);
  Penyu penyu = new Penyu(-445, 700);
  Kepiting crab = new Kepiting(2300, 700);


  void setup() {
    //size(1920,1080);
    fullScreen();
    startFrame = frameCount;
    isFinished = false;
  }

  void draw() {
    int duration = 37*60; // Durasi dalam frame
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }
    
    int t = millis()/1000;
    println(t);


    background(#16213F);
    bintang(150, 50);
    bintang(180, 450);
    bintang(600, 250);
    bintang(700, 100);
    bintang(800, 400);
    bintang(950, 200);
    bintang(1050, 120);
    bintang(1400, 400);
    bintang(1800, 100);

    fill(#F8FFA2);
    ellipse(1500, 230, 250, 250);


    penyu.geserKanan(300);
    penyu.tampilKanan();

    crab.geser(1550);
    crab.tampil();

    burung1.gerakKanan(300);
    burung1.terbang();
    burung1.tampilKanan();

    pushMatrix();
    burung2.gerakKiri(1550);
    burung2.terbang();
    burung2.tampilKiri();
    popMatrix();

    if (t>=178 && t<182) {
      penyu.bergetar();
      penyu.tampilKanan();
    } else if (t>=182) {
      penyu.jatuh(10);
      penyu.tampilKanan();
    }
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
