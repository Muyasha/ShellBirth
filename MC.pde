class MC {
  float x;
  float y;
  float eyesX=0;
  float headX=0;
  float angle = 0;     // Angle of rotation
  float angleSpeed = PI / 320; // Speed of rotation (1 degree per frame)
  boolean rotatingClockwise = true; // Flag to track direction of rotation
  
  //constructor
  MC(float tempX, float tempY){
    x = tempX;
    y = tempY;
  }

  void show(){
    pushMatrix();
      translate(x, y); // Geser sistem koordinat ke posisi (x, y)

      //kaki depan
      fill(#68E73C);
      pushMatrix();
        translate(180, -90);
        rotate(radians(-55) - angle);
        ellipse(0, 55, 115, 220);
      popMatrix();
    
      pushMatrix();
        translate(-180, -90);
        rotate(radians(55) + angle);
        ellipse(0, 55, 115, 220);
      popMatrix();
    
      //kaki belakang
      pushMatrix();
        translate(20, 10);
        rotate(radians(-45) + (angle/2));
        ellipse(0, 50, 40, 85);
      popMatrix();
    
      pushMatrix();
        translate(-20, 10);
        rotate(radians(45) - (angle/2));
        ellipse(0, 50, 40, 85);
      popMatrix();
      
      //mata
      fill(255);
      //ellipse(-130,-230,180,100);
      //ellipse(30,-230,180,100);
      
      ellipse(-85 + eyesX, -230, 180, 100);
      ellipse(75 + eyesX, -230, 180, 100);
      
      //kepala
      fill(#68E73C);
      ellipse(headX, -180, 350, 200);

      //badan
      fill(#048C12);
      ellipse(0, 0, 400, 425);
      

    popMatrix(); // Kembali ke sistem koordinat awal sebelum translate
  }
  
  void gerak(){
    if(y == 1100 && headX >= -45){
      eyesX -= 1;
      headX -= 1;
    } else if(y>1100){
        y-=1;
    }
  }
}
