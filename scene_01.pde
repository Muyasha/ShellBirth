class Scene01 {
  int startFrame;
  boolean isFinished;

  PenyuDewasa penyu = new PenyuDewasa(300, 800);
  Daun daun = new Daun(130, 255);
  float awanSpeed = 0;
  float skalaBuwung = 1;

  void setup() {
    //1920 dan 1080 pixel = fullscreen
    fullScreen();
    startFrame = frameCount;
    isFinished = false;
  }

  void draw() {
    int duration = 18*60; // Durasi dalam frame
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }
    
    int t = millis()/1000;
    println(t);

    background(#FF9518);
    noStroke();
    //matahari
    fill(#FDD138);
    ellipse(width/2, 590, 350, 350);

    //lautan
    fill(#2A98FD);
    rect(0, 580, 1920, 500);

    //awan
    awan(-650 + awanSpeed, 210, 200, 100);
    awan(-500 + awanSpeed, 210, 300, 350);
    awan(-350 + awanSpeed, 210, 200, 170);

    awan(340 + awanSpeed, 350, 250, 200);
    awan(450 + awanSpeed, 350, 150, 100);
    awan(230 + awanSpeed, 350, 150, 100);

    awan(1400 + awanSpeed, 260, 150, 100);
    awan(1600 + awanSpeed, 260, 350, 320);
    awanSpeed += 0.7;

    pushMatrix();
    translate(1000, 400);
    scale(skalaBuwung);
    burungBG(400, 0, 40, 40, 3);
    burungBG(50, -50, 40, 40, 3);
    burungBG(150, 100, 40, 40, 3);
    popMatrix();
    if (skalaBuwung >=0) {
      if (skalaBuwung >=0.5) {
        skalaBuwung -= 0.0005;
      } else {
        skalaBuwung -= 0.00025;
      }
    }

    //pasir
    fill(#F8ECA4);
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

    //penyu
    penyu.tampil();
    penyu.gerak();

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

  void awan(float x, float  y, float lebar, float tinggi) {
    fill(255, 255, 255);
    arc(x, y, lebar, tinggi, radians(180), radians(360)); // Menggambar awan
  }

  void burungBG(float x, float y, float r, float tinggi, float tebal) {
    pushMatrix();
    noFill();
    stroke(0);
    strokeWeight(tebal);
    arc(x, y, r, tinggi, PI, TWO_PI);
    arc(x+r, y, r, tinggi, PI, TWO_PI);
    noStroke();
    popMatrix();
  }

  void daunKelapa(float angle, boolean terbalik) {
    if (terbalik) {
      pushMatrix();
      fill(#39A514);
      translate(130, 255);
      rotate(radians(angle));
      beginShape();
      vertex(0, 0);
      bezierVertex(100, -170, 350, -170, 400, 0);
      bezierVertex(100, -40, 150, -40, 0, 0);
      endShape();
      popMatrix();
    } else {
      pushMatrix();
      fill(#39A514);
      translate(130, 255);
      rotate(radians(angle));
      beginShape();
      vertex(0, 0);
      bezierVertex(-100, -170, -350, -170, -400, 0);
      bezierVertex(-100, -40, -150, -40, 0, 0);
      endShape();
      popMatrix();
    }
  }
}
