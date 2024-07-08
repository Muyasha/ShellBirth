class PenyuDewasa {
  float x;
  float y;
  float angle = 0;     // Angle of rotation
  float angleSpeed = PI / 320; // Speed of rotation (1 degree per frame)
  boolean rotatingClockwise = true; // Flag to track direction of rotation
  
  //constructor
  PenyuDewasa(float tempX, float tempY){
    x = tempX;
    y = tempY;
  }

  void tampil(){
    pushMatrix();
      translate(x, y); // Geser sistem koordinat ke posisi (x, y)

      //kaki depan
      fill(#56B436);

      pushMatrix();
        translate(120, 105);
        rotate(radians(155) - angle);
        ellipse(-5, 50, 60, 150);
      popMatrix();

      pushMatrix();
        translate(100, 180);
        rotate(radians(145));
        ellipse(0, 0, 60, 150);
      popMatrix();
    
      pushMatrix();
        translate(130, 230);
        rotate(radians(25) + angle);
        ellipse(0, 55, 60, 150);
      popMatrix();
    
      //kaki belakang
      pushMatrix();
        translate(-70, 168);
        rotate(radians(55) + (angle/2));
        ellipse(0, 50, 60, 150);
      popMatrix();
    
      pushMatrix();
        translate(-70, 140);
        rotate(radians(125) - (angle/2));
        ellipse(0, 50, 60, 150);
      popMatrix();

      //badan
      fill(#396425);
      ellipse(0, 150, 300, 150);

      //kepala
      fill(#56B436);
      ellipse(150, 140, 130, 80);

      //mata
      fill(255);
      ellipse(180, 130, 40, 25);
      fill(0);
      circle(190, 130, 15);
      

    popMatrix(); // Kembali ke sistem koordinat awal sebelum translate
  }
  
  void gerak(){
    x+=1.5;
    
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
