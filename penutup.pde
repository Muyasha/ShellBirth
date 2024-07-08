class Penutup {
  int startFrame;
  boolean isFinished;

  Gelembung[] gelembung = new Gelembung[5];
  float judulSpeedY=0;


  void setup() {
    fullScreen();

    startFrame = frameCount;
    isFinished = false;
    
    gelembung[0] = new Gelembung(100, 1500, 70);
    gelembung[1] = new Gelembung(500, 1300, 20);
    gelembung[2] = new Gelembung(800, 1700, 50);
    gelembung[3] = new Gelembung(1300, 1900, 40);
    gelembung[4] = new Gelembung(1600, 2500, 10);
  }

  void draw() {
    int duration = 35*60; // Durasi dalam frame
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }
    
    int t = millis()/1000;
    println(t);

    background(#2D7AC0);

    strokeWeight(0);

    if (t>=248 && t<280) {
      textSize(80);
      fill(255);
      text("Dari cerita tersebut,", 100, 200+1000 - judulSpeedY);
      text("penyu sudah menjalani hidup yang berat  ", 100, 280+1000 - judulSpeedY);
      text("dari awal ia menetas karena harus", 100, 360+1000 - judulSpeedY);
      text("menemui burung pemangsa yang mengincarnya.  ", 100, 440+1000 - judulSpeedY);
      text("Akan tetapi, KITA malah menambah penderitaannya ", 100, 520+1000 - judulSpeedY);
      text("dengan sampah-sampah yang berserakan.  ", 100, 600+1000 - judulSpeedY);
      text("Mari! Buanglah sampah pada tempatnya dan", 100, 760+1000 - judulSpeedY);
      text("jaga bumi kita bersih untuk semua", 100, 840+1000 - judulSpeedY);
      text("kehidupan di dalamnya.", 100, 920+1000 - judulSpeedY);
      if (judulSpeedY <1000) {
        judulSpeedY +=5;
      }
    }
    if (t>=280) {
      textSize(80);
      fill(255);
      text("Dari cerita tersebut,", 100, 200+1000 - judulSpeedY);
      text("penyu sudah menjalani hidup yang berat  ", 100, 280+1000 - judulSpeedY);
      text("dari awal ia menetas karena harus", 100, 360+1000 - judulSpeedY);
      text("menemui burung pemangsa yang mengincarnya.  ", 100, 440+1000 - judulSpeedY);
      text("Akan tetapi, KITA malah menambah penderitaannya ", 100, 520+1000 - judulSpeedY);
      text("dengan sampah-sampah yang berserakan.  ", 100, 600+1000 - judulSpeedY);
      text("Mari! Buanglah sampah pada tempatnya dan", 100, 760+1000 - judulSpeedY);
      text("jaga bumi kita bersih untuk semua", 100, 840+1000 - judulSpeedY);
      text("kehidupan di dalamnya.", 100, 920+1000 - judulSpeedY);
      if (judulSpeedY <2000) {
        judulSpeedY +=5;
      } else if (judulSpeedY >=2000) {
        text("Terima Kasih", 750, 540 );
      }
      //fill(#2D7AC0);
      //rect()
    }
    for (int i=0; i<gelembung.length; i++) {
      gelembung[i].gerak();
      gelembung[i].pinggir();
      gelembung[i].tampil();
    }
  }
}
