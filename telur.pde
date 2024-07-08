class Telur {
  int startFrame;
  boolean isFinished;

  float angle = 0;     // Angle of rotation
  float angleSpeed = PI / 110; // Speed of rotation (1 degree per frame)
  boolean rotatingClockwise = true; // Flag to track direction of rotation

  float alpha=0;

  void setup() {
    fullScreen();
    startFrame = frameCount;
    isFinished = false;
  }

  void draw() {
    int duration = 8*60; // Durasi dalam frame
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }


    int t = millis()/1000;
    println(t);
    background(#D9CD8A);
    noStroke();

    fill(#7F7F7F, 50);
    ellipse(width/2, height/2+40, width, height-80);

    //telur
    pushMatrix();
    translate(960, 350);
    rotate(radians(-20) + angle);
    fill(#FFFDD3);
    ellipse(0, 0, 360, 456);
    popMatrix();

    pushMatrix();
    translate(650, 630);

    fill(#F9F7C2);
    rotate(radians(-15) + angle);

    ellipse(0, 0, 360, 456);
    popMatrix();

    pushMatrix();
    translate(1300, 570);
    rotate(radians(-10) + angle);

    fill(#F3F2CC);
    ellipse(0, 0, 360, 456);
    popMatrix();

    if (t>=29) {
      if (rotatingClockwise) {
        angle += angleSpeed;
        if (angle >= radians(30)) {
          rotatingClockwise = false;
        }
      } else {
        angle -= angleSpeed;
        if (angle <= 0) {
          rotatingClockwise = true;
        }
      }
    }

    if (t>=32) {
      fill(255, 255, 255, alpha);
      rect(0, 0, width, height);

      alpha+=10;
    }
  }
}
