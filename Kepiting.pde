class Kepiting {
  float x;
  float y;
  float angle = 0;     // Angle of rotation
  float angleSpeed = PI / 530; // Speed of rotation (1 degree per frame)
  boolean rotatingClockwise = true; // Flag to track direction of rotation
  
  Kepiting(float tempX, float tempY) {
    x = tempX;
    y = tempY;
  }

  void tampil() {
    pushMatrix();
    translate(x, y);
    scale(0.5);

    //badan
    fill(#FF7E7E);
    ellipse(0, 0, 400, 200);

    //kaki
    pushMatrix();
    translate(160, 10);
    rotate(radians(30));
    rect(0, 0, 150, 20);
    popMatrix();
    pushMatrix();
    translate(130, 40);
    rotate(radians(30));
    rect(0, 0, 150, 20);
    popMatrix();
    pushMatrix();
    translate(100, 70);
    rotate(radians(30));
    rect(0, 0, 150, 20);
    popMatrix();

    pushMatrix();
    translate(-140, 10);
    rotate(radians(150));
    rect(0, 0, 150, 20);
    popMatrix();
    pushMatrix();
    translate(-110, 40);
    rotate(radians(150));
    rect(0, 0, 150, 20);
    popMatrix();
    pushMatrix();
    translate(-80, 70);
    rotate(radians(150));
    rect(0, 0, 150, 20);
    popMatrix();

    //perut
    fill(#FFF3B1);
    ellipse(0, 35, 300, 130);

    //mata
    fill(0);
    ellipse(60, -100, 50, 100);
    ellipse(-40, -100, 50, 100);

    //lengan
    fill(#FF7E7E);
    pushMatrix();
    translate(150, -40);
    rotate(radians(215) - angle);
    rect(0, 0, 15, 100);
    popMatrix();

    pushMatrix();
    translate(-150, -40);
    rotate(radians(145) + angle);
    rect(0, 0, 15, 100);
    popMatrix();

    //tangan
    pushMatrix();
    rotate(0- angle);
    translate(250, -150);
    arc(0, 0, 140, 140, radians(0), radians(300));
    popMatrix();

    pushMatrix();
    rotate(0+angle);
    translate(-250, -150);
    arc(0, 0, 140, 140, radians(-120), radians(180));
    popMatrix();
    popMatrix();
  }

  void gerakKanan(float destination) {
    if (x<destination) {
      x+=1;
    }
  }
  
  void tertangkap(){
    x+=5;
    y-=10;
  }
  
  void gerak() {
    if (rotatingClockwise) {
      angle += angleSpeed;
      if (angle >= HALF_PI/13) {
        rotatingClockwise = false;
      }
    } else {
      angle -= angleSpeed;
      if (angle <= 0) {
        rotatingClockwise = true;
      }
    }
  }
  
  void geser(float destination) {
    if (x<destination) {
      x+=5;
    } else if(x>destination){
      x-=5;
    }
  }
}
