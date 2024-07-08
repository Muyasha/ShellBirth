class Burung {
  float x;
  float y;
  boolean pick=true;
  float angle = 0;     // Angle of rotation
  float angleSpeed = PI / 60; // Speed of rotation (1 degree per frame)
  boolean rotatingClockwise = true; // Flag to track direction of rotation

  Burung(float tempX, float tempY) {
    x = tempX;
    y = tempY;
  }

  void tampilKanan() {
    pushMatrix();
    translate(x, y);

    //kepala
    fill(#ECECEC);
    ellipse(190, -150, 150, 450);

    //mata
    fill(0);
    circle(210, -320, 25);

    //mulut
    fill(#EEE740);
    triangle(190, -270, 400, -270, 250, -310);
    triangle(190, -270, 300, -270, 250, -250);

    //kaki
    fill(#EEE740);
    rect(0, 100, 30, 170);
    triangle(0, 270, 130, 270, 50, 230);
    rect(-100, 100, 30, 170);
    triangle(-100, 270, 30, 270, -50, 230);

    //badan
    fill(#ECECEC);
    ellipse(0, 0, 500, 300);

    //sayap
    fill(#B3B3B3);
    
    pushMatrix();
      translate(150, 0);
      rotate(radians(0) + angle);
      arc(-150, 0, 300, 200, radians(0), radians(180));
    popMatrix();
    popMatrix();
  }

  void ambil(float destination) {
    x+=5;
    if (pick==true && y<destination) {
      y+=10;
    }
    if (y>=destination) {
      pick = false;
    }
    if (pick==false) {
      y-=10;
    }
  }
  
  void tampilKiri(){
      pushMatrix();
    translate(x, y);
    scale(-1,1);

    //kepala
    fill(#ECECEC);
    ellipse(190, -150, 150, 450);

    //mata
    fill(0);
    circle(210, -320, 25);

    //mulut
    fill(#EEE740);
    triangle(190, -270, 400, -270, 250, -310);
    triangle(190, -270, 300, -270, 250, -250);

    //kaki
    fill(#EEE740);
    rect(0, 100, 30, 170);
    triangle(0, 270, 130, 270, 50, 230);
    rect(-100, 100, 30, 170);
    triangle(-100, 270, 30, 270, -50, 230);

    //badan
    fill(#ECECEC);
    ellipse(0, 0, 500, 300);

    //sayap
    fill(#B3B3B3);
    
    pushMatrix();
      translate(150, 0);
      rotate(radians(0) + angle);
      arc(-150, 0, 300, 200, radians(0), radians(180));
    popMatrix();
    popMatrix();
  }

  void terbang() {
    if (rotatingClockwise) {
      angle += angleSpeed;
      if (angle >= HALF_PI/2.5) {
        rotatingClockwise = false;
      }
    } else {
      angle -= angleSpeed;
      if (angle <= 0) {
        rotatingClockwise = true;
      }
    }
  }
  
  void gerakKanan(float destinationX){
    if(x<=destinationX){
      x+=5;  
    }
  }
  
  void gerakKiri(float destinationX){
    if(x>=destinationX){
      x-=5;  
    }
  }
}
