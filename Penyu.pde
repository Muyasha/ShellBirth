class Penyu {
  float x;
  float y;
  float angle = 0;     // Angle of rotation
  float angleSpeed = PI / 320; // Speed of rotation (1 degree per frame)
  boolean rotatingClockwise = true; // Flag to track direction of rotation
  float anglePutar =0;
  float putarSpeed = PI/90;
  float geserSpeed=5;
  float skalaPenyu =1;
  boolean mati=false;
  float kameraGeser=2;


  //constructor
  Penyu(float tempX, float tempY) {
    x = tempX;
    y = tempY;
  }

  void tampilKanan() {
    pushMatrix();
    translate(x, y); // Geser sistem koordinat ke posisi (x, y)
    rotate(anglePutar);
    scale(1, 1);

    //kaki depan
    fill(#68E73C);

    pushMatrix();
    translate(110, -25);
    rotate(radians(155) - angle);
    ellipse(-5, 50, 50, 120);
    popMatrix();

    pushMatrix();
    translate(100, 30);
    rotate(radians(145));
    ellipse(0, 0, 40, 120);
    popMatrix();

    pushMatrix();
    translate(140, 60);
    rotate(radians(25) + angle);
    ellipse(0, 55, 45, 100);
    popMatrix();

    //kaki belakang
    pushMatrix();
    translate(-70, 18);
    rotate(radians(55) + (angle/2));
    ellipse(0, 50, 50, 120);
    popMatrix();

    pushMatrix();
    translate(-70, -10);
    rotate(radians(125) - (angle/2));
    ellipse(0, 50, 50, 120);
    popMatrix();

    //badan
    fill(#048C12);
    ellipse(0, 0, 240, 135);

    //kepala
    fill(#68E73C);
    ellipse(150, -10, 190, 110);

    if (mati==true) {
      //mata
      pushMatrix();
      fill(0);
      strokeWeight(5);
      line(180,100,220,140);
      line(180,140,220,100);
      
      line(90,100,130,140);
      line(90,140,130,100);
      strokeWeight(0);
      popMatrix();
    }

    if (mati==false) {
      //MATA
      fill(255);
      ellipse(210, -40, 90, 60);
      ellipse(100, -40, 90, 60);
      fill(0);
      circle(210, -40, 25);
      circle(100, -40, 25);

      //MULUT
      fill(200);
      arc(150, 0, 60, 50, radians(0), radians(180));
    }


    popMatrix(); // Kembali ke sistem koordinat awal sebelum translate
  }


  void tampilKiri() {
    pushMatrix();
    translate(x, y); // Geser sistem koordinat ke posisi (x, y)
    rotate(anglePutar);
    scale(-1, 1);

    //kaki depan
    fill(#68E73C);

    pushMatrix();
    translate(110, -25);
    rotate(radians(155) - angle);
    ellipse(-5, 50, 50, 120);
    popMatrix();

    pushMatrix();
    translate(100, 30);
    rotate(radians(145));
    ellipse(0, 0, 40, 120);
    popMatrix();

    pushMatrix();
    translate(140, 60);
    rotate(radians(25) + angle);
    ellipse(0, 55, 45, 100);
    popMatrix();

    //kaki belakang
    pushMatrix();
    translate(-70, 18);
    rotate(radians(55) + (angle/2));
    ellipse(0, 50, 50, 120);
    popMatrix();

    pushMatrix();
    translate(-70, -10);
    rotate(radians(125) - (angle/2));
    ellipse(0, 50, 50, 120);
    popMatrix();

    //badan
    fill(#048C12);
    ellipse(0, 0, 240, 135);

    //kepala
    fill(#68E73C);
    ellipse(150, -10, 190, 110);
    
    if (mati==true) {
      //mata
      pushMatrix();
      fill(0);
      strokeWeight(5);
      line(180,100,220,140);
      line(180,140,220,100);
      
      line(90,100,130,140);
      line(90,140,130,100);
      strokeWeight(0);
      popMatrix();
    }

    if (mati==false) {
      //MATA
      fill(255);
      ellipse(210, -40, 90, 60);
      ellipse(100, -40, 90, 60);
      fill(0);
      circle(210, -40, 25);
      circle(100, -40, 25);

      //MULUT
      fill(200);
      arc(150, 0, 60, 50, radians(0), radians(180));
    }

    popMatrix(); // Kembali ke sistem koordinat awal sebelum translate
  }


  void tampilDepan() {
    pushMatrix();
    translate(x, y); // Geser sistem koordinat ke posisi (x, y)
    scale(skalaPenyu);

    //KAKI DEPAN
    fill(#68E73C);
    pushMatrix();
    translate(50, -40);
    rotate(radians(-45) - angle);
    ellipse(0, 55, 40, 85);
    popMatrix();
    pushMatrix();
    translate(-50, -40);
    rotate(radians(45) + angle);
    ellipse(0, 55, 40, 85);
    popMatrix();

    //KAKI BELAKANG
    pushMatrix();
    translate(20, 10);
    rotate(radians(-45) - (angle/2));
    ellipse(0, 50, 40, 85);
    popMatrix();
    pushMatrix();
    translate(-20, 10);
    rotate(radians(45) + (angle/2));
    ellipse(0, 50, 40, 85);
    popMatrix();

    //KEPALA
    fill(#68E73C);
    ellipse(0, -50, 125, 65);

    //BADAN
    fill(#048C12);
    ellipse(0, 0, 180, 120);
    popMatrix(); // Kembali ke sistem koordinat awal sebelum translate
  }








  void gerakKanan(float destinationX) {
    if (x<destinationX) {
      x+=3;

      if (rotatingClockwise) {
        angle += angleSpeed;
        if (angle >= HALF_PI/2) {
          rotatingClockwise = false;
        }
      } else {
        angle -= angleSpeed;
        if (angle <= 0) {
          rotatingClockwise = true;
        }
      }
    }
  }

  void gerakKiri(float destinationX) {
    if (x>destinationX) {
      x-=1;

      if (rotatingClockwise) {
        angle += angleSpeed;
        if (angle >= HALF_PI/2) {
          rotatingClockwise = false;
        }
      } else {
        angle -= angleSpeed;
        if (angle <= 0) {
          rotatingClockwise = true;
        }
      }
    }
  }

  void gerakDepan() {
    y-=1;

    if (rotatingClockwise) {
      angle += angleSpeed;
      if (angle >= HALF_PI/3) {
        rotatingClockwise = false;
      }
    } else {
      angle -= angleSpeed;
      if (angle <= 0) {
        rotatingClockwise = true;
      }
    }
  }


  void tertangkap() {
    x+=5;
    y-=10;
  }

  void jatuh(float speedY) {
    y+=speedY;
  }

  void berputar() {
    pushMatrix();
    anglePutar+= putarSpeed;
    rotate(angle);
    popMatrix();
  }

  void geserKanan(float destination) {
    if (x<destination) {
      x+=geserSpeed;
    }
  }

  void geserKiri(float destination) {
    if (x>destination) {
      x-=geserSpeed;
    }
  }

  void menjauh() {
    if (skalaPenyu >=0) {
      if (skalaPenyu >=0.5) {
        skalaPenyu -= 0.002;
      } else {
        skalaPenyu -= 0.0025;
      }
    }
  }

  void bergetar() {
    if (rotatingClockwise) {
      angle += angleSpeed;
      if (angle >= HALF_PI/3) {
        rotatingClockwise = false;
      }
    } else {
      angle -= angleSpeed;
      if (angle <= 0) {
        rotatingClockwise = true;
      }
    }
  }
  void mati() {
    mati=true;
  }

  void camGeserKanan(float destination) {
    if (x<destination) {
      x+=kameraGeser;
    }
  }

  void camGeserKiri(float destination) {
    if (x>destination) {
      x-=kameraGeser;
    }
  }
}
