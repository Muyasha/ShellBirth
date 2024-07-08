import com.hamoid.*;

//import com.hamoid.*;

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//video
//VideoExport videoExport;

//objek class per scene
Scene01 scene01;
Scene02 scene02;
Telur telur;
TelurPecah telurPecah;
Scene04 scene04;
Scene05 scene05;
Scene06 scene06;
Scene07 scene07;
Scene08 scene08;
Scene09 scene09;
Scene10 scene10;
Scene11 scene11;
Scene12 scene12;
Penutup scenePenutup;

//audio player per scene
Minim minim;
AudioPlayer player_1;
AudioPlayer player_2;
AudioPlayer player_telur;
AudioPlayer player_telurPecah;
AudioPlayer player_4;
AudioPlayer player_5;
AudioPlayer player_6;
AudioPlayer player_7;
AudioPlayer player_8;
AudioPlayer player_9;
AudioPlayer player_10;
AudioPlayer player_11;
AudioPlayer player_12;
AudioPlayer player_penutup;

int currentScene = 0;

void setup() {
  size(1280, 720);
  //pembuatan objek per scene
  scene01 = new Scene01();
  scene02 = new Scene02();
  telur = new Telur();
  telurPecah = new TelurPecah();
  scene04 = new Scene04();
  scene05 = new Scene05();
  scene06 = new Scene06();
  scene07 = new Scene07();
  scene08 = new Scene08();
  scene09 = new Scene09();
  scene10 = new Scene10();
  scene11 = new Scene11();
  scene12 = new Scene12();
  scenePenutup = new Penutup();

  //inisialisasi audio per scene
  minim = new Minim(this);
  player_1 = minim.loadFile("scene1sfx.mp3");
  player_2 = minim.loadFile("scene2sfx.mp3");
  player_telur = minim.loadFile("telursfx.mp3");
  player_telurPecah = minim.loadFile("telurpecahsfx.mp3");
  player_4 = minim.loadFile("scene4sfx.mp3");
  player_5 = minim.loadFile("scene5sfx.mp3");
  player_6 = minim.loadFile("scene6sfx.mp3");
  player_7 = minim.loadFile("scene7sfx.mp3");
  player_8 = minim.loadFile("scene8sfx.mp3");
  player_9 = minim.loadFile("scene9sfx.mp3");
  player_10 = minim.loadFile("scene10sfx.mp3");
  player_11 = minim.loadFile("scene11sfx.mp3");
  player_12 = minim.loadFile("scene12sfx.mp3");
  player_penutup = minim.loadFile("penutupsfx.mp3");

  //videoExport = new VideoExport(this);
  //videoExport.startMovie();
  
  scene01.setup();
  frameRate(60);
}

void draw() {
  background(0);
  switch (currentScene) {
  case 0:
    audio_1();
    scene01.draw();
    if (scene01.isFinished) {
      currentScene = 1;
      //scene01.stop();
      scene02.setup();
    }
    break;
  case 1:
    audio_2();
    scene02.draw();
    if (scene02.isFinished) {
      currentScene = 2;
      telur.setup();
    }
    break;
  case 2:
    audio_telur();
    telur.draw();
    if (telur.isFinished) {
      currentScene = 3;
      telurPecah.setup();
    }
    break;
  case 3:
    audio_telurPecah();
    telurPecah.draw();
    if (telurPecah.isFinished) {
      currentScene = 4;
      scene04.setup();
    }
    break;
  case 4:
    audio_4();
    scene04.draw();
    if (scene04.isFinished) {
      currentScene = 5;
      scene05.setup();
    }
    break;
  case 5:
    audio_5();
    scene05.draw();
    if (scene05.isFinished) {
      currentScene = 6;
      scene06.setup();
    }
    break;
  case 6:
    audio_6();
    scene06.draw();
    if (scene06.isFinished) {
      currentScene = 7;
      scene07.setup();
    }
    break;
  case 7:
    audio_7();
    scene07.draw();
    if (scene07.isFinished) {
      currentScene = 8;
      scene08.setup();
    }
    break;
  case 8:
    audio_8();
    scene08.draw();
    if (scene08.isFinished) {
      currentScene = 9;
      scene09.setup();
    }
    break;
  case 9:
    audio_9();
    scene09.draw();
    if (scene09.isFinished) {
      currentScene = 10;
      scene10.setup();
    }
    break;
  case 10:
    audio_10();
    scene10.draw();
    if (scene10.isFinished) {
      currentScene = 11;
      scene11.setup();
    }
    break;
  case 11:
    audio_11();
    scene11.draw();
    if (scene11.isFinished) {
      currentScene = 12;
      scene12.setup();
    }
    break;
  case 12:
    audio_12();
    scene12.draw();
    if (scene12.isFinished) {
      currentScene = 13;
      scenePenutup.setup();
    }
    break;
  case 13:
    audio_penutup();
    scenePenutup.draw();
    if (scenePenutup.isFinished) {
      exit(); // Berhenti dan tutup jendela setelah scene6 selesai! :D
    }
    break;
  }
  //videoExport.saveFrame();
}

void audio_1() {
  //Masukkin Audio
  if (!player_1.isPlaying()) {
    player_1.play();
  }
}


void audio_2() {
  //Masukkin Audio
  if (!player_2.isPlaying()) {
    player_2.play();
  }
}

void audio_telur() {
  //Masukkin Audio
  if (!player_telur.isPlaying()) {
    player_telur.play();
  }
}

void audio_telurPecah() {
  //Masukkin Audio
  if (!player_telurPecah.isPlaying()) {
    player_telurPecah.play();
  }
}

void audio_4() {
  //Masukkin Audio
  if (!player_4.isPlaying()) {
    player_4.play();
  }
}

void audio_5() {
  //Masukkin Audio
  if (!player_5.isPlaying()) {
    player_5.play();
  }
}

void audio_6() {
  //Masukkin Audio
  if (!player_6.isPlaying()) {
    player_6.play();
  }
}

void audio_7() {
  //Masukkin Audio
  if (!player_7.isPlaying()) {
    player_7.play();
  }
}
void audio_8() {
  //Masukkin Audio
  if (!player_8.isPlaying()) {
    player_8.play();
  }
}

void audio_9() {
  //Masukkin Audio
  if (!player_9.isPlaying()) {
    player_9.play();
  }
}

void audio_10() {
  //Masukkin Audio
  if (!player_10.isPlaying()) {
    player_10.play();
  }
}

void audio_11() {
  //Masukkin Audio
  if (!player_11.isPlaying()) {
    player_11.play();
  }
}

void audio_12() {
  //Masukkin Audio
  if (!player_12.isPlaying()) {
    player_12.play();
  }
}

void audio_penutup() {
  //Masukkin Audio
  if (!player_penutup.isPlaying()) {
    player_penutup.play();
  }
}

//void keyPressed() {
//  if (key == 'q') {
//    videoExport.endMovie();
//    exit();
//  }
//}
