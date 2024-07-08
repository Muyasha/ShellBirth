class Scene02 {
  int startFrame;
  boolean isFinished;

  Daun daun = new Daun(130, 255);
  float awanSpeed = 0;

  void setup() {
    //1920 dan 1080 pixel = fullscreen
    fullScreen();
    startFrame = frameCount;
    isFinished = false;
  }

  void draw() {
    int duration = 5*60; // Durasi dalam frame
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    int t = millis()/1000;
    println(t);

    background(#16213F);
    noStroke();
    //bulan
    fill(#F8FFA2);
    ellipse(1500, 230, 250, 250);

    //bintang
    bintang(150, 50);
    bintang(180, 450);
    bintang(600, 250);
    bintang(700, 100);
    bintang(800, 400);
    bintang(950, 200);
    bintang(1050, 120);
    bintang(1400, 400);
    bintang(1800, 100);

    //awan
    awan(-400 + awanSpeed, 260, 150, 100);
    awan(-600 + awanSpeed, 260, 350, 320);

    awan(1340 + awanSpeed, 350, 250, 200);
    awan(1450 + awanSpeed, 350, 150, 100);
    awan(1230 + awanSpeed, 350, 150, 100);

    awan(850 + awanSpeed, 210, 200, 100);
    awan(700 + awanSpeed, 210, 300, 350);
    awan(550 + awanSpeed, 210, 200, 170);
    awanSpeed +=0.3;

    //lautan
    fill(#2A98FD);
    rect(0, 580, 1920, 500);

    //pasir
    fill(#D9CD8A);
    triangle(0, 610, 3000, 1080, 0, 1960);

    //alas telur
    fill(#7F7F7F, 50);
    ellipse(250, 950, 200, 100);

    //telur
    fill(#FFFDD3);
    ellipse(250, 930, 50, 70);
    fill(#F9F7C2);
    ellipse(220, 940, 50, 70);
    fill(#F3F2CC);
    ellipse(280, 945, 50, 70);

    //pohon kelapa
    fill(#6C3625);
    beginShape();
    vertex(0, 1080);
    bezierVertex(50, 700, 50, 300, 150, 250);
    bezierVertex(100, 200, 50, 300, 0, 500);
    endShape();

    //daun
    daun.gerak();
    daun.tampil(20, true, 0.1);
    daun.tampil(50, true, 0.2);
    daun.tampil(-25, true, 0.3);
    daun.tampil(-10, false, 0.4);
    daun.tampil(40, false, 0.5);
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
