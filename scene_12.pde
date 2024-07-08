class Scene12 {
  int startFrame;
  boolean isFinished;
  Penyu penyu1 = new Penyu(800, 650);
  Penyu penyu2 = new Penyu(-300, 650);
  Gelembung[] gelembung = new Gelembung[5];

  float plastikX =0;
  float plastikSpeed=2;
  float geserKamera=800;
  float judulSpeedX=0;
  float anggotaSpeedY=0;


  void setup() {
    startFrame = frameCount;
    isFinished = false;
    //size(1920,1080);
    fullScreen();
    gelembung[0] = new Gelembung(100, 1500, 70);
    gelembung[1] = new Gelembung(500, 1300, 20);
    gelembung[2] = new Gelembung(800, 1700, 50);
    gelembung[3] = new Gelembung(1300, 1900, 40);
    gelembung[4] = new Gelembung(1600, 2500, 10);
  }

  void draw() {
    int duration = 45*60; // Durasi dalam frame
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    int t = millis()/1000;
    println(t);

    background(#2D7AC0);
    for (int i=0; i<gelembung.length; i++) {
      gelembung[i].gerak();
      gelembung[i].pinggir();
      gelembung[i].tampil();
    }
    strokeWeight(0);


    if (t>=213 && t<233) {
      penyu1.tampilKiri();
      penyu2.tampilKiri();
      fill(#4f496a, 100);
      rect(-600+plastikX, 500, 550, 400);
      if (plastikX <=800) {
        plastikX += plastikSpeed;
      }
    } else if (t>=205 && t<213) {
      penyu1.camGeserKanan(1600);
      penyu1.tampilKanan();
      penyu2.mati();
      penyu2.camGeserKanan(500);
      penyu2.tampilKiri();

      fill(#4f496a, 100);
      rect(-600+plastikX, 500, 550, 400);
      if (plastikX <=800) {
        plastikX += plastikSpeed;
      }
    }

    if (t>=215 && t<230) {
      penyu1.gerakKiri(1100);
    }

    if (t>=233 && t<237) {
      penyu1.gerakKanan(2100);
      penyu1.tampilKanan();
      penyu2.tampilKiri();
      fill(#4f496a, 100);
      rect(-600+plastikX, 500, 550, 400);
    }
    if (t>=237 && t<243 ) {
      penyu1.gerakKanan(2100);
      penyu1.tampilKanan();

      penyu2.camGeserKiri(-500);
      penyu2.tampilKiri();
      fill(#4f496a, 100);
      rect(-600+plastikX, 500, 550, 400);
      if (plastikX >=-500) {
        plastikX -= plastikSpeed;
      }
    }

    if (t>=240 && t<252) {
      penyu1.gerakKanan(2400);
      penyu1.tampilKanan();
      textSize(150);
      text("Shell", 2300 - judulSpeedX, 500);
      text("Birth", 2300 - judulSpeedX, 700);
      if (judulSpeedX <1500) {
        judulSpeedX +=5;
      }
    }
    if (t>=247 && t<252) {
      textSize(50);
      text("Dibuat oleh:", 850, 1400- anggotaSpeedY);
      text("Muhammad Yasir Suroto", 100, 1450- anggotaSpeedY);
      text("22523057", 250, 1500- anggotaSpeedY);
      text("Narendra Shangra Wikrama", 700, 1450- anggotaSpeedY);
      text("22523228", 850, 1500- anggotaSpeedY);
      text("Rian Nur Ikhsan", 1400, 1450- anggotaSpeedY);
      text("22523297", 1450, 1500- anggotaSpeedY);
      if (anggotaSpeedY <500) {
        anggotaSpeedY +=5;
      }
    }
  }
}
