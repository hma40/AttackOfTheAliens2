import java.io.PrintStream;
import java.io.OutputStream;
int[] settings = new int[10];
boolean callMuted = false;
int[] randomint = new int[4];
int[] someoneMoved = new int[20];
int[] puppetReset = new int[5];
int timesPickedUp=0;
int newPicoChance=0;
boolean bstart;
int gameStage=0;
int menuSeconds=0;
int menuRandom=0;
int goldenAlien2=0;
String whoj = " ";  
boolean menuReady=false;
int maxDay=1;
int currentDay=0;
int continueDay=0;
int ingameSeconds=0;
boolean beforeFlashlight=false;
boolean camera=false;
boolean lLight=false;
boolean rLight=false;
boolean flashlight=false;
boolean mask=false;
int powerleft=0;
int goldenAlienChance = 0;
String difficulty = "Easy";
String preset = "None";
boolean lowFlashReady=false;
boolean mouseTouchingMask=false;
boolean mouseTouchingCamera=false;
boolean maskReactivated=true;
boolean cameraReactivated=true;
int musicBox=5;
int flashCounter=0;
int flashCounter2=0;
int camLeftOff=1;
int blackoutInt=0;
int tera=0;
int nano=0;
int piconianTimer=0;
int pico=0;
int giga=0;
int newTera=0;
int newNano=0;
int newPico=0;
int newTeraScan=0;
int newGiga=0;
int gobo=0;
int puppet=0;
boolean someoneInOffice=false;
int[] alienWaitTimeReset = new int[1337];
int[] currentSeconds = new int[1337];
int[] alienWaitTime = new int[1337];
int[] alerts = new int[1337];
int[] maskTimer = new int[1337];
int[] howLongOffice = new int[1337];
boolean[] cameraDown = new boolean[1337];
int[] customDay = new int[11];
int deathTimer=0;
int newTeraTimer = 0;
int initialflash = 0;
boolean[] wasReadyBefore = new boolean[20];
int rrr = 0;
boolean youCanCloseMask;
import processing.sound.*;
SoundFile wavwav;
SoundFile alarm;
SoundFile blackout;
SoundFile blip;
SoundFile camChange;
SoundFile cameraUp;
SoundFile cameraDwn;
SoundFile changeAI;
SoundFile cheers;
SoundFile breathinbreathout;
SoundFile youAreWin;
SoundFile SomeoneVentedNT;
SoundFile SomeoneVentedNN;
SoundFile SomeoneVentedNG;
SoundFile SomeoneVentedG;
SoundFile SomeoneVentedN;
SoundFile SomeoneVentedT;
SoundFile error;
SoundFile gigaRadio;
SoundFile goboLaugh;
SoundFile goboMove;
SoundFile windBox;
SoundFile maskUp;
SoundFile menuTheme;
SoundFile musicBx;
SoundFile phoneRing;
SoundFile puppetEscaped;
SoundFile statc;
SoundFile voij;
SoundFile[] phoneMessage = new SoundFile[7];
SoundFile pickUpPhone;
void keyPressed() {
}
void setup() {
  System.setOut(new PrintStream(new OutputStream() {
    public void write(int b) {
    }
  }
  ));
  System.setErr(new PrintStream(new OutputStream() {
    public void write(int b) {
    }
  }
  ));
  settings[1]=1;
  size(1500, 800);
  frameRate(60);
  pickUpPhone = new SoundFile(this, "data/PickupPhone.wav");
  for (int i = 1; i < 7; i++) {
    phoneMessage[i]=new SoundFile(this, "data/"+i+"recording.wav");
  }
  wavwav=new SoundFile(this, "data/wavwav.wav");
  alarm = new SoundFile(this, "data/alarm.wav");
  blackout = new SoundFile(this, "data/Blackout.wav");
  blip = new SoundFile(this, "data/Blip3.wav");
  camChange = new SoundFile(this, "data/camChange.wav");
  cameraUp = new SoundFile(this, "data/Camera_up.wav");
  cameraDwn = new SoundFile(this, "data/Camera_down.wav");
  changeAI = new SoundFile(this, "data/changeAI.wav");
  cheers = new SoundFile(this, "data/cheers.wav");
  breathinbreathout = new SoundFile(this, "data/Deepbreaths.wav");
  youAreWin = new SoundFile(this, "data/DiscoveryHit.wav");
  SomeoneVentedNT = new SoundFile(this, "data/EnterVentRIGHT.wav");
  SomeoneVentedNN = new SoundFile(this, "data/EnterVentLEFT.wav");
  SomeoneVentedNG = new SoundFile(this, "data/EnterVentRIGHT.wav");
  SomeoneVentedG = new SoundFile(this, "data/EnterVentLEFT.wav");
  SomeoneVentedN = new SoundFile(this, "data/EnterVentRIGHT.wav");
  SomeoneVentedT = new SoundFile(this, "data/EnterVentLEFT.wav");
  error = new SoundFile(this, "data/error.wav");
  gigaRadio = new SoundFile(this, "data/GigaRadio.wav");
  goboLaugh = new SoundFile(this, "data/GoboLaugh.wav");
  goboMove = new SoundFile(this, "data/GOBO.wav");
  windBox = new SoundFile(this, "data/laser1.wav");
  maskUp = new SoundFile(this, "data/Maskon.wav");
  menuTheme = new SoundFile(this, "data/Yes.mp3");
  musicBx = new SoundFile(this, "data/Music_Box.wav");
  phoneRing = new SoundFile(this, "data/Phone.wav");
  puppetEscaped = new SoundFile(this, "data/puppetEscaped.wav");
  statc = new SoundFile(this, "data/static.wav");
  voij = new SoundFile(this, "data/voidj.wav");
}
void draw() {
  noFill();
  noStroke();
  background(0);
  if (gameStage==0) {
    menuScripts();
  }
  if (gameStage==1) {
    newGameScripts();
  }
  if (gameStage==2) {
    gameScripts();
  }
  if (gameStage==3) {
    settingScripts();
  }
  if (gameStage==4) {
    youwin();
  }
  if (gameStage==5) {
    paycheck();
  }
  if (gameStage==6) {
    customDayMenu();
  } 
  if (gameStage==7) {
    j();
  }
  beforeFlashlight=flashlight;
}
void reset() {
  callMuted=false;
  timesPickedUp=0;
  newPicoChance=0;
  randomint[0]=0;
  randomint[1]=0;
  bstart=false;
  randomint[2]=0;
  randomint[3]=0;
  musicBox=0;
  beforeFlashlight=false;
  goldenAlienChance=0;
  newTeraScan=0;
  blackoutInt=0;
  puppet=0;
  piconianTimer=0;
  someoneInOffice=false;
  puppetReset[0]=0;
  puppetReset[1]=0;
  puppetReset[2]=0;
  puppetReset[3]=0;
  puppetReset[4]=0;
  for (int a=0; a<20; a++) {
    someoneMoved[a]=-500;
    alienWaitTime[a]=0;
    alienWaitTimeReset[a]=0;
    currentSeconds[a]=0;
    alerts[a]=0;
    cameraDown[a]=false;
    maskTimer[a]=0;
    howLongOffice[a]=0;
  }
  deathTimer=0;
  tera=0;
  whoj=" ";
  nano=0;
  newTera=0;
  newNano=0;
  giga=0;
  newGiga=0;
  pico=0;
  newPico=0;
  gobo=0;
  currentDay=0;
  goldenAlien2=0;
  maskReactivated=true;
  cameraReactivated=true;
  mouseTouchingMask=false;
  mouseTouchingCamera=false;
  mask=false;
  continueDay=0;
  camera=false;
  ingameSeconds=0;
  lLight=false;
  rLight=false;
  flashlight=false;
  lowFlashReady=false;
  flashCounter=0;
  flashCounter2=0;
  powerleft=0;
  camLeftOff=1;
  gameStage=0;
  initialflash=0;
}
void menuScripts() {
  reset();
  if (!menuTheme.isPlaying()) {
    menuTheme.play();
  }
  menuSeconds++;
  if (maxDay<5) {
    continueDay=maxDay;
  } else {
    continueDay=5;
  }
  if (menuSeconds>3000) {
    menuSeconds=0;
  }
  if (!menuTheme.isPlaying()) {
    menuTheme.play();
  }
  fill(255);
  textSize(50);
  text("Attack of the Aliens 2", 200, 100);
  strokeWeight(2);
  stroke(255);
  makeNewTera(1, 1000, 280, 1, 1, 0, false, true);
  makeNewNano(1, 1200, 280, 1, 0, false, true);
  makeNewPico(1, 1400, 280, 1, false, true);
  if (menuSeconds%300==15) {
    menuRandom+=1;
    if (menuRandom==60) {
      menuRandom=0;
    }
  }
  if (menuSeconds%300>145&&menuSeconds%300<175) {
    if (menuRandom==0) {
      makeTera(1, 1000, 280, 0.5, true);
      makePico(1, 1400, 280, 0.5, true, true, true);
      makeNano(1, 1200, 280, 0.5, 1, true, true);
    } else if (menuRandom%3==1) {
      makeTera(1, 1000, 280, 0.5, true);
    } else if (menuRandom%3==2) {
      makeNano(1, 1200, 280, 0.5, 1, true, true);
    } else {
      makePico(1, 1400, 280, 0.5, true, true, true);
    }
  }
  noStroke();
  if (mouseX>200&&mouseX<300&&mouseY>180&&mouseY<200) {
    fill(50);
    if (!wasReadyBefore[0]) {
      blip.play();
    }
    if (mousePressed) {
      currentDay=1;
      gameStage=1;
    }
    wasReadyBefore[0]=true;
  } else {
    fill(255);
    wasReadyBefore[0]=false;
  }
  textSize(20);
  text("New Game", 200, 200);
  if (mouseX>200&&mouseX<275&&mouseY>480&&mouseY<500) {
    fill(50);
    if (!wasReadyBefore[1]) {
      blip.play();
    }
    if (mousePressed) {
      gameStage=3;
    }
    wasReadyBefore[1]=true;
  } else {
    fill(255);
    wasReadyBefore[1]=false;
  }
  text("Settings", 200, 500);
  if (maxDay>1) {
    if (mouseX>200&&mouseX<360&&mouseY>230&&mouseY<250) {
      fill(50);
      if (mousePressed) {
        currentDay=continueDay;
        gameStage=2;
      }
      if (!wasReadyBefore[2]) {
        blip.play();
      }
      wasReadyBefore[2]=true;
    } else {
      wasReadyBefore[2]=false;
      fill(255);
    }
    text("Continue (Night "+continueDay+")", 200, 250);
  }
  if (maxDay>5) {
    if (mouseX>200&&mouseX<250&&mouseY>280&&mouseY<300) {
      fill(50);
      if (mousePressed) {
        currentDay=6;
        gameStage=2;
      }
      if (!wasReadyBefore[3]) {
        blip.play();
      }
      wasReadyBefore[3]=true;
    } else {
      wasReadyBefore[3]=false;
      fill(255);
    }
    text("Night 6", 200, 300);
  }
  if (maxDay==7) {
    if (mouseX>200&&mouseX<315&&mouseY>330&&mouseY<350) {
      fill(50);
      if (mousePressed) {
        gameStage=6;
      }
      if (!wasReadyBefore[4]) {
        blip.play();
      }
      wasReadyBefore[4]=true;
    } else {
      wasReadyBefore[4]=false;
      fill(255);
    }
    text("Custom Night", 200, 350);
  }
}
void newGameScripts() {
  ingameSeconds++;
  fill(255);
  textSize(40);
  text("Hello! We are happy to tell you that your application", 100, 100);
  text("to be night security guard for the summer is approved.", 100, 150);
  text("You will be paid after night 5.", 100, 200);
  text("Warning: This game contains lots of jumpscares...", 100, 250);
  if (settings[1]==0) {
    text("...unless you are a chicken and turned them off...", 100, 300);
  }
  if (ingameSeconds>300) {
    fill(0, 0, 0, ingameSeconds-300);
    rect(0, 0, 1500, 800);
    if (ingameSeconds>600) {
      ingameSeconds=0;
      gameStage=2;
    }
  }
}
void gameScripts() {
  ingameSeconds++;
  if (ingameSeconds<425) {
    if (menuTheme.isPlaying()) {
      menuTheme.stop();
    }
    if (ingameSeconds==3) {
      rrr=(int)random(1, 4);
      blip.play();
    }
    currentSeconds[19]=-420;
    alienWaitTime[19]=-420;
    fill(255);
    textSize(100);
    textAlign(CENTER, CENTER);
    text("Night "+currentDay, 750, 300); 
    text("12:00 A.M.", 750, 400);
    textAlign(BASELINE);
    if (ingameSeconds>180) {
      fill(0, 0, 0, ingameSeconds-180);
      rect(0, 0, 1800, 1000);
    }
    if (currentDay<3) {
      initialflash = 7200;
    } else if (currentDay<6) {
      initialflash = 6000;
    } else if (currentDay==6) {
      initialflash = 5400;
    } else {
      initialflash=12000-1000*customDay[9];
    }
    musicBox=300;
    powerleft = initialflash;
  } else if (ingameSeconds<25625) {
    if (currentDay<7&&ingameSeconds<800) {
      if (ingameSeconds==430) {
        phoneRing.play();
      }
      if (ingameSeconds>730&&ingameSeconds<770&&!phoneRing.isPlaying()&&timesPickedUp==0) {
        pickUpPhone.play(); 
        timesPickedUp=1;
      }
      if (!pickUpPhone.isPlaying()&&timesPickedUp==1) {
        phoneMessage[currentDay].play();
        timesPickedUp++;
      }
    }
    if (camera) {
      if (camLeftOff==5) {
        musicBx.amp(1);
      } else if (camLeftOff==2||camLeftOff==9) {
        musicBx.amp(0.3);
      } else if (camLeftOff==1||camLeftOff==10) {
        musicBx.amp(0.05);
      } else {
        musicBx.amp(0);
      }
    } else {
      musicBx.amp(0);
    }
    if (musicBox==0) {
      musicBx.amp(0);
    }
    if (!musicBx.isPlaying()) {
      musicBx.play();
    }
    if (mask&&!breathinbreathout.isPlaying()) {
      breathinbreathout.play();
    }
    if (alerts[0]==1||alerts[1]==1||alerts[2]==1||alerts[3]==1||alerts[4]==1||alerts[5]==1||alerts[6]==1||alerts[7]==1||alerts[8]==1) {
      if (!alarm.isPlaying()) {
        alarm.play();
      }
    }
    if (camera==false) {
      buildOffice();
    } else {
      cameraScripts();
    }
    if (currentDay<7&&ingameSeconds<900&&!callMuted) {
      int ran=0;
      if (ingameSeconds==427) {
        ran = (int)random(1, 100);
      }
      fill(0);
      noStroke();
      rect(25, 125, 175, 75);
      textAlign(CENTER, CENTER);
      fill(255);
      textSize(30);
      if (ran==69) {
        text("Shut up", 112.5, 162.5);
      } else {
        text("Mute call", 112.5, 162.5);
      }
      textAlign(LEFT);
    }
    if (callMuted) {
      phoneRing.stop();
      pickUpPhone.stop();
      phoneMessage[currentDay].stop();
    }
    cameraAndMask();
    flashlightScripts();
    alienAI();
  } else {
    ingameSeconds=0;
    gameStage=4;
  }
}
void settingScripts() {
  noStroke();
  fill(255);
  rect(0, 700, 200, 100);
  textAlign(CENTER, CENTER);
  textSize(50);
  fill(0);
  text("Back", 100, 750);
  textAlign(BASELINE);
  stroke(255);
  strokeWeight(5);
  if (settings[0]==0) {
    noFill();
  } else {
    fill(255);
  }
  rect(100, 100, 100, 100);
  if (settings[1]==0) {
    noFill();
  } else {
    fill(255);
  }
  rect(100, 400, 100, 100);
  noStroke();
  fill(255);
  text("Low details mode", 250, 175);
  text("Jumpscares", 250, 475);
  text("Change maximum level", 250, 575);
  if (maxDay==1) {
    fill(0, 255, 0);
  } else {
    fill(255);
  }
  rect(100, 585, 100, 100);
  if (maxDay==2) {
    fill(0, 255, 0);
  } else {
    fill(255);
  }
  rect(225, 585, 100, 100);
  if (maxDay==3) {
    fill(0, 255, 0);
  } else {
    fill(255);
  }
  rect(350, 585, 100, 100);
  if (maxDay==4) {
    fill(0, 255, 0);
  } else {
    fill(255);
  }
  rect(475, 585, 100, 100);
  if (maxDay==5) {
    fill(0, 255, 0);
  } else {
    fill(255);
  }
  rect(600, 585, 100, 100);
  if (maxDay==6) {
    fill(0, 255, 0);
  } else {
    fill(255);
  }
  rect(725, 585, 100, 100);
  if (maxDay==7) {
    fill(0, 255, 0);
  } else {
    fill(255);
  }
  rect(850, 585, 100, 100);
  textAlign(CENTER, CENTER);
  fill(0);
  text("1", 150, 635);
  text("2", 275, 635);
  text("3", 400, 635);
  text("4", 525, 635);
  text("5", 650, 635);
  text("6", 775, 635);
  text("7", 900, 635);
  textAlign(BASELINE);
}
void makePostIt(int x, int y) {
  stroke(0);
  strokeWeight(3);
  fill(255);
  rect(x, y, 30, 60);
  strokeWeight(5);
  line(x+5, y+14, x+24, y+17);
  line(x+4, y+31, x+23, y+30);
  line(x+6, y+46, x+25, y+45);
}
void buildOffice() {
  statc.stop();
  background(125);
  textSize(20);
  fill(0);
  rect(550, 200, 400, 550);
  noStroke();
  if (ingameSeconds<alienWaitTime[19]+135&&flashlight==true) {
    if (!error.isPlaying()) {  
      error.play();
    }
    flashlight=false;
    powerleft++;
  }
  if (flashlight&&someoneInOffice) {
    if (!error.isPlaying()) {
      error.play();
    }
    flashlight=false;
    powerleft++;
  }
  if (flashlight==true) {
    fill(125);
    quad(650, 300, 850, 300, 860, 562, 640, 562);
    fill(50);
    rect(640, 562, 220, 170);
    fill(255, 255, 255, 100);
    ellipse(750, 450, 300, 300);
    if (giga==1) {
      flashCounter++;
    }
    if (newPico==3||newPico==4) {
      makeNewPico(1, 750, 500, 1, false, true);
    } else if (giga==1&&newGiga==3) {
      makeGiga(0.5, 700, 485, 0.5, true);
      rotate(PI);
      makeGiga(0.5, -700, -670, 0.1, true);
      rotate(PI);
      makeNewGiga(0.5, 770, 485, 1, true);
    } else if (giga==1&&tera==2) {
      makeGiga(0.5, 750, 485, 0.5, true);
      makeTera(0.5, 800, 500, 0.5, true);
      rotate(PI);
      makeGiga(0.5, -750, -670, 0.1, true);
      makeTera(0.5, -800, -685, 0.1, true);
      rotate(PI);
    } else if (giga==1) {
      makeGiga(0.5, 750, 485, 0.5, true);
      rotate(PI);
      makeGiga(0.5, -750, -670, 0.1, true);
      rotate(PI);
    } else if (pico==3||pico==4) {
      makePico(0.5, 750, 485, 0.5, false, false, true);
      rotate(PI);
      makePico(0.5, -750, -670, 0.5, false, false, true);
      rotate(PI);
    } else if (tera==2) {
      makeTera(0.5, 750, 485, 0.5, true);
      rotate(PI);
      makeTera(0.5, -750, -670, 0.1, true);
      rotate(PI);
    } else if (newGiga==3) {
      makeNewGiga(0.5, 750, 485, 1, true);
    } else if (newPico==2) {
      makeNewPico(0.5, 750, 485, 1, false, true);
      rotate(PI);
      makeNewPico(0.5, -750, -670, 1, false, true);
      rotate(PI);
    } else if (goldenAlienChance==1) {
      flashCounter2++;
      makeGoldenAlien(1, 750, 485, 0.5, true, false);
    }
  }
  strokeWeight(2);
  stroke(0);
  if (lLight==true) {
    fill(200);
    rect(50, 600, 150, 200);
    strokeWeight(3);
    stroke(0);
    line(200, 600, 50, 691);
    line(50, 691, 200, 768);
    line(200, 768, 50, 768);
  } else {
    fill(0);
    rect(50, 600, 150, 200);
  }
  noStroke();
  if (rLight==true) {
    fill(200);
    rect(1300, 600, 150, 200);
    strokeWeight(3);
    stroke(0);
    line(1300, 600, 1450, 690);
    line(1450, 690, 1300, 768);
    line(1300, 768, 1450, 768);
  } else {
    fill(0);
    rect(1300, 600, 150, 200);
  }
  noStroke();
  fill(0, 100, 0);
  ellipse(750, 800, 1400, 100);
  stroke(0);
  strokeWeight(5);
  fill(50);
  rotate(-PI/36);
  rect(230, 690, 150, 100);
  rotate(PI/36);
  line(430, 677, 422, 703);
  line(422, 703, 384, 684);
  line(384, 684, 370, 717);
  line(343, 708, 370, 717);
  line(343, 708, 347, 680);
  line(347, 680, 324, 680);
  line(324, 680, 322, 734);
  line(370, 717, 395, 736);
  line(377, 746, 395, 736);
  fill(255, 0, 0);
  rect(60, 200, 330, 230);
  makeNewTera(0.5, 120, 270, 1, 0, 0, false, true);
  makeNewNano(0.5, 220, 270, 1, 0, false, true);
  makeNewPico(0.5, 320, 270, 1, false, true);
  textAlign(CENTER, CENTER);
  textSize(50);
  fill(255);
  text("Party!", 220, 392);
  textAlign(LEFT);
  stroke(0);
  strokeWeight(3);
  rotate(-PI/25);
  makePostIt(412, 270);
  rotate(PI/25);
  strokeWeight(3);
  fill(139, 69, 19);
  rect(780, 600, 15, 175);
  rect(810, 600, 15, 160);
  rect(780, 500, 400, 100);
  rect(1165, 600, 15, 160);
  rect(1135, 600, 15, 175);
  rotate(-PI/12);
  makePostIt(638, 709);
  rotate(PI/12);
  strokeWeight(5);
  stroke(0);
  fill(50);
  rect(1017, 434, 150, 100);
  makePostIt(985, 200);
  noStroke();
  noFill();
  if (lLight==false) {
    fill(50);
  } else {
    fill(255);
    rotate(-PI/36);
    rect(235, 695, 10, 20);
    rect(247, 695, 5, 10);
    rotate(PI/36);
    fill(0, 255, 0);
  }
  rect(100, 500, 50, 50);
  if (rLight==false) {
    fill(50);
  } else {
    fill(255);
    rect(1139, 442, 5, 10);
    rect(1150, 442, 10, 20);
    fill(0, 255, 0);
  }
  rect(1350, 500, 50, 50);
  if (flashlight) {
    rotate(-PI/36);
    fill(255);
    rect(366, 695, 10, 20);
    rotate(PI/36);
    rect(1025, 440, 10, 20);
    rect(1037, 440, 5, 10);
  }
  if (lLight==true) {
    if (newNano==5) {
      strokeWeight(7.5);
      stroke(139, 69, 19);
      line(125-100*0.75*cos(4*PI/3), 675-100*0.75*sin(4*PI/3), 125-100*0.75*cos(4*PI/3), 675-100*0.75*sin(4*PI/3)+35);
      line(125-100*0.75*cos(5*PI/3), 675-100*0.75*sin(5*PI/3), 125-100*0.75*cos(5*PI/3), 675-100*0.75*sin(5*PI/3)+44);
      makeNewNano(0.75, 125, 675, 1, 1, false, false);
    } else if (gobo==5) {
      strokeWeight(7.5);
      stroke(0, 255, 255);
      line(125-100*0.75*cos(4*PI/3), 675-100*0.75*sin(4*PI/3), 125-100*0.75*cos(4*PI/3), 675-100*0.75*sin(4*PI/3)+35);
      line(125-100*0.75*cos(5*PI/3), 675-100*0.75*sin(5*PI/3), 125-100*0.75*cos(5*PI/3), 675-100*0.75*sin(5*PI/3)+44);
      makeGobo(0.75, 125, 675, 1, "", false, false);
    }
  }
  if (rLight==true) {
    if (newTera==5||newTera==6) {
      strokeWeight(7.5);
      stroke(138, 43, 226);
      line(1375-100*0.75*cos(4*PI/3), 675-100*0.75*sin(4*PI/3), 1375-100*0.75*cos(4*PI/3), 675-100*0.75*sin(4*PI/3)+44);
      line(1375-100*0.75*cos(5*PI/3), 675-100*0.75*sin(5*PI/3), 1375-100*0.75*cos(5*PI/3), 675-100*0.75*sin(5*PI/3)+35);
      makeNewTera(0.75, 1375, 675, 1, 1, 0, false, false);
    } else if (newGiga==6) {
      makeNewGiga(0.75, 1375, 675, 1, false);
    }
  }
  noFill();
  noStroke();
  if (mouseX>100&&mouseX<150&&mouseY>500&&mouseY<550&&mousePressed&&mask==false&&gobo<6) {
    lLight=true;
    flashlight=false;
  } else {
    lLight=false;
  }
  if (mouseX>1350&&mouseX<1400&&mouseY>500&&mouseY<550&&mousePressed&&mask==false&&gobo<6) {
    rLight=true;
    flashlight=false;
  } else {
    rLight=false;
  }
  if (gobo==6) {
    if (!goboLaugh.isPlaying()) {
      goboLaugh.play();
    }
    makeGobo(1, 339, 610, 1, "LOL!", true, true);
  }
  if (newTeraScan!=0) {
    makeNewTera(2, newTeraScan, 400, 1, 1, 0, false, true);
  }
  if (someoneInOffice) {
    if (pico>4) {
      makePico(2, 750, 400, 0.5, false, true, true);
    } else if (newPico>4) {
      makeNewPico(2, 750, 400, 1, false, true);
    } else if (tera>5) {
      makeTera(2, 750, 400, 0.5, true);
    } else if (nano>4) {
      makeNano(2, 750, 400, 0.5, 1, false, true);
    }
  }
  if (maskTimer[18]>0&&maskTimer[18]<60) {
    makeGoldenAlien(2, 750, 400, 0.5-0.5*maskTimer[18]/60, false, true);
  }
  if (maskTimer[18]>60) {
    maskTimer[18]=0;
  }
  if (mask==true) {
    fill(50, 50, 50);
    noStroke();
    rect(0, 0, 1500, 150);
    rect(0, 400, 1500, 100);
    rect(0, 700, 1500, 100);
    rect(0, 0, 300, 800);
    rect(1200, 0, 300, 800);
    rect(600, 150, 300, 300);
  }
}
void flashlightScripts() {
  if (keyPressed&&key==CODED&&keyCode==CONTROL&&powerleft>0&&mask==false&&lLight==false&&rLight==false) {
    flashlight=true;
  } else {
    flashlight=false;
  }
  if (ingameSeconds<someoneMoved[camLeftOff]+90&&camera==true) {
    flashlight=false;
  }
  if (camLeftOff==1&&newPico==0&&newNano!=0&&newTera!=0&&camera&&newPicoChance==1) {
    if (flashlight&&!error.isPlaying()  ) {
      error.play();
    }
    flashlight=false;
  }
  if (flashlight==true) {
    powerleft=powerleft-1;
  }
  if (powerleft>initialflash*4/5) {
    strokeWeight(3);
    stroke(255);
    line(75, 27, 75, 98);
    line(125, 27, 125, 98);
    line(175, 27, 175, 98);
    noStroke();
    fill(0);
  } else {
    noFill();
  }
  strokeWeight(2);
  stroke(0);
  rect(25, 25, 200, 75);
  noFill();
  rect(225, 50, 10, 25);
  noStroke();
  if (powerleft>initialflash*4/5) {
    strokeWeight(3);
    stroke(255);
    line(75, 27, 75, 98);
    line(125, 27, 125, 98);
    line(175, 27, 175, 98);
    noStroke();
  }
  fill(0);
  if (powerleft>initialflash*3/5&&powerleft<initialflash*4/5+1) {
    rect(25, 25, 150, 75);
    strokeWeight(3);
    stroke(255);
    line(75, 27, 75, 98);
    line(125, 27, 125, 98);
    noStroke();
  } else {
    if (powerleft>initialflash*2/5&&powerleft<initialflash*3/5+1) {
      rect(25, 25, 100, 75);
      strokeWeight(3);
      stroke(255);
      line(75, 27, 75, 98);
      noStroke();
    } else {
      if (powerleft>initialflash*1/5&&powerleft<initialflash*2/5+1) {
        rect(25, 25, 50, 75);
      } else if (powerleft<initialflash*1/5+1) {
        if (ingameSeconds%60==15) {
          lowFlashReady=true;
        }
        if (ingameSeconds%60==45) {
          lowFlashReady=false;
        }
        if (lowFlashReady==true) {
          fill(255, 0, 0);
        } else {
          noFill();
        }
        rect(25, 25, 50, 75);
      }
    }
  }
  fill(0);
  textSize(35);
  textAlign(RIGHT);
  text("Night "+currentDay, 1500, 50);
  textAlign(BASELINE);
  if (ingameSeconds<4625) {
    text("12 A.M.", 1375, 100);
  } else if (ingameSeconds<8825) {
    text("1 A.M.", 1400, 100);
  } else if (ingameSeconds<13025) {
    text("2 A.M.", 1400, 100);
  } else if (ingameSeconds<17225) {
    text("3 A.M.", 1400, 100);
  } else if (ingameSeconds<21425) {
    text("4 A.M.", 1400, 100);
  } else if (ingameSeconds<25625) {
    text("5 A.M.", 1400, 100);
  }
}
void cameraAndMask() {
  youCanCloseMask = !someoneInOffice&&newTeraScan==0;
  if (mouseX>300&&mouseX<750&&mouseY>750&&mouseY<800) {
    mouseTouchingMask=true;
  } else {
    mouseTouchingMask=false;
    maskReactivated=true;
  }
  if (mouseX>750&&mouseX<1200&&mouseY>750&&mouseY<800) {
    mouseTouchingCamera=true;
  } else {
    mouseTouchingCamera=false;
    cameraReactivated=true;
  }
  if (musicBox<60) {
    if (musicBox<15) {
      fill(255, 0, 0);
    } else {
      fill(255, 255, 0);
    }
    rect(1200, 750, 50, 50);
    textSize(45);
    textAlign(CENTER, CENTER);
    fill(0);
    text("!", 1225, 775);
    textAlign(BASELINE);
  }
  if (camera==false&&mask==false) {
    if (mouseTouchingMask==false) {
      fill(0, 0, 255);
      rect(300, 750, 450, 50);
    }
    if (mouseTouchingCamera==false) {
      fill(0, 255, 0);
      rect(750, 750, 450, 50);
    }
    if (mouseTouchingCamera==true&&cameraReactivated==true) {
      newPicoChance=(int)random(0, 11);
      camera=true;
      cameraUp.play();
      cameraReactivated=false;
    }
    if (mouseTouchingMask==true&&maskReactivated==true) {
      mask=true;
      maskUp.play();
      maskReactivated=false;
    }
  }
  if (camera==true) {
    if (mouseTouchingCamera==false) {
      fill(0, 255, 0);
      rect(750, 750, 450, 50);
    }
    if (mouseTouchingCamera==true&&cameraReactivated==true) {
      camera=false;
      cameraDwn.play();
      cameraReactivated=false;
    }
  }
  if (mask==true) {
    if (mouseTouchingMask==false&&youCanCloseMask) {
      fill(0, 0, 255);
      rect(300, 750, 450, 50);
    }
    if (maskReactivated==true&&mouseTouchingMask==true&&youCanCloseMask) {
      mask=false;
      maskUp.play();
      breathinbreathout.stop();
      maskReactivated=false;
    }
  }
}
void makeBalloon(int x, int y) {
  strokeWeight(3);
  stroke(0);
  ellipse(x, y, 80, 100); 
  line(x, y+50, x, y+150);
  fill(255, 255, 255, 100);
  quad(x+12, y-10, x+24, y-13, x+26, y+17, x+16, y+15);
}
void makeStar(float x, float y, float h, float w) {
  beginShape();
  vertex(x, y-h); 
  vertex(x+cos(3*PI/10)*w, y-sin(3*PI/10)*w);
  vertex(x+cos(PI/10)*h, y-h*sin(PI/10)); 
  vertex(x+cos(19*PI/10)*w, y-sin(19*PI/10)*w);
  vertex(x+cos(17*PI/10)*h, y-h*sin(17*PI/10));
  vertex(x, y+w);
  vertex(x-cos(3*PI/10)*h, y+h*sin(3*PI/10));
  vertex(x-cos(PI/10)*w, y+sin(PI/10)*w);
  vertex(x-cos(PI/10)*h, y-sin(PI/10)*h);
  vertex(x-cos(3*PI/10)*w, y-sin(3*PI/10)*w);
  endShape();
}
void cameraScripts() {  
  background(255);
  fill(0);
  noStroke();
  rect(500, 0, 700, 700);
  strokeWeight(2);
  stroke(0);
  line(95, 450, 95, 500);
  line(245, 450, 245, 500);
  line(120, 525, 145, 525);
  line(195, 525, 220, 525);
  line(400, 425, 350, 475);
  line(300, 450, 270, 250);
  line(245, 225, 70, 225);
  line(400, 225, 295, 225);
  line(170, 500, 170, 225);
  line(305, 150, 270, 200);
  line(95, 350, 95, 400);
  line(245, 350, 245, 400);
  line(120, 325, 220, 325);
  noFill();
  if (camLeftOff==11) {
    fill(0, 255, 0);
  } else {
    noFill();
  }
  rect(70, 500, 50, 50);
  if (camLeftOff==12) {
    fill(0, 255, 0);
  } else {
    noFill();
  }
  rect(220, 500, 50, 50);
  if (camLeftOff==8) {
    fill(0, 255, 0);
  } else {
    noFill();
  }
  rect(70, 400, 50, 50);
  if (camLeftOff==4) {
    fill(0, 255, 0);
  } else {
    noFill();
  }
  rect(220, 400, 50, 50);
  if (camLeftOff==7) {
    fill(0, 255, 0);
  } else {
    noFill();
  }
  rect(70, 300, 50, 50);
  if (camLeftOff==3) {
    fill(0, 255, 0);
  } else {
    noFill();
  }
  rect(220, 300, 50, 50);
  noFill();
  rect(145, 500, 50, 50);
  if (camLeftOff==6) {
    fill(0, 255, 0);
  } else {
    noFill();
  }
  rect(20, 200, 50, 50);
  if (camLeftOff==2) {
    fill(0, 255, 0);
  } else {
    noFill();
  }
  rect(245, 200, 50, 50);
  if (camLeftOff==1) {
    fill(0, 255, 0);
  } else {
    noFill();
  }
  rect(280, 100, 50, 50);
  if (camLeftOff==9) {
    fill(0, 255, 0);
  } else {
    noFill();
  }
  rect(400, 400, 50, 50);
  if (camLeftOff==10) {
    fill(0, 255, 0);
  } else {
    noFill();
  }
  rect(300, 450, 50, 50);
  if (camLeftOff==5) {
    fill(0, 255, 0);
  } else {
    noFill();
  }
  rect(400, 200, 50, 50);
  fill(0);
  textSize(13);
  text("CAM 1", 280, 130);
  text("CAM 2", 245, 230);
  text("CAM 3", 220, 330);
  text("CAM 4", 220, 430);
  text("CAM 5", 400, 230);
  text("CAM 6", 20, 230);
  text("CAM 7", 70, 330);
  text("CAM 8", 70, 430);
  text("CAM 9", 400, 430);
  text("CAM 10", 300, 480);
  text("CAM 11", 70, 530);
  text("CAM 12", 220, 530);
  text("YOU", 150, 530);
  noStroke();
  noFill();
  if (musicBox<60) {
    if (musicBox<15) {
      fill(255, 0, 0);
    } else {
      fill(255, 255, 0);
    }
    rect(400, 150, 50, 50);
    fill(255);
    textSize(45);
    textAlign(CENTER, CENTER);
    text("!", 425, 175);
    textAlign(BASELINE);
  }
  noStroke();
  noFill();
  textSize(50);
  fill(0);
  if (camLeftOff==1) {
    text("Show Stage", 70, 750);
  } else if (camLeftOff==2) {
    text("Main Hallway", 70, 750);
  } else if (camLeftOff==3) {
    text("Party Room 2", 70, 750);
  } else if (camLeftOff==4) {
    text("Party Room 4", 70, 750);
  } else if (camLeftOff==5) {
    text("Music Theater", 70, 750);
  } else if (camLeftOff==6) {
    text("Maintenance", 70, 750);
  } else if (camLeftOff==7) {
    text("Party Room 1", 70, 750);
  } else if (camLeftOff==8) {
    text("Party Room 3", 70, 750);
  } else if (camLeftOff==9) {
    text("Backstage", 70, 750);
  } else if (camLeftOff==10) {
    text("Laser Tag Arena", 70, 750);
  } else if (camLeftOff==11) {
    text("Left Airvent", 70, 750);
  } else {
    text("Right Airvent", 70, 750);
  }
  text("("+camLeftOff+")", 70, 800);
  if (camLeftOff==5) {
    strokeWeight(3);
    fill(0, 255, 0);
    stroke(0);
    rect(1225, 200, 250, 100);
    fill(255);
    if (musicBox>240) {
      strokeWeight(3);
      stroke(0);
      line(1425, 200, 1425, 300);
    } else {
      noStroke();
      rect(1425, 201.5, 50, 98.5);
    }
    if (musicBox>180) {
      strokeWeight(3);
      stroke(0);
      line(1375, 200, 1375, 300);
    } else {
      noStroke();
      rect(1375, 201.5, 50, 98.5);
    }
    if (musicBox>120) {
      strokeWeight(3);
      stroke(0);
      line(1325, 200, 1325, 300);
    } else {
      noStroke();
      rect(1325, 201.5, 50, 98.5);
    }
    if (musicBox>60) {
      strokeWeight(3);
      stroke(0);
      line(1275, 200, 1275, 300);
    } else {
      noStroke();
      rect(1275, 201.5, 50, 98.5);
    }
    if (musicBox<1) {
      noStroke();
      rect(1226.5, 201.5, 50, 98.5);
    }
    if (mousePressed&&mouseX>50&&mouseX<300&&mouseY>600&&mouseY<700) {
      if (ingameSeconds%30==0) {
        windBox.play();
      }
      fill(0, 0, 255); 
      musicBox++;
    } else {
      fill(0);
    }
    rect(50, 600, 250, 100);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(25);
    text("Wind up Music Box", 175, 650);
    textSize(50);
    textAlign(BASELINE);
    noStroke();
  }
  if (!flashlight&&camLeftOff==1) {
    if (!(newPico==0&&newTera!=0&&newNano!=0&&newPicoChance==1)) {
      fill(48, 25, 52);
      arc(850, 350, 700, 700, PI, 2*PI);
      fill(50, 0, 0);
      arc(850, 350, 700, 700, 0, PI);
      fill(50, 50, 0);
      makeStar(600, 228, 30, 20);
      makeStar(632, 111, 30, 20);
      makeStar(683, 253, 30, 20);
      makeStar(752, 150, 30, 20);
      makeStar(850, 200, 50, 30);
      makeStar(948, 242, 30, 20);
      makeStar(1115, 261, 30, 20);
      makeStar(943, 96, 30, 20);
      makeStar(1053, 148, 30, 20);
      stroke(0);
      strokeWeight(3);
      line(685, 37, 777, 108);
      rotate(PI/12);
      fill(0, 0, 50);
      rect(777, -100, 300, 80);
      fill(50, 40, 0);
      textAlign(CENTER, CENTER);
      textFont(createFont("Calibri Bold Italic", 40));
      text("Happy Birthday!", 927, -60);
      textAlign(LEFT);
      textFont(createFont("Lucida Sans", 40));
      rotate(-PI/12);
      line(1065, 183, 1127, 136);
      if (newTera==0&&newPico==0&&newNano==0) {
        makeNewTera(1, 650, 400, 0.2, 1, 1, false, true);
        makeNewPico(1, 875, 400, 0.2, false, true);
        fill(0);
        ellipse(825, 380, 9, 9);
        ellipse(905, 380, 9, 9);
        makeNewNano(1, 1100, 400, 0.2, 0, false, true);
      } else if (newTera==0&&newPico==0) {
        makeNewTera(1, 650, 400, 0.2, 1, 1, false, true);
        makeNewPico(1, 875, 400, 0.2, false, true);
        fill(0);
        ellipse(825, 380, 9, 9);
        ellipse(905, 380, 9, 9);
      } else if (newPico==0&&newNano==0) {
        makeNewPico(1, 875, 400, 0.2, false, true);
        fill(0);
        ellipse(825, 380, 9, 9);
        ellipse(905, 380, 9, 9);
        makeNewNano(1, 1100, 400, 0.2, 1, false, true);
      } else if (newPico==0) {
        makeNewPico(1, 875, 400, 0.2, false, true);
        fill(0);
        ellipse(825, 380, 9, 9);
        ellipse(905, 380, 9, 9);
      }
    } else {
      fill(48, 25, 52);
      arc(850, 350, 700, 700, PI, 2*PI);
      fill(50, 0, 0);
      arc(850, 350, 700, 700, 0, PI);
      fill(50, 50, 0);
      makeStar(600, 228, 30, 20);
      makeStar(632, 111, 30, 20);
      makeStar(683, 253, 30, 20);
      makeStar(752, 150, 30, 20);
      makeStar(850, 200, 50, 30);
      makeStar(948, 242, 30, 20);
      makeStar(1115, 261, 30, 20);
      makeStar(943, 96, 30, 20);
      makeStar(1053, 148, 30, 20);
      stroke(0);
      strokeWeight(3);
      line(685, 37, 777, 108);
      rotate(PI/12);
      fill(0, 0, 50);
      rect(777, -100, 300, 80);
      fill(255);
      textAlign(CENTER, CENTER);
      textFont(createFont("Calibri Bold Italic", 40));
      text("Turn around", 927, -60);
      textAlign(LEFT);
      textSize(50);
      textAlign(CENTER, CENTER);
      rotate(-PI/12);
      text("It's me", 772, 540);
      textFont(createFont("Lucida Sans", 40));
      line(1065, 183, 1127, 136);
      noStroke();
      fill(47, 28, 10);
      ellipse(772, 350, 300, 300);
      fill(51);
      arc(772, 350, 300, 300, 0, PI);
      arc(772, 350, 300, 150, PI, 2*PI);
      fill(0);
      ellipse(697, 350, 36, 36);
      ellipse(817, 350, 36, 36);
      fill(255);
      ellipse(697, 350, 24, 24);
      ellipse(817, 350, 24, 24);
      fill(0);
      ellipse(697, 350, 12, 12);
      ellipse(817, 350, 12, 12);
      fill(100, 0, 0);
      ellipse(679, 400, 80/3, 80/3);
      ellipse(847, 400, 80/3, 80/3);
      fill(255);
      strokeWeight(3);
      stroke(0);
      arc(761, 408, 140, 135, 0, PI);
      arc(761, 408, 140, 20, PI, 2*PI);
      textAlign(LEFT);
    }
    noStroke();
    noFill();
  }
  if (flashlight==true) {
    fill(255);
    noStroke();
    ellipse(850, 350, 700, 700);
    if (camLeftOff==1) {
      fill(75, 0, 130);
      arc(850, 350, 700, 700, PI, 2*PI);
      fill(255, 0, 0);
      arc(850, 350, 700, 700, 0, PI);
      fill(255, 255, 0);
      makeStar(600, 228, 30, 20);
      makeStar(632, 111, 30, 20);
      makeStar(683, 253, 30, 20);
      makeStar(752, 150, 30, 20);
      makeStar(850, 200, 50, 30);
      makeStar(948, 242, 30, 20);
      makeStar(1115, 261, 30, 20);
      makeStar(943, 96, 30, 20);
      makeStar(1053, 148, 30, 20);
      stroke(0);
      strokeWeight(3);
      line(685, 37, 777, 108);
      rotate(PI/12);
      fill(0, 0, 255);
      rect(777, -100, 300, 80);
      fill(255, 215, 0);
      textAlign(CENTER, CENTER);
      textFont(createFont("Calibri Bold Italic", 40));
      text("Happy Birthday!", 927, -60);
      textAlign(LEFT);
      textFont(createFont("Lucida Sans", 40));
      rotate(-PI/12);
      line(1065, 183, 1127, 136);
      if (newTera==0&&newPico==0&&newNano==0) {
        fill(0);
        ellipse(620, 430, 200, 200);
        strokeWeight(5);
        line(574, 508, 600, 580);
        line(669, 517, 700, 580);
        fill(0);
        ellipse(845, 430, 200, 200);
        strokeWeight(5);
        line(799, 508, 825, 580);
        line(894, 517, 925, 580);
        fill(0);
        ellipse(1070, 430, 200, 200);
        strokeWeight(5);
        line(1024, 508, 1050, 580);
        line(1115, 517, 1150, 580);
        makeNewTera(1, 650, 400, 1, 1, 0, false, true);
        makeNewPico(1, 875, 400, 1, false, true);
        makeNewNano(1, 1100, 400, 1, 0, false, true);
      } else if (newTera==0&&newPico==0) {
        fill(0);
        ellipse(620, 430, 200, 200);
        strokeWeight(5);
        line(574, 508, 600, 580);
        line(669, 517, 700, 580);
        fill(0);
        ellipse(845, 430, 200, 200);
        strokeWeight(5);
        line(799, 508, 825, 580);
        line(894, 517, 925, 580);
        makeNewTera(1, 650, 400, 1, 1, 0, false, true);
        makeNewPico(1, 875, 400, 1, false, true);
      } else if (newPico==0&&newNano==0) {
        fill(0);
        ellipse(845, 430, 200, 200);
        strokeWeight(5);
        line(799, 508, 825, 580);
        line(894, 517, 925, 580);
        fill(0);
        ellipse(1070, 430, 200, 200);
        strokeWeight(5);
        line(1024, 508, 1050, 580);
        line(1115, 517, 1150, 580);
        makeNewPico(1, 875, 400, 1, false, true);
        makeNewNano(1, 1100, 400, 1, 0, false, true);
      } else if (newPico==0) {
        fill(0);
        ellipse(845, 430, 200, 200);
        strokeWeight(5);
        line(799, 508, 825, 580);
        line(894, 517, 925, 580);
        makeNewPico(1, 875, 400, 1, false, true);
      }
      noFill();
      noStroke();
    }
    if (camLeftOff==2) {
      noStroke();
      fill(50);
      arc(850, 350, 700, 700, PI/4, 3*PI/4);
      arc(850, 350, 700, 700, 5*PI/4, 7*PI/4);
      fill(100, 0, 0);
      arc(850, 350, 700, 700, 3*PI/4, PI-PI/10);
      arc(850, 350, 700, 700, PI/10, 1*PI/4);
      fill(50, 0, 50);
      arc(850, 350, 700, 700, PI-PI/10, 5*PI/4);
      arc(850, 350, 700, 700, 7*PI/4, 2*PI+PI/10);
      fill(255);
      rect(600, 100, 500, 500);
      fill(50);
      quad(600, 600, 700, 400, 881, 400, 1100, 600);
      quad(600, 100, 700, 150, 881, 150, 1100, 100);
      noStroke();
      fill(100, 0, 0);
      quad(700, 225, 850+350*cos(PI-PI/10), 350+350*sin(PI-PI/10), 850+350*cos(3*PI/4), 350+350*sin(3*PI/4), 700, 400);
      quad(881, 225, 881, 400, 850+350*cos(PI/4), 350+350*sin(PI/4), 850+350*cos(PI/10), 350+350*sin(PI/10));
      rect(700, 225, 181, 175);
      fill(50, 0, 50);
      quad(600, 100, 600, 350, 700, 225, 700, 150);
      rect(700, 150, 181, 75);
      quad(881, 150, 881, 225, 1100, 400, 1100, 100);
      fill(255, 255, 0);
      makeStar(529, 383, 20, 10);
      makeStar(572, 343, 20, 10);
      makeStar(611, 300, 20, 10);
      makeStar(639, 255, 20, 10);
      makeStar(676, 217, 20, 10);
      makeStar(740, 188, 30, 15);
      makeStar(524, 305, 20, 10);
      makeStar(564, 265, 20, 10);
      makeStar(826, 188, 30, 15);
      makeStar(591, 217, 20, 10);
      makeStar(636, 177, 20, 10);
      makeStar(579, 158, 20, 10);
      makeStar(916, 210, 20, 10);
      makeStar(952, 235, 20, 10);
      makeStar(988, 267, 20, 10);
      makeStar(1025, 291, 20, 10);
      makeStar(1064, 323, 20, 10);
      makeStar(1102, 352, 20, 10);
      makeStar(1148, 392, 20, 10);
      makeStar(1153, 329, 20, 10);
      makeStar(1104, 290, 20, 10);
      makeStar(1052, 257, 20, 10);
      makeStar(1000, 214, 20, 10);
      makeStar(946, 172, 20, 10);
      makeStar(1009, 152, 20, 10);
      makeStar(1057, 175, 20, 10);
      makeStar(1102, 199, 20, 10);
      makeStar(1148, 237, 20, 10);
      makeStar(1025, 291, 20, 10);
      strokeWeight(5);
      stroke(0);
      line(700, 150, 881, 150);
      line(850+350*cos(3*PI/4), 350+350*sin(3*PI/4), 700, 400);
      line(700, 225, 881, 225);
      line(700, 400, 881, 400);
      line(881, 400, 850+350*cos(PI/4), 350+350*sin(PI/4));
      line(700, 150, 700, 400);
      line(881, 150, 881, 400);
      line(600, 100, 700, 150);
      line(1100, 100, 881, 150);
      line(850+350*cos(PI-PI/10), 350+350*sin(PI-PI/10), 700, 225);
      line(881, 225, 850+350*cos(PI/10), 350+350*sin(PI/10));
      fill(0);
      rect(750, 190, 100, 210);
      if (tera==1&&newNano!=1&&pico!=1) {
        makeTera(0.5, 800, 295, 0.5, true);
      }
      fill(125);
      quad(750, 190, 750, 400, 828, 438, 828, 190);
      fill(200);
      quad(766, 226, 766, 266, 807, 269, 807, 229);
      fill(255);
      noStroke();
      ellipse(830, 71, 200, 100);
      if (newNano==1) {
        makeNewNano(1.5, 728, 312, 0.25, 1, false, true);
      }
      if (pico==1&&newNano!=1) {
        makePico(1, 736, 365, 0.5, true, true, true);
      }
    }
    if (camLeftOff==3) {
      fill(0, 0, 50);
      ellipse(850, 350, 700, 700);
      fill(125);
      arc(850, 350, 700, 700, PI/12, PI-PI/12);
      fill(100, 0, 0);
      arc(850, 350, 700, 700, -PI/12, PI/12);
      arc(850, 350, 700, 700, PI-PI/12, PI+PI/12);
      quad(850, 183, 850, 350, 850+350*cos(PI-PI/12), 350+350*sin(PI-PI/12), 850+350*cos(PI+PI/12), 350+350*sin(PI+PI/12));
      quad(850, 183, 850, 350, 850+350*cos(PI/12), 350+350*sin(PI/12), 850+350*cos(PI/12), 350+350*sin(-PI/12));
      stroke(0);
      strokeWeight(3);
      line(850, 0, 850, 350);
      fill(125, 0, 125);
      quad(504, 338, 565, 502, 888, 381, 795, 280);
      quad(565, 502, 565, 554, 888, 438, 888, 381);
      fill(255, 0, 0);
      makeBalloon(611, 414);
      fill(255, 215, 0);
      makeBalloon(700, 394);
      fill(0, 255, 0);
      makeBalloon(776, 372);
      fill(0, 0, 255);
      makeBalloon(846, 362);
      fill(50, 50, 0);
      noStroke();
      makeStar(606, 158, 20, 10);
      makeStar(728, 134, 20, 10);
      makeStar(897, 148, 20, 10);
      makeStar(983, 102, 20, 10);
      if (nano==1) {
        makeNano(1, 680, 154, 0.25, 0, false, true);
      } else if (newNano==2) {
        makeNewNano(1, 959, 342, 0.5, 0, false, true);
      } else if (newTera==2) {
        makeNewTera(0.5, 700, 394, 0.5, 0, 0, false, false);
      }
    }
    if (camLeftOff==4) {
      fill(50);
      arc(850, 350, 700, 700, 0, PI);
      fill(0, 0, 50);
      arc(850, 350, 700, 700, PI, 2*PI);
      fill(50, 0, 0);
      arc(850, 350, 700, 700, -PI/8, 0);
      arc(850, 350, 700, 700, PI, 9*PI/8);
      rect(525, 215, 1172-525, 350-215);
      fill(125);
      rect(796, 150, 120, 200);
      fill(255);
      rect(817, 197, 80, 50);
      textSize(12);
      fill(0);
      textAlign(CENTER);
      text("Closed for", 817+40, 197+12);
      text("Maintenance", 817+40, 197+37);
      textAlign(BASELINE);
      fill(50, 50, 0);
      makeStar(832, 58, 20, 10);
      makeStar(953, 75, 20, 10);
      makeStar(673, 106, 20, 10);
      makeStar(738, 162, 20, 10);
      makeStar(1004, 162, 20, 10);
      if (newTera==3) {
        fill(0);
        rect(796, 150, 120, 200);
        makeNewTera(0.5, 855, 206, 0, 0, 0, false, true);
      } else if (nano==2) {
        makeNano(1, 737, 205, 0.5, 1, false, true);
      }
      if (newGiga==4) {
        makeNewGiga(1, 862, 437, 1, true);
      }
    }
    if (camLeftOff==5) {
      noStroke();
      fill(50, 0, 0);
      arc(850, 350, 700, 700, 0, PI);
      fill(0, 0, 50);
      arc(850, 350, 700, 700, PI, 2*PI);
      strokeWeight(3);
      noStroke();
      fill(0);
      rect(573, 137, 1125-573, 569-137);
      quad(573, 137, 695, 69, 1166, 75, 1125, 137);
      quad(1166, 75, 1125, 137, 1125, 569, 1189, 484);
      stroke(0);
      strokeWeight(3);
      fill(125);
      rect(900, 138, 180, 410);
      quad(1080, 548, 1136, 495, 1136, 184, 1080, 138);
      noStroke();
      fill(0);
      rect(929, 265, 80, 15);
      textAlign(CENTER, CENTER);
      textSize(50);
      text("Tickets", 990, 343);
      fill(125);
      text("Enter here", 732, 241);
      textAlign(BASELINE);
      rect(605, 314, 100, 569-314);
      fill(0);
      ellipse(689, 431, 20, 20);
      noStroke();
      noFill();
      if (puppet==0) {
        fill(50, 0, 0);
        stroke(0);
        strokeWeight(3);
        rect(763, 51, 50, 50);
        quad(813, 51, 834, 47, 834, 97, 813, 101);
        fill(50, 50, 0);
        noStroke();
        makeStar(785, 76, 20, 10);
      }
      if (puppet==1) {
        makePuppet(0.5, 795, 50, 0.5, true, false);
        fill(50, 0, 0);
        stroke(0);
        strokeWeight(3);
        rect(763, 51, 50, 50);
        quad(813, 51, 834, 47, 834, 97, 813, 101);
        fill(50, 50, 0);
        noStroke();
        makeStar(785, 76, 20, 10);
        fill(50, 0, 0);
        stroke(0);
        strokeWeight(3);
        quad(762, 52, 783, 48, 783, 38, 762, 42);
      }
      if (puppet==2) {
        fill(50, 0, 0);
        stroke(0);
        strokeWeight(3);
        rect(763, 51, 50, 50);
        quad(813, 51, 834, 47, 834, 97, 813, 101);
        fill(50, 50, 0);
        noStroke();
        makeStar(785, 76, 20, 10);
        fill(50, 0, 0);
        stroke(0);
        strokeWeight(3);
        quad(762, 52, 783, 48, 783, 38, 762, 42);
        makePuppet(1, 979, 237, 1, true, false);
      }
      if (puppet>2) {
        fill(50, 0, 0);
        stroke(0);
        strokeWeight(3);
        rect(763, 51, 50, 50);
        quad(813, 51, 834, 47, 834, 97, 813, 101);
        fill(50, 50, 0);
        noStroke();
        makeStar(785, 76, 20, 10);
        fill(50, 0, 0);
        stroke(0);
        strokeWeight(3);
        quad(762, 52, 783, 48, 783, 38, 762, 42);
      }
      if (newGiga==1) {
        makeNewGiga(1, 900, 383, 1, true);
      }
    }
    if (camLeftOff==6) {
      noStroke();
      fill(125);
      ellipse(850, 350, 700, 700);
      fill(255, 0, 0);
      beginShape();
      vertex(1021, 470);
      vertex(1054, 462);
      vertex(1054, 400);
      vertex(1021, 400);
      vertex(881, 276);
      vertex(499, 353);
      vertex(505, 411);
      vertex(882, 324);
      endShape();
      fill(75, 0, 130);
      beginShape();
      vertex(1054, 400);
      vertex(1054, 65.5988);
      if (settings[0]==0) {
        for (float abcd = 3*PI/10; abcd<PI; abcd+=7*PI/320) { 
          vertex(350*cos(abcd)+850, 350-350*sin(abcd));
        }
      } else {
        for (float abcd = 3*PI/10; abcd<PI; abcd+=7*PI/40) { 
          vertex(350*cos(abcd)+850, 350-350*sin(abcd));
        }
      }
      vertex(499, 352);
      vertex(881, 276);
      vertex(1021, 400);
      endShape();
      strokeWeight(3);
      stroke(0);
      line(1021, 400, 881, 276);
      line(881, 276, 499, 353);
      line(1021, 470, 882, 324);
      line(1021, 470, 1021, 30);
      line(1021, 470, 1054, 462);
      line(1054, 462, 1054, 59);
      line(882, 324, 505, 411);
      line(881, 324, 881, 2);
      fill(255, 255, 0);
      noStroke();
      makeStar(1038, 288, 18, 10);
      makeStar(1038, 225, 18, 10);
      makeStar(1038, 166, 18, 10);
      makeStar(1038, 166, 18, 10);
      makeStar(1038, 103, 18, 10);
      makeStar(983, 323, 18, 10);
      makeStar(985, 267, 18, 10);
      makeStar(983, 209, 18, 10);
      makeStar(985, 136, 18, 10);
      makeStar(983, 69, 18, 10);
      makeStar(923, 262, 18, 10);
      makeStar(923, 205, 18, 10);
      makeStar(923, 103, 18, 10);
      makeStar(923, 41, 18, 10);
      makeStar(852, 253, 18, 10);
      makeStar(852, 187, 18, 10);
      makeStar(852, 117, 18, 10);
      makeStar(852, 38, 18, 10);
      makeStar(797, 71, 18, 10);
      makeStar(797, 153, 18, 10);
      makeStar(797, 221, 18, 10);
      makeStar(738, 253, 18, 10);
      makeStar(738, 187, 18, 10);
      makeStar(738, 117, 18, 10);
      makeStar(693, 153, 18, 10);
      makeStar(693, 221, 18, 10);
      makeStar(693, 285, 18, 10);
      makeStar(633, 253, 18, 10);
      makeStar(633, 187, 18, 10);
      makeStar(633, 117, 18, 10);
      makeStar(593, 153, 18, 10);
      makeStar(593, 221, 18, 10);
      makeStar(593, 285, 18, 10);
      makeStar(535, 243, 18, 10);
      makeStar(535, 309, 18, 10);
      if (pico==0&&tera==0&&nano==0) {
        makeTera(0.5, 761, 270, 0.4, true);
        rotate(PI/6);
        makeNano(0.5, 865, 158, 0.4, 0, true, false);
        strokeWeight(10*0.5);
        stroke(0, 255*0.4, 0);
        line(865-100*0.4*cos(4*PI/3), 158-100*0.4*sin(4*PI/3), 865-100*0.4*cos(4*PI/3), 158-100*0.4*sin(4*PI/3)+50*0.4);
        line(865-100*0.4*cos(5*PI/3), 158-100*0.4*sin(5*PI/3), 865-100*0.4*cos(5*PI/3), 158-100*0.4*sin(5*PI/3)+40*0.4);
        rotate(-PI/3);
        makePico(0.5, 610, 984, 0.4, true, false, true);
        rotate(PI/6);
      } else if (pico==0&&nano==0) {
        rotate(PI/6);
        makeNano(0.5, 865, 158, 0.4, 1, true, false);
        strokeWeight(10*0.5);
        stroke(0, 255*0.4, 0);
        line(865-100*0.4*cos(4*PI/3), 158-100*0.4*sin(4*PI/3), 865-100*0.4*cos(4*PI/3), 158-100*0.4*sin(4*PI/3)+50*0.4);
        line(865-100*0.4*cos(5*PI/3), 158-100*0.4*sin(5*PI/3), 865-100*0.4*cos(5*PI/3), 158-100*0.4*sin(5*PI/3)+40*0.4);
        rotate(-PI/3);
        makePico(0.5, 610, 984, 0.4, true, false, true);
        rotate(PI/6);
      } else if (pico==0&&tera==0) {
        makeTera(0.5, 761, 270, 0.4, true);
        rotate(PI/6);
        rotate(-PI/3);
        makePico(0.5, 610, 984, 0.4, true, false, true);
        rotate(PI/6);
      } else if (pico==0) {
        rotate(-PI/6);
        makePico(0.5, 610, 984, 0.4, true, true, true);
        rotate(PI/6);
      } else if (giga==0) {
        makeGiga(0.5, 900, 400, 0.4, true);
      }
      noStroke();
      noFill();
    }
    if (camLeftOff==7) {
      fill(125);
      ellipse(850, 350, 700, 700);
      fill(0, 0, 50);
      arc(850, 350, 700, 700, 5*PI/4, 7*PI/4);
      fill(50, 0, 0);
      arc(850, 350, 700, 700, 7*PI/4, 2*PI-PI/12);
      arc(850, 350, 700, 700, PI+PI/12, 5*PI/4);
      quad(850+350*cos(5*PI/4), 350+350*sin(5*PI/4), 850+350*cos(7*PI/4), 350+350*sin(7*PI/4), 850+350*cos(2*PI-PI/12), 350+350*sin(2*PI-PI/12), 850+350*cos(PI+PI/12), 350+350*sin(PI+PI/12));
      fill(125);
      rect(511, 256, 680, 200);
      stroke(0);
      strokeWeight(3);
      fill(250);
      quad(611, 307, 1101, 306, 1088, 439, 598, 439);
      noStroke();
      quad(1101, 306, 1088, 439, 1152, 483, 1165, 350);
      quad(611, 483, 598, 440, 1088, 439, 1152, 483);
      fill(50, 50, 0);
      makeStar(831, 50, 30, 15);
      fill(50, 0, 0);
      makeBalloon(625, 211);
      fill(0, 50, 0);
      makeBalloon(708, 205);
      fill(0, 0, 50);
      makeBalloon(664, 253);
      if (pico==2) {
        makePico(1, 822, 337, 0.5, false, false, true);
      } else if (newTera==1) {
        makeNewTera(1, 971, 143, 1, 0, 0, false, true);
      }
    }
    if (camLeftOff==8) {
      fill(125);
      ellipse(850, 350, 700, 700);
      fill(0, 0, 50);
      arc(850, 350, 700, 700, 3*PI/2-PI/4, 3*PI/2+PI/4);
      fill(125);
      triangle(597, 100, 1100, 101, 850, 350);
      fill(255);
      arc(850, 350, 700, 700, -PI/16, PI/8);
      arc(850, 350, 700, 700, PI-PI/16, PI+PI/16);
      quad(504, 416, 1192, 416, 1173, 484, 552, 484);
      stroke(0);
      strokeWeight(3);
      rect(850+350*cos(PI+PI/16), 350+350*sin(PI+PI/16), -350*cos(PI+PI/16), 350*(-sin(PI+PI/16)+sin(PI-PI/16)));
      rect(850, 350+350*sin(PI+PI/16), -350*cos(PI+PI/16), 350*(-sin(PI+PI/16)+sin(PI-PI/16)));
      noStroke();
      fill(255, 0, 0);
      makeBalloon(617, 162);
      fill(255, 0, 0);
      makeBalloon(675, 162);
      fill(255, 0, 0);
      makeBalloon(1062, 162);
      fill(255, 0, 0);
      makeBalloon(1000, 162);
      if (newNano==3) {
        makeNewNano(1, 851, 200, 1, 0, false, true);
      } else if (tera==3) {
        makeTera(0.5, 735, 405, 0.5, true);
      }
    }
    if (camLeftOff==9) {
      noStroke();
      fill(0, 0, 50);
      ellipse(850, 350, 700, 700);
      fill(125);
      arc(850, 350, 700, 700, PI/4, PI);
      fill(50, 0, 0);
      arc(850, 350, 700, 700, PI/12, PI/4);
      arc(850, 350, 700, 700, PI, PI+PI/12);
      fill(125);
      quad(500, 350, 1016, 350, 850+350*cos(PI/4), 350+350*sin(PI/4), 610, 606);
      fill(50, 0, 0);
      beginShape();
      vertex(850+350*cos(PI+PI/12), 350+350*sin(PI+PI/12));
      vertex(1014, 350+350*sin(PI+PI/12));
      vertex(850+350*cos(PI/12), 350+350*sin(PI/12));
      vertex(850+350*cos(PI/4), 350+350*sin(PI/4));
      vertex(1014, 350);
      vertex(500, 350);
      endShape();
      strokeWeight(3);
      stroke(0);
      line(1014, 350, 1014, 43);
      line(500, 350, 1016, 350);
      line(1014, 350, 850+350*cos(PI/4), 350+350*sin(PI/4));
      line(850+350*cos(PI/12), 350+350*sin(PI/12), 1016, 350+350*sin(PI+PI/12));
      line(850+350*cos(PI+PI/12), 350+350*sin(PI+PI/12), 1014, 350+350*sin(PI+PI/12));
      fill(255, 255, 0);
      noStroke();
      makeStar(592, 178, 20, 10);
      makeStar(674, 97, 20, 10);
      makeStar(840, 33, 20, 10);
      makeStar(826, 174, 20, 10);
      makeStar(927, 122, 20, 10);
      makeStar(958, 216, 20, 10);
      makeStar(1030, 239, 20, 10);
      makeStar(1157, 340, 20, 10);
      makeStar(1098, 178, 20, 10);
      if (newGiga==0) {
        makeNewGiga(1, 850, 400, 1, true);
      }
    }
    if (camLeftOff==10) {
      fill(0);
      ellipse(850, 350, 700, 700);
      if (ingameSeconds%540<181) {
        stroke(255, 255, 0);
      } else if (ingameSeconds%540<361) {
        stroke(128, 0, 128);
      } else {
        stroke(0, 0, 139);
      }
      strokeWeight(5);
      line(850+cos(PI+PI/12)*350, 350+350*sin(PI+PI/12), 850+cos(PI+PI/12)*350, -(850+cos(PI+PI/12)*350)+850);
      line(850+cos(PI+PI/12)*350, -(850+cos(PI+PI/12)*350)+850, 1198, -(850+cos(PI+PI/12)*350)+850);
      line(850+cos(PI+2*PI/12)*350, 350+350*sin(PI+2*PI/12), 850+cos(PI+2*PI/12)*350, -(850+cos(PI+2*PI/12)*350)+850);
      line(850+cos(PI+2*PI/12)*350, -(850+cos(PI+2*PI/12)*350)+850, 1195, -(850+cos(PI+2*PI/12)*350)+850);
      line(850+cos(PI-PI/12)*350, 350+350*sin(PI-PI/12), 703, 246);
      line(850+cos(PI-PI/6)*350, 350+350*sin(5*PI/6), 824, 247);
      line(850+cos(PI-PI/4)*350, 350+350*sin(3*PI/4), 950, 246);
      line(850+cos(PI-PI/3)*350, 350+350*sin(2*PI/3), 1079, 246);
      line(850+cos(PI-5*PI/12)*350, 350+350*sin(7*PI/12), 850+350*cos(3*PI/2+5*PI/12), 350+350*sin(3*PI/2+5*PI/12));
      line(850+cos(PI-6*PI/12)*350, 350+350*sin(6*PI/12), 850+350*cos(3*PI/2+6*PI/12), 350+350*sin(3*PI/2+6*PI/12));
      line(850+cos(PI-7*PI/12)*350, 350+350*sin(5*PI/12), 850+350*cos(3*PI/2+7*PI/12), 350+350*sin(3*PI/2+7*PI/12));
      line(850+cos(PI-PI/12)*350, 350+350*sin(PI-PI/12), 850-cos(PI-PI/12)*350, 350+350*sin(PI-PI/12));
      line(850+cos(PI-2*PI/12)*350, 350+350*sin(PI-2*PI/12), 850-cos(PI-2*PI/12)*350, 350+350*sin(PI-2*PI/12));
      line(850+cos(PI-3*PI/12)*350, 350+350*sin(PI-3*PI/12), 850-cos(PI-3*PI/12)*350, 350+350*sin(PI-3*PI/12));
      line(850+cos(PI-4*PI/12)*350, 350+350*sin(PI-4*PI/12), 850-cos(PI-4*PI/12)*350, 350+350*sin(PI-4*PI/12));
      line(850+cos(PI-5*PI/12)*350, 350+350*sin(PI-5*PI/12), 850-cos(PI-5*PI/12)*350, 350+350*sin(PI-5*PI/12));
      if (ingameSeconds%540<181) {
        stroke(255, 105, 180);
      } else if (ingameSeconds%540<361) {
        stroke(255);
      } else {
        stroke(255, 215, 0);
      }
      line(850+cos(PI+3*PI/12)*350, 350+350*sin(PI+3*PI/12), 850+cos(PI+3*PI/12)*350, -(850+cos(PI+3*PI/12)*350)+850);
      line(850+cos(PI+3*PI/12)*350, -(850+cos(PI+3*PI/12)*350)+850, 1183, -(850+cos(PI+3*PI/12)*350)+850);
      line(850+cos(PI+6*PI/12)*350, 350+350*sin(PI+6*PI/12), 850+cos(PI+6*PI/12)*350, -(850+cos(PI+6*PI/12)*350)+850);
      line(500, 350, 850, 0);
      if (ingameSeconds%540<181) {
        stroke(0, 255, 255);
      } else if (ingameSeconds%540<361) {
        stroke(230, 230, 250);
      } else {
        stroke(255, 0, 0);
      }
      line(850+cos(3*PI/2+PI/3)*350, 350+350*sin(3*PI/2+PI/3), 1079, 246);
      line(850+350*cos(7*PI/4), 350+350*sin(7*PI/4), 950, 246);
      line(824, 247, 850+350*cos(3*PI/2+PI/6), 350+350*sin(3*PI/2+PI/6));
      line(703, 246, 850+cos(3*PI/2+PI/12)*350, 350+350*sin(3*PI/2+PI/12));
      line(850+cos(PI+4*PI/12)*350, 350+350*sin(PI+4*PI/12), 850+cos(PI+4*PI/12)*350, -(850+cos(PI+4*PI/12)*350)+850);
      line(850+cos(PI+4*PI/12)*350, -(850+cos(PI+4*PI/12)*350)+850, 1151, -(850+cos(PI+4*PI/12)*350)+850);
      line(850+cos(PI+5*PI/12)*350, 350+350*sin(PI+5*PI/12), 850+cos(PI+5*PI/12)*350, -(850+cos(PI+5*PI/12)*350)+850);
      line(850+cos(PI+5*PI/12)*350, -(850+cos(PI+5*PI/12)*350)+850, 1082, -(850+cos(PI+5*PI/12)*350)+850);
      if (gobo==0&&newGiga==2) {
        makeGobo(1, 660, 336, 1, "Party!", true, true);
        makeNewGiga(1, 850, 400, 1, true);
      } else if (gobo==0&&newPico==1) {
        makeGobo(1, 660, 336, 1, "Party!", true, true);
        makeNewPico(1, 1032, 336, 1, false, true);
      } else if (gobo==0) {
        makeGobo(1, 660, 336, 1, "Party!", true, true);
      } else if (newGiga==2) {
        makeNewGiga(1, 850, 400, 1, true);
      } else if (newPico==1) {
        makeNewPico(1, 850, 350, 1, false, true);
      }
    }
    if (camLeftOff==11) {
      fill(125);
      ellipse(850, 350, 700, 700);
      strokeWeight(3);
      stroke(0);
      line(521, 229, 628, 350);
      line(628, 350, 521, 471);
      line(543, 533, 632, 467);
      line(1025, 497, 1142, 535);
      line(684, 41, 819, 96);
      line(819, 96, 985, 21);
      line(1036, 196, 1117, 118);
      line(1154, 175, 1083, 350);
      line(1083, 350, 1174, 481);
      fill(0);
      noStroke();
      quad(580, 125, 594, 497, 632, 467, 626, 196);
      quad(594, 497, 632, 467, 1025, 467, 1025, 497);
      arc(814, 497, 435, 50, 0, PI);
      triangle(633, 590, 1036, 590, 830, 552);
      quad(632, 467, 626, 196, 1036, 196, 1025, 497);
      fill(255, 255, 255, 200);
      ellipse(887, 317, 524, 320);
      stroke(0);
      strokeWeight(3);
      line(688, 213, 1066, 433);
      line(1045, 186, 748, 451);
      line(626, 196, 1036, 196);
      line(1036, 196, 1025, 497);
      if (gobo==4) {
        strokeWeight(15);
        stroke(0, 255, 255);
        line(887-100*1.5*cos(4*PI/3), 317-100*1.5*sin(4*PI/3), 887-100*1.5*cos(4*PI/3)+100, 317-100*1.5*sin(4*PI/3));
        line(887-100*1.5*cos(2*PI/3), 317-100*1.5*sin(2*PI/3), 887-100*1.5*cos(2*PI/3)+100, 317-100*1.5*sin(2*PI/3));
        rotate(-PI/2);
        makeGobo(1.5, -317, 887, 1, "Party!", false, false);
        rotate(PI/2);
      } else if (tera==4||tera==5) {
        strokeWeight(15);
        stroke(0, 0, 255/2);
        line(1028, 452, 984, 431);
        makeTera(1.5, 887, 317, 0.5, false);
      } else if (newNano==4) {
        strokeWeight(15);
        stroke(139, 69, 19);
        line(1028, 452, 984, 431);
        makeNewNano(1.5, 887, 317, 1, 0, false, false);
      }
    }
    if (camLeftOff==12) {
      fill(125);
      ellipse(850, 350, 700, 700);
      strokeWeight(3);
      stroke(0);
      line(1700-521, 229, 1700-628, 350);
      line(1700-628, 350, 1700-521, 471);
      line(1700-543, 533, 1700-632, 467);
      line(1700-1025, 497, 1700-1142, 535);
      line(1700-684, 41, 1700-819, 96);
      line(1700-819, 96, 1700-985, 21);
      line(1700-1036, 196, 1700-1117, 118);
      line(1700-1154, 175, 1700-1083, 350);
      line(1700-1083, 350, 1700-1174, 481);
      fill(0);
      noStroke();
      quad(1700-580, 125, 1700-594, 497, 1700-632, 467, 1700-626, 196);
      quad(1700-594, 497, 1700-632, 467, 1700-1025, 467, 1700-1025, 497);
      arc(1700-814, 497, 435, 50, 0, PI);
      triangle(1700-633, 590, 1700-1036, 590, 1700-830, 552);
      quad(1700-632, 467, 1700-626, 196, 1700-1036, 196, 1700-1025, 497);
      fill(255, 255, 255, 200);
      ellipse(1700-887, 317, 524, 320);
      stroke(0);
      strokeWeight(3);
      line(1700-688, 213, 1700-1066, 433);
      line(1700-1045, 186, 1700-748, 451);
      line(1700-626, 196, 1700-1036, 196);
      line(1700-1036, 196, 1700-1025, 497);
      if (newTera==4) {
        strokeWeight(15);
        stroke(138, 43, 226);
        line(717, 416, 673, 451);
        line(926, 413, 977, 440);
        makeNewTera(1.5, 813, 317, 1, 0, 0, false, false);
      } else if (nano==3||nano==4) {
        strokeWeight(15);
        stroke(0, 255/2, 0);
        line(717, 416, 673, 451);
        line(926, 413, 977, 440);
        makeNano(1.5, 813, 317, 0.5, 1, false, false);
      } else if (newGiga==5) {
        makeNewGigaHolder(0.5, 813, 317, 1);
        makeNewGiga(1.5, 813, 317, 1, false);
      }
    }
    noStroke();
    noFill();
  }
  if (ingameSeconds<someoneMoved[camLeftOff]+90) {
    for (int a=500; a<1200; a=a+5) {
      for (int b=0; b<700; b=b+5) {
        noStroke();
        if (!statc.isPlaying()) {
          statc.play();
        }
        fill(random(255));
        rect(a, b, 5, 5);
      }
    }
    if (flashlight==true) {
      powerleft++;
    }
  } else {
    statc.stop();
  }
}
void makeTera(float size, int x, int y, float shade, boolean leg) {
  strokeWeight(10*size);
  stroke(0, 0, 255*shade);
  if (leg) {
    line(x-100*size*cos(4*PI/3), y-100*size*sin(4*PI/3), x-100*size*cos(4*PI/3), y-100*size*sin(4*PI/3)+100*size);
    line(x-100*size*cos(5*PI/3), y-100*size*sin(5*PI/3), x-100*size*cos(5*PI/3), y-100*size*sin(5*PI/3)+100*size);
  }
  fill(0, 0, 255*shade);
  noStroke();
  ellipse(x, y, size*200, size*200);
  fill(255*shade);
  arc(x, y, size*200, size*200, 0, PI);
  triangle(x-100*size, y, x-14*size, y-62*size, x+100*size, y);

  stroke(255*shade, 0, 0);
  strokeWeight(3*size);
  noFill();
  line(x-65*size, y-27*size, x-43*size, y-14*size);
  arc(x-58*size, y+60*size, 40*size, 40*size, 0, PI/2);
  arc(x+76*size, y+30*size, 40*size, 40*size, PI/2-PI/6, PI);
  line(x+37*size, y-35*size, x+28*size, y-13*size);
  stroke(0, 0, 255*shade);
  line(x+13*size, y-47*size, x+4*size, y-21*size);
  line(x-89*size, y-21*size, x-53*size, y+21*size);
  line(x-40*size, y+90*size, x-17*size, y+59*size);
  arc(x+29*size, y+72*size, 40*size, 40*size, -PI/3, PI/3);
  arc(x+75*size, y+21*size, 40*size, 40*size, 0, PI/2);
  noStroke();
  fill(125*shade);
  rect(x-33*size, y-52*size, 40*size, 148*size);
  triangle(x-33*size, y-52*size, x+7*size, y-52*size, x-14*size, y-62*size);
  triangle(x-33*size, y+96*size, x+7*size, y+96*size, x+6*size, y+101*size);
  fill(125, 0, 0);
  ellipse(x+27*size, y+2*size, 20*size, 20*size);
  fill(255, 0, 0);
  ellipse(x+27*size, y+2*size, 10*size, 10*size);
}
void makeNano(float size, int x, int y, float shade, int eyelids, boolean smile, boolean legs) {
  strokeWeight(10*size);
  stroke(0, 255*shade, 0);
  if (legs) {
    line(x-100*size*cos(4*PI/3), y-100*size*sin(4*PI/3), x-100*size*cos(4*PI/3), y-100*size*sin(4*PI/3)+100*size);
    line(x-100*size*cos(5*PI/3), y-100*size*sin(5*PI/3), x-100*size*cos(5*PI/3), y-100*size*sin(5*PI/3)+100*size);
  } else {
  }
  fill(0, 255*shade, 0);
  noStroke();
  ellipse(x, y, size*200, size*200);
  fill(255*shade);
  ellipse(x, y, 180*size, size*120);
  fill(0, 255*shade, 0);
  triangle(x-70*size, y-50*size, x-9*size, y-29*size, x-27*size, y-64*size);
  triangle(x-23*size, y-64*size, x+7*size, y-48*size, x+3*size, y-67*size);
  noFill();
  if (eyelids==0) {
    strokeWeight(5*size);
    stroke(0);
    arc(x-50*size, y, 40*size, size*10, 6.5*PI/5, 8.5*PI/5);
    arc(x+50*size, y, size*40, 10*size, 6.5*PI/5, 8.5*PI/5);
  } else if (eyelids==1) {
    strokeWeight(5*size);
    stroke(0);
    arc(x-50*size, y, 40*size, size*10, 6.5*PI/5, 8.5*PI/5);
    arc(x+50*size, y, size*40, 10*size, 6.5*PI/5, 8.5*PI/5);
    noStroke();
    fill(255);
    ellipse(x-50*size, y-5*size, 3*size, 3*size);
    ellipse(x+50*size, y-5*size, 3*size, 3*size);
  } else if (eyelids==2) {
    strokeWeight(5*size);
    stroke(255);
    arc(x-50*size, y, 40*size, size*10, 6.5*PI/5, 8.5*PI/5);
    arc(x+50*size, y, size*40, 10*size, 6.5*PI/5, 8.5*PI/5);
  }
  noStroke();
  noFill();
  if (!smile) {
    strokeWeight(size*3);
    stroke(0);
    arc(x, y, size*100, size*90, PI/4, 3*PI/4);
  } else {
    fill(255);
    stroke(0);
    arc(x, y+30*2/3*size, size*80, size*70, 0, PI);
    arc(x, y+30*2/3*size, size*80, size*10, PI, 2*PI);
  }
  fill(0);
  ellipse(x+90*size, y-6*size, 12*size, 40*size);
  stroke(255*shade, 0, 0);
  noFill();
  arc(x+81*size, y+5*size, 40*size, 40*size, PI, 3*PI/2);
  arc(x+111*size, y+5*size, 40*size, 40*size, 5*PI/4, 7*PI/4);
  line(x+90*size, y+14*size, x+90*size, y+32*size);
  stroke(0, 0, 255*shade);
  arc(x+107*size, y-21*size, 40*size, 40*size, PI, 3*PI/2);
  arc(x+90*size, y+15*size, 40*size, 40*size, 3*PI/2, 4*PI/2);
  arc(x+83*size, y+30*size, 40*size, 40*size, 6*PI/7, 3*PI/2);
  noFill();
  noStroke();
}
void makeGobo(float size, int x, int y, float shade, String message, boolean sign, boolean legs) {
  strokeWeight(10*size);
  stroke(0, 255*shade, 255*shade);
  if (legs) {
    line(x-100*size*cos(4*PI/3), y-100*size*sin(4*PI/3), x-100*size*cos(4*PI/3), y-100*size*sin(4*PI/3)+100*size);
    line(x-100*size*cos(5*PI/3), y-100*size*sin(5*PI/3), x-100*size*cos(5*PI/3), y-100*size*sin(5*PI/3)+100*size);
  }
  if (sign) {
    noFill();
    strokeWeight(10*size);
    stroke(255);
    line(x+100*size, y, x+100*size, y-100*size);
    noStroke();
    fill(255*shade);
    rect(x+20*size, y-200*size, 160*size, 100*size);
    fill(0);
    textSize(40*size);
    textAlign(CENTER, CENTER);
    text(message, x+100*size, y-150*size);
    textAlign(BASELINE);
  }
  fill(0, 255*shade, 255*shade);
  noStroke();
  ellipse(x, y, 200*size, 200*size);
  fill(255*shade);
  ellipse(x-10*size, y-40*size, 30*size, 30*size);
  ellipse(x+50*size, y-40*size, 30*size, 30*size);
  fill(165*shade, 42*shade, 42*shade);
  ellipse(x-6*size, y-40*size, 20*size, 20*size);
  ellipse(x+54*size, y-40*size, 20*size, 20*size);
  noFill();
  strokeWeight(3*size);
  stroke(166*shade, 42*shade, 42*shade);
  arc(x, y+40*size, 30*size, 10*size, PI/2-PI/12, PI);
}
void makePico(float size, int x, int y, float shade, boolean smile, boolean eyeball, boolean legs) {
  strokeWeight(10*size);
  stroke(255*shade, 0, 0);
  if (legs) {
    line(x-100*size*cos(4*PI/3), y-100*size*sin(4*PI/3), x-100*size*cos(4*PI/3), y-100*size*sin(4*PI/3)+100*size);
    line(x-100*size*cos(5*PI/3), y-100*size*sin(5*PI/3), x-100*size*cos(5*PI/3), y-100*size*sin(5*PI/3)+100*size);
  }
  fill(255*shade, 0, 0);
  noStroke();
  ellipse(x, y, 200*size, 200*size);
  fill(255*shade);
  arc(x, y, 200*size, 200*size, 0, PI);
  arc(x, y, 200*size, 100*size, PI, 2*PI);
  fill(0);
  ellipse(x-50*size, y-20*size, 24*size, 24*size);
  ellipse(x+30*size, y-20*size, 24*size, 24*size);
  fill(255);
  ellipse(x-50*size, y-20*size, 16*size, 16*size);
  fill(0);
  ellipse(x-50*size, y-20*size, 9*size, 9*size);
  if (eyeball) {
    fill(125, 0, 0);
    ellipse(x+30*size, y-20*size, 10*size, 10*size);
    fill(255, 0, 0);
    ellipse(x+30*size, y-20*size, 5*size, 5*size);
  }
  if (!smile) {
    noFill();
    strokeWeight(3*size);
    stroke(0);
    arc(x-10*size, y, 200*size/2, 200*9*size/20, PI/4, 5*PI/7);
  } else {
    fill(255);
    strokeWeight(3*size);
    stroke(0);
    arc(x-6*size, y+58*2/3*size, size*2/3*140, size*2/3*135, 0, PI);
    arc(x-6*size, y+58*2/3*size, size*2/3*140, size*2/3*20, PI, 2*PI);
  }
  fill(0);
  strokeWeight(0);
  ellipse(x-43*size, y-65*size, size*20, size*40);
  strokeWeight(7*size);
  stroke(255*shade, 0, 0);
  line(x-54*size, y-57*size, x-34*size, y-60*size);
  strokeWeight(4*size);
  line(x-53*size, y-73*size, x-34*size, y-77*size);
  noFill();
  noStroke();
}
void makeGiga(float size, int x, int y, float shade, boolean leg) {
  strokeWeight(10*size);
  stroke(50*shade);
  if (leg) {
    line(x-100*size*cos(4*PI/3), y-100*size*sin(4*PI/3), x-100*size*cos(4*PI/3), y-100*size*sin(4*PI/3)+100*size);
    line(x-100*size*cos(5*PI/3), y-100*size*sin(5*PI/3), x-100*size*cos(5*PI/3), y-100*size*sin(5*PI/3)+100*size);
  }
  fill(50*shade);
  noStroke();
  ellipse(x, y, 200*size, 200*size);
  stroke(255);
  strokeWeight(3*size);
  fill(255*shade);
  noStroke();
  arc(x, y, 160*size, 200*size, 0, PI);
  triangle(x-80*size, y, x-50*size, y-20*size, x+20*size, y);
  arc(x+20*size, y, 100*size, 50*size, PI+18*PI/45, 2*PI);
  fill(0*shade);
  ellipse(x-30*size, y, 30*size, 10*size);
  ellipse(x+40*size, y, 30*size, 10*size);
  strokeWeight(5*size);
  stroke(255, 0, 0);
  point(x-30*size, y);
  point(x+40*size, y);
  stroke(0*shade);
  point(x-44*size, y-4*size);
  point(x-36*size, y-7*size);
  point(x+45*size, y-7*size);
  point(x+52*size, y-6*size);
  fill(0*shade);
  noStroke();
  arc(x, y+50*size, 50*size, 25*size, 0, PI);
  strokeWeight(5*size);
  stroke(255, 255, 255);
  point(x-15*size, y+51*size);
  point(x+11*size, y+51*size);
  point(x-8*size, y+60*size);
  point(x+1*size, y+61*size);
  fill(0);
  noStroke();
  arc(x+42*size, y-45*size, 30*size, 30*size, PI/2-PI/11, 3*PI/2-PI/11);
  triangle(x+43*size, y-61*size, x+56*size, y-55*size, x+53*size, y-30*size);
  quad(x+59*size, y-55*size, x+67*size, y-53*size, x+68*size, y-30*size, x+59*size, y-34*size);
  noFill();
  strokeWeight(3*size);
  stroke(255*shade, 0, 0);
  arc(x+26*size, y-51*size, 20*size, 20*size, PI/2-PI/5, PI+PI/5);
  stroke(0, 0, 255*shade);
  arc(x+45*size, y-65*size, 20*size, 20*size, 3*PI/2, 5*PI/2-PI/5);
  stroke(0, 255*shade, 0);
  arc(x+60*size, y-31*size, 10*size, 10*size, 3*PI/2, 2*PI);
  stroke(50*shade);
  strokeWeight(5*size);
}
void customDayMenu() {
  textSize(50);
  textAlign(CENTER);
  fill(255);
  text("Custom Night", 750, 50);
  textAlign(BASELINE);
  makeNewTera(1, 185, 200, 1, 1, 0, false, false);
  makeNewNano(1, 410, 200, 1, 0, false, false);
  makeNewPico(1, 635, 200, 1, false, false);
  makeNewGiga(1, 860, 200, 1, false);
  makeGobo(1, 1085, 200, 1, "", false, false);
  makePuppet(1, 1315, 200, 1, false, false);
  makeTera(1, 300, 600, 0.5, false);
  makeNano(1, 525, 600, 0.5, 1, false, false);
  makePico(1, 750, 600, 0.5, false, true, false);
  makeGiga(1, 975, 600, 0.5, false);
  makeGoldenAlien(1, 1200, 600, 0.5, false, false);
  stroke(255);
  strokeWeight(5);
  line(297.5, 100, 297.5, 400);
  line(522.5, 100, 522.5, 400);
  line(747.5, 100, 747.5, 400);
  line(972.5, 100, 972.5, 400);
  line(1197.5, 100, 1197.5, 400);
  line(412.5, 500, 412.5, 800);
  line(637.5, 500, 637.5, 800);
  line(862.5, 500, 862.5, 800);
  line(1087.5, 500, 1087.5, 800);
  noStroke();
  textAlign(CENTER);
  fill(255);
  text(customDay[0], 185, 375);
  text(customDay[1], 410, 375);
  text(customDay[2], 635, 375);
  text(customDay[3], 860, 375);
  text(customDay[4], 1085, 375);
  text(customDay[5], 1315, 375);
  text(customDay[6], 300, 775);
  text(customDay[7], 525, 775);
  text(customDay[8], 750, 775);
  text(customDay[9], 975, 775);
  text(customDay[10], 1200, 775);
  text("-", 100, 375);
  text("-", 325, 375);
  text("-", 550, 375);
  text("-", 775, 375);
  text("-", 1000, 375);
  text("-", 1225, 375);
  text("-", 215, 775);
  text("-", 440, 775);
  text("-", 665, 775);
  text("-", 890, 775);
  text("-", 1115, 775);
  text("+", 270, 375);
  text("+", 495, 375);
  text("+", 720, 375);
  text("+", 945, 375);
  text("+", 1170, 375);
  text("+", 1395, 375);
  text("+", 385, 775);
  text("+", 610, 775);
  text("+", 835, 775);
  text("+", 1060, 775);
  text("+", 1285, 775);
  textAlign(BASELINE);
  fill(0, 255, 0);
  rect(1325, 700, 150, 75);
  fill(0, 0, 255);
  rect(25, 700, 150, 75);
  fill(255);
  textSize(50);
  textAlign(CENTER, CENTER);
  text("Go", 1400, 737);
  int temptemp=customDay[0]+customDay[1]+customDay[2]+customDay[3]+customDay[4]+customDay[5]+customDay[6]+customDay[7]+customDay[8]+customDay[9]+customDay[10];
  text("Total score: "+temptemp, 750, 450);
  textSize(50);
  text("Back", 100, 737);
  textAlign(BASELINE);
}
void mousePressed() {
  if (gameStage==2&&currentDay<7&&mouseX>25&&mouseX<200&&mouseY>125&&mouseY<200&&ingameSeconds<900) {
    callMuted=true;
  }
  if (gameStage==3) {//  rect(100, 585, 100, 100);
    if (mouseX>0&&mouseX<200&&mouseY>700&&mouseY<800) {
      gameStage=0;
    }
    if (mouseX>100&&mouseX<200&&mouseY>100&&mouseY<200) {
      settings[0]=1-settings[0];
    } 
    if (mouseX>100&&mouseX<200&&mouseY>400&&mouseY<500) {
      settings[1]=1-settings[1];
    }
    if (mouseX>100&&mouseX<200&&mouseY>585&&mouseY<685) {
      maxDay=1;
    }
    if (mouseX>225&&mouseX<325&&mouseY>585&&mouseY<685) {
      maxDay=2;
    }
    if (mouseX>350&&mouseX<450&&mouseY>585&&mouseY<685) {
      maxDay=3;
    }
    if (mouseX>475&&mouseX<575&&mouseY>585&&mouseY<685) {
      maxDay=4;
    }
    if (mouseX>600&&mouseX<700&&mouseY>585&&mouseY<685) {
      maxDay=5;
    }
    if (mouseX>725&&mouseX<825&&mouseY>585&&mouseY<685) {
      maxDay=6;
    }
    if (mouseX>850&&mouseX<950&&mouseY>585&&mouseY<685) {
      maxDay=7;
    }
  }
  if (gameStage==6) {
    if (mouseX>25&&mouseX<175&&mouseY>700&&mouseY<775) {
      gameStage=0;
    }
    if (mouseX>1325&&mouseX<1475&&mouseY>700&&mouseY<775) {
      currentDay=7;
      gameStage=2;
    }
    if (mouseX>200&&mouseX<230&&mouseY>750&&mouseY<800) {
      if (customDay[6]>0) {
        customDay[6]--;
        changeAI.play();
        preset="None";
      }
    }
    if (mouseX>425&&mouseX<455&&mouseY>750&&mouseY<800) {
      if (customDay[7]>0) {
        customDay[7]--;
        changeAI.play();
        preset="None";
      }
    }
    if (mouseX>650&&mouseX<680&&mouseY>750&&mouseY<800) {
      if (customDay[8]>0) {
        customDay[8]--;
        changeAI.play();
        preset="None";
      }
    }
    if (mouseX>875&&mouseX<905&&mouseY>750&&mouseY<800) {
      if (customDay[9]>0) {
        customDay[9]--;
        changeAI.play();
        preset="None";
      }
    }
    if (mouseX>1100&&mouseX<1130&&mouseY>750&&mouseY<800) {
      if (customDay[10]>0) {
        customDay[10]--;
        changeAI.play();
        preset="None";
      }
    }
    if (mouseX>370&&mouseX<400&&mouseY>750&&mouseY<800) {
      if (customDay[6]<10) {
        customDay[6]++;
        preset="None";
        changeAI.play();
      }
    }
    if (mouseX>595&&mouseX<625&&mouseY>750&&mouseY<800) {
      if (customDay[7]<10) {
        customDay[7]++;
        preset="None";
        changeAI.play();
      }
    }
    if (mouseX>820&&mouseX<850&&mouseY>750&&mouseY<800) {
      if (customDay[8]<10) {
        customDay[8]++;
        changeAI.play();
        preset="None";
      }
    }
    if (mouseX>1045&&mouseX<1075&&mouseY>750&&mouseY<800) {
      if (customDay[9]<10) {
        customDay[9]++;
        preset="None";
        changeAI.play();
      }
    }
    if (mouseX>1270&&mouseX<1300&&mouseY>750&&mouseY<800) {
      if (customDay[10]<10) {
        customDay[10]++;
        preset="None";
        changeAI.play();
      }
    }
    if (mouseX>255&&mouseX<285&&mouseY>350&&mouseY<400) {
      if (customDay[0]<10) {
        customDay[0]++;
        preset="None";
        changeAI.play();
      }
    }
    if (mouseX>480&&mouseX<510&&mouseY>350&&mouseY<400) {
      if (customDay[1]<10) {
        customDay[1]++;
        preset="None";
        changeAI.play();
      }
    }
    if (mouseX>705&&mouseX<735&&mouseY>350&&mouseY<400) {
      if (customDay[2]<10) {
        customDay[2]++;
        changeAI.play();
        preset="None";
      }
    }
    if (mouseX>930&&mouseX<960&&mouseY>350&&mouseY<400) {
      if (customDay[3]<10) {
        customDay[3]++;
        changeAI.play();
        preset="None";
      }
    }
    if (mouseX>1155&&mouseX<1185&&mouseY>350&&mouseY<400) {
      if (customDay[4]<10) {
        customDay[4]++;
        changeAI.play();
        preset="None";
      }
    }  
    if (mouseX>1380&&mouseX<1410&&mouseY>350&&mouseY<400) {
      if (customDay[5]<10) {
        customDay[5]++; 
        changeAI.play();
        preset="None";
      }
    }
    if (mouseX>85&&mouseX<115&&mouseY>350&&mouseY<400) {
      if (customDay[0]>0) {
        customDay[0]--;
        changeAI.play();
        preset="None";
      }
    }
    if (mouseX>310&&mouseX<340&&mouseY>350&&mouseY<400) {
      if (customDay[1]>0) {
        customDay[1]--;
        changeAI.play();
        preset="None";
      }
    }
    if (mouseX>535&&mouseX<565&&mouseY>350&&mouseY<400) {
      if (customDay[2]>0) {
        customDay[2]--;
        changeAI.play();
        preset="None";
      }
    }
    if (mouseX>760&&mouseX<790&&mouseY>350&&mouseY<400) {
      if (customDay[3]>0) {
        customDay[3]--;
        changeAI.play();
        preset="None";
      }
    }
    if (mouseX>985&&mouseX<1085&&mouseY>350&&mouseY<400) {
      if (customDay[4]>0) {
        customDay[4]--;
        changeAI.play();
        preset="None";
      }
    }
    if (mouseX>1210&&mouseX<1240&&mouseY>350&&mouseY<400) {
      if (customDay[5]>0) {
        customDay[5]--;
        changeAI.play();
        preset="None";
      }
    }
  }
  if (camera==true) {
    if (mouseX>70&&mouseX<120) {
      if (mouseY>300&&mouseY<350) {
        camLeftOff=7;
        camChange.play();
      } else if (mouseY>400&&mouseY<450) {
        camLeftOff=8;
        camChange.play();
      } else if (mouseY>500&&mouseY<550) {
        camLeftOff=11;
        camChange.play();
      }
    }
    if (mouseX>220&&mouseX<270) {
      if (mouseY>300&&mouseY<350) {
        camLeftOff=3;
        camChange.play();
      } else if (mouseY>400&&mouseY<450) {
        camLeftOff=4;
        camChange.play();
      } else if (mouseY>500&&mouseY<550) {
        camLeftOff=12;
        camChange.play();
      }
    }
    if (mouseY>200&&mouseY<250) {
      if (mouseX>20&&mouseX<70) {
        camLeftOff=6;
        camChange.play();
      } else if (mouseX>245&&mouseX<295) {
        camLeftOff=2;
        camChange.play();
      } else if (mouseX>400&&mouseX<450) {
        camLeftOff=5;
        camChange.play();
      }
    }
    if (mouseX>280&&mouseY>100&&mouseX<330&&mouseY<150) {
      camLeftOff=1;
      camChange.play();
    }
    if (mouseX>400&&mouseY>400&&mouseX<450&&mouseY<450) {
      camLeftOff=9;
      camChange.play();
    }
    if (mouseX>300&&mouseY>450&&mouseX<350&&mouseY<500) {
      camLeftOff=10;
      camChange.play();
    }
  }
}  
void youwin() {
  gigaRadio.stop();
  goboMove.stop();
  musicBx.stop();
  breathinbreathout.stop();
  SomeoneVentedNT.stop();
  SomeoneVentedNN.stop();
  SomeoneVentedNG.stop();
  SomeoneVentedG.stop();
  SomeoneVentedN.stop();
  SomeoneVentedT.stop();
  goboLaugh.stop();
  puppetEscaped.stop();
  alarm.stop();
  blackoutInt=0;
  frameRate(60);
  ingameSeconds++;
  if (ingameSeconds<60) {
    if (ingameSeconds==1) {
      youAreWin.play();  
    }
    textSize(100);
    fill(255);
    text("5:59 A.M.", 600, 400);
  } else if (ingameSeconds<120) {
    if (ingameSeconds%7==4) {
      fill(#FF0000);
    } else if (ingameSeconds%7==5) {
      fill(#FF7F00);
    } else if (ingameSeconds%7==6) {
      fill(#FFFF00);
    } else if (ingameSeconds%7==0) {
      fill(#00FF00);
    } else if (ingameSeconds%7==1) {
      fill(#0000FF);
    } else if (ingameSeconds%7==2) {
      fill(#4B0082);
    } else if (ingameSeconds%7==3) {
      fill(#9400D3);
    }
    rect(600, 330, 444, 10);
    if (ingameSeconds%7==5) {
      fill(#FF0000);
    } else if (ingameSeconds%7==6) {
      fill(#FF7F00);
    } else if (ingameSeconds%7==0) {
      fill(#FFFF00);
    } else if (ingameSeconds%7==1) {
      fill(#00FF00);
    } else if (ingameSeconds%7==2) {
      fill(#0000FF);
    } else if (ingameSeconds%7==3) {
      fill(#4B0082);
    } else if (ingameSeconds%7==4) {
      fill(#9400D3);
    }
    rect(600, 340, 444, 10);
    if (ingameSeconds%7==0) {
      fill(#FF0000);
    } else if (ingameSeconds%7==1) {
      fill(#FF7F00);
    } else if (ingameSeconds%7==2) {
      fill(#FFFF00);
    } else if (ingameSeconds%7==3) {
      fill(#00FF00);
    } else if (ingameSeconds%7==4) {
      fill(#0000FF);
    } else if (ingameSeconds%7==5) {
      fill(#4B0082);
    } else if (ingameSeconds%7==6) {
      fill(#9400D3);
    }
    rect(600, 350, 444, 10);
    if (ingameSeconds%7==1) {
      fill(#FF0000);
    } else if (ingameSeconds%7==2) {
      fill(#FF7F00);
    } else if (ingameSeconds%7==3) {
      fill(#FFFF00);
    } else if (ingameSeconds%7==4) {
      fill(#00FF00);
    } else if (ingameSeconds%7==5) {
      fill(#0000FF);
    } else if (ingameSeconds%7==6) {
      fill(#4B0082);
    } else if (ingameSeconds%7==0) {
      fill(#9400D3);
    }
    rect(600, 360, 444, 10);
    if (ingameSeconds%7==2) {
      fill(#FF0000);
    } else if (ingameSeconds%7==3) {
      fill(#FF7F00);
    } else if (ingameSeconds%7==4) {
      fill(#FFFF00);
    } else if (ingameSeconds%7==5) {
      fill(#00FF00);
    } else if (ingameSeconds%7==6) {
      fill(#0000FF);
    } else if (ingameSeconds%7==0) {
      fill(#4B0082);
    } else if (ingameSeconds%7==1) {
      fill(#9400D3);
    }
    rect(600, 370, 444, 10);
    if (ingameSeconds%7==3) {
      fill(#FF0000);
    } else if (ingameSeconds%7==4) {
      fill(#FF7F00);
    } else if (ingameSeconds%7==5) {
      fill(#FFFF00);
    } else if (ingameSeconds%7==6) {
      fill(#00FF00);
    } else if (ingameSeconds%7==0) {
      fill(#0000FF);
    } else if (ingameSeconds%7==1) {
      fill(#4B0082);
    } else if (ingameSeconds%7==2) {
      fill(#9400D3);
    }
    rect(600, 380, 444, 10);
    if (ingameSeconds%7==6) {
      fill(#FF0000);
    } else if (ingameSeconds%7==0) {
      fill(#FF7F00);
    } else if (ingameSeconds%7==1) {
      fill(#FFFF00);
    } else if (ingameSeconds%7==2) {
      fill(#00FF00);
    } else if (ingameSeconds%7==3) {
      fill(#0000FF);
    } else if (ingameSeconds%7==4) {
      fill(#4B0082);
    } else if (ingameSeconds%7==5) {
      fill(#9400D3);
    }
    rect(600, 390, 444, 10);
  } else if (ingameSeconds<780) {
    if (ingameSeconds==480) {
      cheers.play();
    }
    fill(255);
    textSize(100);
    text("6:00 A.M.", 600, 400);
  } else {
    if (currentDay<7&&maxDay==currentDay) {
      maxDay++;
    }
    if (currentDay>4) {
      gameStage=5;
      ingameSeconds=0;
    } else {
      gameStage=0;
    }
  }
}
void paycheck() {
  ingameSeconds++;
  if (ingameSeconds<3060) {  
    if (ingameSeconds==2) {
      wavwav.play();
    }
    noStroke();
    fill(255);
    textSize(50);
    if (currentDay==5) {
      text("You earned some money!", 100, 100);
      text("To: __________", 320, 250);
      text("From: Alien Arcade", 320, 300);
      text("$3.75", 320, 350);
      text("We welcome you back with open arms!", 320, 400);
    } else if (currentDay==6) {
      text("You earned some overtime!", 100, 100);
      text("To: __________", 320, 250);
      text("From: Alien Arcade", 320, 300);
      text("$3.76", 320, 350);
    } else if (currentDay==7) {
      text("Note of Termination", 100, 100);
      text("You are fired from Alien Arcade", 320, 250);
      text("Reasons: -General Unprofessionalism", 320, 300);
      text("-Tampering with animatronics", 320, 350);
    }
  } else {
    gameStage=0;
  }
}
void alienAI() {
  piconianTimer();
  deathTimerAI();
  newTeraAI();
  newNanoAI();
  newPicoAI();
  newGigaAI();
  goboAI();
  teraAI();
  nanoAI();
  gigaAI();
  picoAI();
  goldenCatAI();
  puppetAI();
  if (blackoutInt!=0) {
    blackout();
  }
}
void puppetAI() {
  if (currentDay==1&&ingameSeconds>6425) {
    if (ingameSeconds%12==0) {
      musicBox--;
    }
  }
  if (currentDay==2&&ingameSeconds>425) {
    if (ingameSeconds%10==0) {
      musicBox--;
    }
  }
  if (currentDay>2&&currentDay<6&&ingameSeconds>425) {
    if (ingameSeconds%6==0) {
      musicBox--;
    }
  }
  if (currentDay==6&&ingameSeconds>425) {
    if (ingameSeconds%4==0) {
      musicBox--;
    }
  }
  if (currentDay==7&&ingameSeconds>425) {
    if (customDay[5]<1) {
      musicBox=300;
    } else if (customDay[5]<10) {
      if (ingameSeconds%(13-customDay[5])==0) {
        musicBox--;
      }
    } else {
      if (ingameSeconds%3==0) {
        musicBox=musicBox-1;
      }
    }
  }
  if (musicBox<0) {
    musicBox=0;
  }
  if (musicBox>300) {
    musicBox=300;
  }
  if (puppet==4) {
    if (!puppetEscaped.isPlaying()) {
      puppetEscaped.play();
    }
  }
  if (puppet==3) {
    if (currentDay==1) {
      puppetReset[1]=(int)random(3600, 4200);
    } else if (currentDay==2) {
      puppetReset[1]=(int)random(2400, 4100);
    } else if (currentDay<5) {
      puppetReset[1]=(int)random(800, 2400);
    } else if (currentDay<7) {
      puppetReset[1]=(int)random(420, 1000);
    } else {
      if (customDay[5]==0) {
        puppetReset[1]=(int)random(420, 1000);
      } else if (customDay[5]==1) {
        puppetReset[1]=(int)random(4000, 5000);
      } else if (customDay[5]==2) {
        puppetReset[1]=(int)random(3800, 4700);
      } else if (customDay[5]==3) {
        puppetReset[1]=(int)random(3600, 4200);
      } else if (customDay[5]==4) {
        puppetReset[1]=(int)random(2400, 3600);
      } else if (customDay[5]==5) {
        puppetReset[1]=(int)random(1200, 2500);
      } else if (customDay[5]==6) {
        puppetReset[1]=(int)random(800, 2400);
      } else if (customDay[5]==7) {
        puppetReset[1]=(int)random(600, 2100);
      } else if (customDay[5]==8) {
        puppetReset[1]=(int)random(420, 1000);
      } else if (customDay[5]==9) {
        puppetReset[1]=(int)random(360, 800);
      } else if (customDay[5]==10) {
        puppetReset[1]=(int)random(180, 420);
      }
    }
  } else if (puppet<3) {
    puppetReset[1]=120;
  }
  if (musicBox!=0) {
    puppetReset[0]=ingameSeconds;
  } else if (ingameSeconds>puppetReset[0]+puppetReset[1]) {
    puppet++;
    if (puppet<4) {
      someoneMoved(5);
    }
    puppetReset[0]=ingameSeconds;
  }
  if (puppet==5) {
    whoj="puppet";
    gameStage=7;
  }
}
void someoneMoved(int cam) {
  someoneMoved[cam]=ingameSeconds;
}
void deathTimer() {
  if (ingameSeconds%60==15) {
    deathTimer=deathTimer+1;
  }
}
void j() {
  gigaRadio.stop();
  goboMove.stop();
  musicBx.stop();
  breathinbreathout.stop();
  SomeoneVentedNT.stop();
  SomeoneVentedNN.stop();
  SomeoneVentedNG.stop();
  SomeoneVentedG.stop();
  SomeoneVentedN.stop();
  SomeoneVentedT.stop();
  goboLaugh.stop();
  puppetEscaped.stop();
  alarm.stop();
  blackoutInt=0;
  if (alienWaitTimeReset[19]==0) {
    menuSeconds=0;
    alienWaitTimeReset[19]=1;
  }
  menuSeconds++;
  camera=false;
  mask=false;
  if (menuSeconds<120) {
    background(125);
    textSize(20);
    fill(0);
    rect(550, 200, 400, 550);
    noStroke();
    strokeWeight(2);
    stroke(0);
    fill(0);
    rect(50, 600, 150, 200);
    fill(0);
    rect(1300, 600, 150, 200);
    noStroke();
    fill(0, 100, 0);
    ellipse(750, 800, 1400, 100);
    stroke(0);
    strokeWeight(5);
    fill(50);
    rotate(-PI/36);
    rect(230, 690, 150, 100);
    rotate(PI/36);
    line(430, 677, 422, 703);
    line(422, 703, 384, 684);
    line(384, 684, 370, 717);
    line(343, 708, 370, 717);
    line(343, 708, 347, 680);
    line(347, 680, 324, 680);
    line(324, 680, 322, 734);
    line(370, 717, 395, 736);
    line(377, 746, 395, 736);
    fill(255, 0, 0);
    rect(60, 200, 330, 230);
    makeNewTera(0.5, 120, 270, 1, 0, 0, false, true);
    makeNewNano(0.5, 220, 270, 1, 0, false, true);
    makeNewPico(0.5, 320, 270, 1, false, true);
    textAlign(CENTER, CENTER);
    textSize(50);
    fill(255);
    text("Party!", 220, 392);
    textAlign(LEFT);
    stroke(0);
    strokeWeight(3);
    rotate(-PI/25);
    makePostIt(412, 270);
    rotate(PI/25);
    strokeWeight(3);
    fill(139, 69, 19);
    rect(780, 600, 15, 175);
    rect(810, 600, 15, 160);
    rect(780, 500, 400, 100);
    rect(1165, 600, 15, 160);
    rect(1135, 600, 15, 175);
    rotate(-PI/12);
    makePostIt(638, 709);
    rotate(PI/12);
    strokeWeight(5);
    stroke(0);
    fill(50);
    rect(1017, 434, 150, 100);
    makePostIt(985, 200);
    noStroke();
    noFill();
    fill(50);
    rect(100, 500, 50, 50);
    fill(50);
    rect(1350, 500, 50, 50);
    if (menuSeconds==2&&settings[1]==1) {
      voij.play();
    }
    if (settings[1]==1) {
      if (whoj=="New Tera") {
        if (menuSeconds<5) {
          makeNewTera(1.5, 750, 600, 1, 2, 1, false, true);
        } else if (menuSeconds<9) {
          rotate(PI/6);
          makeNewTera(2, 924, 101, 0.8, 2, 2, true, true);
        } else if (menuSeconds<13) {
          rotate(-PI/12);
          makeNewTera(3, 595, 677, 0.5, 2, 1, true, true);
        } else if (menuSeconds<17) {
          rotate(PI/6);
          makeNewTera(3.5, 874, 14, 0.2, 2, 1, true, true);
        } else if (menuSeconds<21) {
          rotate(-PI/12);
          makeNewTera(5, 620, 580, 0.1, 2, 1, true, true);
        } else {
          rotate(PI/6);
          makeNewTera(6, 849, -28, 0, 2, 1, true, true);
        }
      }
      if (whoj=="New Nano") {
        if (menuSeconds<5) {
          makeNewNano(5, 600, 600, 0.5, 1, true, true);
        } else if (menuSeconds<9) {
          rotate(PI/6);
          makeNewNano(5.5, 794, 176, 0.4, 1, true, true);
        } else if (menuSeconds<13) {
          rotate(-PI/6);
          makeNewNano(6, 269, 733, 0.3, 1, true, true);
        } else if (menuSeconds<17) {
          rotate(PI/6);
          makeNewNano(6.5, 769, 133, 0.2, 1, true, true);
        } else if (menuSeconds<21) {
          rotate(-PI/6);
          makeNewNano(6.5, 269, 733, 0.2, 1, true, true);
        } else if (menuSeconds<25) {
          rotate(PI/12);
          makeNewNano(7, 708, 327, 0.1, 1, true, true);
        } else {
          rotate(PI/12);
          makeNewNano(7, 708, 327, 0, 2, true, true);
        }
      }
      if (whoj=="New Pico") {
        if (menuSeconds<5) {
          makeNewPico(1, 400, 800, 1, false, true);
        } else if (menuSeconds<9) {
          makeNewPico(1.5, 400, 600, 1, false, true);
        } else if (menuSeconds<13) {
          rotate(-PI/6);
          makeNewPico(2, 96, 633, 1, false, true);
        } else if (menuSeconds<17) {
          rotate(PI/6);
          makeNewPico(2.5, 400, 350, 1, false, true);
        } else if (menuSeconds<21) {
          makeNewPico(3.5, 400, 350, 1, false, true);
        } else if (menuSeconds<25) {
          rotate(PI/12);
          makeNewPico(4, 476, 234, 1, false, true);
        } else if (menuSeconds<29) {
          rotate(PI/12);
          makeNewPico(5, 608, 53, 0.5, true, true);
        } else if (menuSeconds<33) {
          rotate(-PI/4);
          makeNewPico(10, 633, 532, 0.2, true, true);
        } else {
          makeNewPico(9, 553, 200, 0, true, true);
        }
      }
      if (whoj=="New Giga") {
        makeNewGigaHolder(1, 750, 350, 1);
        if (menuSeconds<5) {
          makeNewGiga(1, 750, 350, 1, false);
        } else if (menuSeconds<9) {
          makeNewGiga(1.5, 750, 350, 1, false);
        } else if (menuSeconds<13) {
          makeNewGiga(2, 750, 350, 1, false);
        } else if (menuSeconds<17) {
          makeNewGiga(3, 750, 350, 1, false);
        } else if (menuSeconds<21) {
          rotate(PI/6);
          makeNewGiga(3, 874, 14, 1, false);
        } else if (menuSeconds<25) {
          rotate(PI/2);
          makeNewGiga(3, 700, -750, 1, false);
        } else if (menuSeconds<29) {
          rotate(3*PI/4);
          makeNewGiga(3, 70, -1131, 1, false);
        }
      }
      if (whoj=="Giga") {
        if (menuSeconds<5) {
          makeGiga(2, 750, 400, 0.4, true);
        } else if (menuSeconds<9) {
          makeGiga(3, 700, 400, 0.35, true);
        } else if (menuSeconds<13) {
          makeGiga(5, 700, 400, 0.35, true);
        } else if (menuSeconds<15) {
          rotate(-PI/24);
          makeGiga(5.5, 654, 388, 0.35, true);
        } else if (menuSeconds<17) {
          rotate(-PI/12);
          makeGiga(6, 572, 567, 0.35, true);
        } else if (menuSeconds<21) {
          rotate(-PI/8);
          makeGiga(6.5, 531, 545, 0.25, true);
        } else if (menuSeconds<23) {
          rotate(-PI/6);
          makeGiga(7, 406, 696, 0.2, true);
        } else if (menuSeconds<25) {
          rotate(-5*PI/24);
          makeGiga(8.5, 372, 664, 0.15, true);
        } else if (menuSeconds<27) {
          rotate(-PI/4);
          makeGiga(10, 282, 707, 0.1, true);
        } else {
          rotate(-PI/4);
          makeGiga(10, 282, 707, 0, true);
        }
      }
      if (whoj=="Tera") {
        if (menuSeconds<5) {
          makeTera(2, 700, 700, 0.5, true);
        } else if (menuSeconds<9) {
          makeTera(3, 700, 600, 0.5, true);
        } else if (menuSeconds<13) {
          makeTera(4, 700, 450, 0.5, true);
        } else if (menuSeconds<17) {
          makeTera(5, 650, 450, 0.5, true);
        } else if (menuSeconds<21) {
          makeTera(8, 600, 450, 0.3, true);
        } else if (menuSeconds<25) {
          makeTera(14, 550, 450, 0.1, true);
        } else {
          makeTera(20, 500, 450, 0, true);
        }
      }
      if (whoj=="Nano") {
        if (menuSeconds<5) {
          makeNano(2, 600, 600, 0.5, 0, true, true);
        } else if (menuSeconds<9) {
          makeNano(2.5, 600, 550, 0.5, 0, true, true);
        } else if (menuSeconds<13) {
          makeNano(4, 600, 450, 0.5, 0, true, true);
        } else if (menuSeconds<17) {
          makeNano(6, 600, 450, 0.5, 0, true, true);
        } else if (menuSeconds<21) {
          rotate(PI/12);
          makeNano(6, 696, 279, 0.4, 0, true, true);
        } else if (menuSeconds<25) {
          rotate(PI/18);
          makeNano(7, 669, 338, 0.2, 0, true, true);
        } else {
          rotate(-PI/12);
          makeNano(8, 463, 589, 0.05, 2, true, true);
        }
      }
      if (whoj=="Pico") {
        if (menuSeconds<5) {
          rotate(-PI/12);
          makePico(1.5, 714, 812, 0.5, true, true, true);
        } else if (menuSeconds<9) {
          rotate(-PI/12);
          makePico(3, 630, 738, 0.5, true, true, true);
        } else if (menuSeconds<13) {
          makePico(4, 650, 400, 0.3, true, true, true);
        } else if (menuSeconds<17) {
          rotate(PI/12);
          makePico(5, 731, 218, 0.2, true, true, true);
        } else if (menuSeconds<21) {
          rotate(-PI/12);
          makePico(5, 524, 554, 0.1, true, true, true);
        } else if (menuSeconds<25) {
          makePico(6, 650, 400, 0.1, true, true, true);
        } else {
          rotate(PI/12);
          makePico(7, 731, 218, 0, true, true, true);
        }
      }
      if (whoj=="GS") {
        if (menuSeconds<5) {
          makeGoldenAlien(1.5, 750, 400, 0.5, true, false);
        } else if (menuSeconds<9) {
          makeGoldenAlien(2, 750, 400, 0.5, true, false);
        } else if (menuSeconds<13) {
          makeGoldenAlien(2.5, 750, 400, 0.4, true, false);
        } else if (menuSeconds<17) {
          makeGoldenAlien(3, 750, 400, 0.3, true, false);
        } else if (menuSeconds<21) {
          makeGoldenAlien(3.5, 750, 400, 0.2, true, false);
        } else {
          makeGoldenAlien(4, 750, 400, 0.1, true, false);
        }
      }
      if (whoj=="puppet") {
        if (menuSeconds<5) {
          makePuppet(1, 750, 200, 0.5, true, false);
        } else if (menuSeconds<9) {
          makePuppet(2, 750, 300, 0.5, true, false);
        } else if (menuSeconds<13) {
          makePuppet(3, 750, 400, 0.4, true, false);
        } else if (menuSeconds<17) {
          makePuppet(5, 750, 400, 0.3, true, false);
        } else if (menuSeconds<21) {
          makePuppet(7, 750, 400, 0.1, true, false);
        } else {
          makePuppet(8, 750, 400, 0, false, true);
        }
      }
    }
  } else if (menuSeconds<420) {
    for (int a=0; a<1520; a=a+10) {
      for (int b=0; b<810; b=b+10) {
        if (!statc.isPlaying()) {
          statc.play();
        }
        fill(random(255));
        rect(a-10, b-10, 10, 10);
      }
    }
  } else if (menuSeconds<720) {
    statc.stop();
    background(0);
    fill(50, 0, 0);
    ellipse(350, 300, 200, 200);
    stroke(50, 0, 0);
    strokeWeight(10);
    line(300, 300, 300, 700);
    line(400, 300, 400, 700);
    fill(255);
    ellipse(350, 275, 50, 50);
    fill(50);
    noStroke();
    rect(0, 0, 1500, 200);
    rect(0, 400, 1500, 100);
    rect(0, 700, 1500, 100);
    rect(0, 0, 200, 800);
    rect(1300, 0, 200, 800);
    rect(500, 200, 500, 300);
    textSize(50);
    fill(255);
    textAlign(CENTER, CENTER);
    text("Game Over", 750, 150);
    textAlign(BASELINE);
  } else {
    menuSeconds=0;
    gameStage=0;
  }
}
void newTeraAI() {
  if (alienWaitTimeReset[0]==0) {
    alienWaitTimeReset[0]=1;
    currentSeconds[0]=ingameSeconds;
    if (currentDay==1) {
      if (newTera==0) {
        alienWaitTime[0]=(int)random(6480, 8760);
      } else {
        alienWaitTime[0]=(int)random(1080, 2160);
      }
    } else if (currentDay==2) {
      alienWaitTime[0]=(int)random(960, 1680);
    } else if (currentDay==3||currentDay==4) {
      alienWaitTime[0]=(int)random(3000, 3600);
    } else if (currentDay==5) {
      alienWaitTime[0]=(int)random(720, 1440);
    } else if (currentDay==6) {
      alienWaitTime[0]=(int)random(480, 1080);
    } else {
      if (customDay[0]==0) {
        alienWaitTime[0]=99999999;
      } else if (customDay[0]==1) {
        if (newTera==0) {
          alienWaitTime[0]=(int)random(6900, 9000);
        } else {
          alienWaitTime[0]=(int)random(1800, 3720);
        }
      } else if (customDay[0]==2) {
        alienWaitTime[0]=(int)random(1620, 3120);
      } else if (customDay[0]==3) {
        alienWaitTime[0]=(int)random(1320, 2220);
      } else if (customDay[0]==4) {
        alienWaitTime[0]=(int)random(1080, 1920);
      } else if (customDay[0]==5) {
        alienWaitTime[0]=(int)random(900, 1500);
      } else if (customDay[0]==6) {
        alienWaitTime[0]=(int)random(600, 1200);
      } else if (customDay[0]==7) {
        alienWaitTime[0]=(int)random(480, 960);
      } else if (customDay[0]==8) {
        alienWaitTime[0]=(int)random(360, 840);
      } else if (customDay[0]==9) {
        alienWaitTime[0]=(int)random(300, 720);
      } else {
        alienWaitTime[0]=(int)random(180, 360);
      }
    }
    if (newTera==5) {
      alienWaitTime[0]=75;
    }
  }
  if (newTera>4) {
    currentSeconds[0]=ingameSeconds;
    if (camera==false) {
      cameraDown[0]=true;
    }
    if (mask==false||someoneInOffice) {
      newTeraTimer=ingameSeconds;
    }
    if (camera==true&&cameraDown[0]==true) {
      newTera=7;
      if (deathTimer==0) {
        whoj="New Tera";
        deathTimer=1;
      }
      deathTimer();
    }
    if (mask==true&&ingameSeconds>newTeraTimer+alienWaitTime[0]) {
      if (newTeraScan==0) {
        newTeraScan=1300;
      }
      howLongOffice[0]=1;
      if (!bstart) {
        bstart=true;
        blackoutInt=1;
      }
    }
    if (howLongOffice[0]==1) {
      maskTimer[0]++;
      if (ingameSeconds%40==15) {
        newTeraScan=newTeraScan-50;
      }
    }
    if (mask==false&&howLongOffice[0]==1) {
      newTera=7;
    }
    if (someoneInOffice&&randomint[0]!=1) {
      newTeraScan=0;
      alerts[0]=0;
      newTera=1;
      SomeoneVentedNT.play();
      maskTimer[0]=0;
      howLongOffice[0]=0;
      bstart=false;
      cameraDown[0]=false;
    }
  }
  if (maskTimer[0]>240) {
    newTeraScan=0;
    if (newTera>6) {
      whoj="New Tera";
      gameStage=7;
    } else {
      newTeraScan=0;
      alerts[0]=0;
      newTera=1;
      SomeoneVentedNT.play();
      bstart=false;
      maskTimer[0]=0;
      howLongOffice[0]=0;
      cameraDown[0]=false;
    }
  }
  if (ingameSeconds>currentSeconds[0]+alienWaitTime[0]) {
    alienWaitTimeReset[0]=0;
    newTera++;
    if (newTera==1) {
      someoneMoved(1);
      someoneMoved(7);
    }
    if (newTera==2) {
      someoneMoved(3);
      someoneMoved(7);
    }
    if (newTera==3) {
      someoneMoved(3);
      someoneMoved(4);
      alerts[0]=1;
    }
    if (newTera==4) {
      SomeoneVentedNT.play();
      someoneMoved(4);
      someoneMoved(12);
    }
    if (newTera==5&&camera==false||newGiga>5) {
      SomeoneVentedNT.stop();
      newTera=4;
      alienWaitTimeReset[0]=1;
    }
    if (newTera==5) {
      someoneMoved(12);
      if (currentDay<7) {
        randomint[0]=(int)random(1, (13-currentDay));
      } else {
        if (customDay[0]<5) {
          randomint[0]=(int)random(1, 11);
        } else if (customDay[0]<10) {
          randomint[0]=(int)random(1, 8);
        } else {
          randomint[0]=(int)random(1, 5);
        }
      }
    }
  }
}
void newNanoAI() {
  if (alienWaitTimeReset[1]==0) {
    alienWaitTimeReset[1]=1;
    currentSeconds[1]=ingameSeconds;
    if (currentDay==1) {
      if (newNano==0) {
        alienWaitTime[1]=(int)random(6480, 8760);
      } else {
        alienWaitTime[1]=(int)random(1560, 2760);
      }
    } else if (currentDay==2) {
      alienWaitTime[1]=(int)random(960, 1200);
    } else if (currentDay==3||currentDay==4) {
      alienWaitTime[1]=(int)random(3000, 3600);
    } else if (currentDay==5) {
      alienWaitTime[1]=(int)random(840, 1080);
    } else if (currentDay==6) {
      alienWaitTime[1]=(int)random(600, 1080);
    } else {
      if (customDay[1]==0) {
        alienWaitTime[1]=582395729;
      } else if (customDay[1]==1) {
        if (newNano==0) {
          alienWaitTime[1]=(int)random(6900, 9000);
        } else {
          alienWaitTime[1]=(int)random(1800, 3700);
        }
      } else if (customDay[1]==2) {
        alienWaitTime[1]=(int)random(1800, 3300);
      } else if (customDay[1]==3) {
        alienWaitTime[1]=(int)random(1500, 2520);
      } else if (customDay[1]==4) {
        alienWaitTime[1]=(int)random(1260, 2160);
      } else if (customDay[1]==5) {
        alienWaitTime[1]=(int)random(1020, 1620);
      } else if (customDay[1]==6) {
        alienWaitTime[1]=(int)random(900, 1260);
      } else if (customDay[1]==7) {
        alienWaitTime[1]=(int)random(720, 1020);
      } else if (customDay[1]==8) {
        alienWaitTime[1]=(int)random(600, 900);
      } else if (customDay[1]==9) {
        alienWaitTime[1]=(int)random(480, 780);
      } else {
        alienWaitTime[1]=(int)random(180, 360);
      }
    }
  }
  if (newNano>4) {
    currentSeconds[1]=ingameSeconds;
    if (camera==false) {
      cameraDown[1]=true;
    }
    if (camera==true&&cameraDown[1]==true) {
      newNano=6;
      if (deathTimer==0) {
        whoj="New Nano";
        deathTimer=1;
      }
      deathTimer();
    }
    if (mask==true&&howLongOffice[1]==0&&someoneInOffice==false) {
      howLongOffice[1]=(int)random(60, 180);
    }
    if (howLongOffice[1]!=0) {
      maskTimer[1]++;
    }
    if (mask==false&&howLongOffice[1]!=0) {
      howLongOffice[1]=0;
      maskTimer[1]=0;
    }
    if (someoneInOffice==true&&randomint[1]!=1) {
      newNano=1;
      alerts[1]=0;
      maskTimer[1]=0;
      SomeoneVentedNN.play();
      howLongOffice[1]=0;
      cameraDown[1]=false;
    }
  }
  if (maskTimer[1]>howLongOffice[1]) {
    newNano=1;
    alerts[1]=0;
    maskTimer[1]=0;
    howLongOffice[1]=0;
    SomeoneVentedNN.play();
    cameraDown[1]=false;
  }
  if (ingameSeconds>currentSeconds[1]+alienWaitTime[1]) {
    alienWaitTimeReset[1]=0;
    newNano++;
    if (newNano==5&&camera==false||gobo==5) {
      SomeoneVentedNN.stop();
      newNano=4;
      alienWaitTimeReset[1]=1;
    }
    if (newNano==1) { 
      someoneMoved(1);
      someoneMoved(2);
    }
    if (newNano==2) {
      someoneMoved(2);
      someoneMoved(3);
    }
    if (newNano==3) {
      someoneMoved(3);
      someoneMoved(8);
      alerts[1]=1;
    }
    if (newNano==4) {
      someoneMoved(8);
      SomeoneVentedNN.play();
      someoneMoved(11);
    }
    if (newNano==5) {
      someoneMoved(11);
      if (currentDay<7) {
        randomint[1]=(int)random(1, (13-currentDay));
      } else {
        if (customDay[1]<5) {
          randomint[1]=(int)random(1, 11);
        } else if (customDay[1]<10) {
          randomint[1]=(int)random(1, 8);
        } else {
          randomint[1]=(int)random(1, 5);
        }
      }
    }
  }
}
void beginBlackout() {
  if (blackoutInt==0) {
    blackoutInt=1;
  }
}
void blackout() {
  blackoutInt++;
  if (camera==true) {
    blackoutInt=0;
  }
  if (blackoutInt==2&&!blackout.isPlaying()) {
    blackout.play();
  }
  if (blackoutInt>29&&blackoutInt<60) {
    background(0);
  }
  if (blackoutInt>83&&blackoutInt<91) {
    background(0);
  }
  if (blackoutInt>95&&blackoutInt<103) {
    background(0);
  }
  if (blackoutInt>107&&blackoutInt<127) {
    background(0);
  }
  if (blackoutInt>131&&blackoutInt<145) {
    background(0);
  }
  if (blackoutInt>167&&blackoutInt<175) {
    background(0);
  }
  if (blackoutInt>180&&blackoutInt<240) {
    background(0);
  }
  if (blackoutInt>240&&blackoutInt<495) {
    fill(0, 0, 0, 495-blackoutInt);
    noStroke();
    rect(0, 0, 1500, 800);
  } 
  if (blackoutInt>496) {
    blackoutInt=0;
  }
}
void deathTimerAI() {
  if (deathTimer>0&&camera==false||deathTimer>15) {
    gameStage=7;
  }
}
void newPicoAI() {
  if (alienWaitTimeReset[2]==0) {
    alienWaitTimeReset[2]=1;
    currentSeconds[2]=ingameSeconds;
    if (currentDay==1) {
      alienWaitTime[2]=(int)random(1200, 2400);
    } 
    if (currentDay>1&&currentDay<5) {
      alienWaitTime[2]=(int)random(960, 1560);
    } 
    if (currentDay==5) {
      alienWaitTime[2]=(int)random(720, 1320);
    }
    if (currentDay==6) {
      alienWaitTime[2]=(int)random(720, 1200);
    }
    if (currentDay==7) {
      if (customDay[2]==0) {
        alienWaitTime[2]=53879529;
      } else if (customDay[2]==1) {
        alienWaitTime[2]=(int)random(2400, 5400);
      } else if (customDay[2]==2) {
        alienWaitTime[2]=(int)random(1800, 3300);
      } else if (customDay[2]==3) {
        alienWaitTime[2]=(int)random(1800, 3000);
      } else if (customDay[2]==4) {
        alienWaitTime[2]=(int)random(1500, 2400);
      } else if (customDay[2]==5) {
        alienWaitTime[2]=(int)random(1200, 1920);
      } else if (customDay[2]==6) {
        alienWaitTime[2]=(int)random(900, 1680);
      } else if (customDay[2]==7) {
        alienWaitTime[2]=(int)random(720, 1320);
      } else if (customDay[2]==8) {
        alienWaitTime[2]=(int)random(600, 1080);
      } else if (customDay[2]==9) {
        alienWaitTime[2]=(int)random(420, 720);
      } else {
        alienWaitTime[2]=(int)random(240, 420);
      }
    }
    if (newPico==3) {
      alienWaitTime[2]=(int)random(300, 720);
    }
  }
  if (newTera==0||newNano==0) {
    currentSeconds[2]=ingameSeconds;
  }
  if (ingameSeconds>currentSeconds[2]+alienWaitTime[2]) {
    alienWaitTimeReset[2]=0;
    newPico++;
    if (newPico==1) {
      if (camLeftOff==1||camLeftOff==10) {
        someoneMoved(1);
        someoneMoved(10);
      }
    }
    if (newPico==2) {
      someoneMoved(10);
      disableHallLight();
    }
    if (newPico==3) {
      disableHallLight();
      alerts[2]=1;
    }
  }
  if (newPico==4) {
    if (camera==false||someoneInOffice) {
      newPico=3;
      alienWaitTimeReset[2]=1;
    } else {
      piconianTimer=1;
      newPico=5;
    }
  }
  if (newPico>4) {
    alienWaitTimeReset[2]=0;
    currentSeconds[2]=ingameSeconds;
    if (newPico>5) {
      newPico=5;
    }
    someoneInOffice=true;
    if (camera==false&&cameraDown[2]==false) {
      beginBlackout();
      cameraDown[2]=true;
      piconianTimer=0;
      alerts[19]=ingameSeconds;
    }
    if (cameraDown[2]==true) {
      if (ingameSeconds==alerts[19]+57) {
        if (mask==true) {
          cameraDown[19]=true;
        } else {
          cameraDown[19]=false;
        }
      }
      if (camera==true&&cameraDown[2]==true) {
        if (deathTimer==0) {
          whoj="New Pico";
          deathTimer=1;
        }
        deathTimer();
      }
      if (camera==false) {
        if (ingameSeconds>alerts[19]+240) {
          if (cameraDown[19]==false) {
            whoj="New Pico";
            gameStage=7;
          }
          if (mask==true) {
            newPico=0;
            alerts[2]=0;
            cameraDown[2]=false;
            someoneInOffice=false;
            cameraDown[19]=false;
            alienWaitTimeReset[2]=0;
            piconianTimer=0;
          } else {
            whoj="New Pico";
            gameStage=7;
          }
        }
      }
    }
  }
}
void disableHallLight() {
  alienWaitTime[19]=ingameSeconds;
}
void piconianTimer() {
  if (piconianTimer>0) {
    if (ingameSeconds%60==15) {
      piconianTimer++;
    }
  }
  if (piconianTimer>5) {
    piconianTimer=0;
    camera=false;
    cameraDwn.play();
  }
}
void newGigaAI() {
  if (newGiga==0) {
    if (camera&&camLeftOff==9) {
      if (!gigaRadio.isPlaying()) {
        gigaRadio.play();
      }
    } else {
      gigaRadio.stop();
    }
  }
  if (newGiga==1) {
    if (camera&&camLeftOff==5) {
      if (!gigaRadio.isPlaying()) {
        gigaRadio.play();
      }
    } else {
      gigaRadio.stop();
    }
  }
  if (newGiga==2) {
    if (camera&&camLeftOff==10) {
      if (!gigaRadio.isPlaying()) {
        gigaRadio.play();
      }
    } else {
      gigaRadio.stop();
    }
  }
  if (newGiga==4) {
    if (camera&&camLeftOff==4) {
      if (!gigaRadio.isPlaying()) {
        gigaRadio.play();
      }
    } else {
      gigaRadio.stop();
    }
  }
  if (newGiga==5) {
    if (camera&&camLeftOff==12) {
      if (!gigaRadio.isPlaying()) {
        gigaRadio.play();
      }
    } else {
      gigaRadio.stop();
    }
  }
  if (newGiga==6) {
    if (!gigaRadio.isPlaying()) {
      gigaRadio.play();
    }
  }
  if (alienWaitTimeReset[3]==0) {
    alienWaitTimeReset[3]=1;
    currentSeconds[3]=ingameSeconds;
    if (currentDay==1) {
      alienWaitTime[3]=133769420;
    }
    if (currentDay==3) {
      alienWaitTime[3]=(int)random(840, 2100);
    }
    if (currentDay==4) {
      alienWaitTime[3]=(int)random(600, 1200);
    }
    if (currentDay==5) {
      alienWaitTime[3]=(int)random(600, 900);
    }
    if (currentDay==6) {
      alienWaitTime[3]=(int)random(480, 660);
    }
    if (currentDay==2) {
      alienWaitTime[3]=(int)random(1200, 3000);
    }
    if (currentDay==7) {
      if (customDay[3]==0) {
        alienWaitTime[3]=696969;
      } else if (customDay[3]==1) {
        alienWaitTime[3]=(int)random(2100, 3900);
      } else if (customDay[3]==2) {
        alienWaitTime[3]=(int)random(1500, 2400);
      } else if (customDay[3]==3) {
        alienWaitTime[3]=(int)random(1380, 2280);
      } else if (customDay[3]==4) {
        alienWaitTime[3]=(int)random(1200, 2100);
      } else if (customDay[3]==5) {
        alienWaitTime[3]=(int)random(1020, 1920);
      } else if (customDay[3]==6) {
        alienWaitTime[3]=(int)random(900, 1500);
      } else if (customDay[3]==7) {
        alienWaitTime[3]=(int)random(720, 1200);
      } else if (customDay[3]==8) {
        alienWaitTime[3]=(int)random(600, 900);
      } else if (customDay[3]==9) {
        alienWaitTime[3]=(int)random(480, 600);
      } else {
        alienWaitTime[3]=(int)random(240, 360);
      }
    }
  }
  if (newGiga>5) {
    currentSeconds[3]=ingameSeconds;
    if (camera==false) {
      cameraDown[3]=true;
    }
    if (camera==true&&cameraDown[3]==true) {
      newGiga=7;
      if (deathTimer==0) {
        whoj="New Giga";
        deathTimer=1;
      }
      deathTimer();
    }
    if (mask==true&&howLongOffice[3]==0&&someoneInOffice==false) {
      howLongOffice[3]=(int)random(60, 180);
    }
    if (howLongOffice[3]!=0) {
      maskTimer[3]++;
    }
    if (mask==false&&howLongOffice[3]!=0) {
      howLongOffice[3]=0;
      maskTimer[3]=0;
    }
    if (someoneInOffice&&randomint[2]!=1&&blackoutInt>140) {
      gigaRadio.stop();
      alienWaitTimeReset[3]=0;
      newGiga=2;
      alerts[3]=0;
      SomeoneVentedNG.play();
      maskTimer[3]=0;
      howLongOffice[3]=0;
      cameraDown[3]=false;
    }
  }
  if (maskTimer[3]>howLongOffice[3]) {
    gigaRadio.stop();
    alienWaitTimeReset[3]=0;
    newGiga=2;
    alerts[3]=0;
    maskTimer[3]=0;
    SomeoneVentedNG.play();
    howLongOffice[3]=0;
    cameraDown[3]=false;
  }
  if (ingameSeconds>alienWaitTime[3]+currentSeconds[3]) {
    alienWaitTimeReset[3]=0;
    newGiga++;
    gigaRadio.stop();
    if (newGiga==6&&camera==false||newTera>4) {
      newGiga=5;
      SomeoneVentedNG.stop();
      alienWaitTimeReset[3]=1;
    }
    if (newGiga==1) {
      someoneMoved(9);
      someoneMoved(5);
    }
    if (newGiga==2) {
      someoneMoved(5);
      someoneMoved(10);
    }
    if (newGiga==3) {
      someoneMoved(10);
      disableHallLight();
    }
    if (newGiga==4) {
      alerts[3]=1;
      disableHallLight();
      someoneMoved(4);
    }
    if (newGiga==5) {
      someoneMoved(4);
      SomeoneVentedNG.play();
      someoneMoved(12);
    }
    if (newGiga==6) {
      someoneMoved(12);
      if (currentDay<7) {
        randomint[2]=(int)random(1, (13-currentDay));
      } else {
        if (customDay[3]<5) {
          randomint[2]=(int)random(1, 11);
        } else if (customDay[3]<10) {
          randomint[2]=(int)random(1, 8);
        } else {
          randomint[2]=(int)random(1, 5);
        }
      }
    }
  }
}
void goboAI() {
  if (alienWaitTimeReset[4]==0) {
    alienWaitTimeReset[4]=1;
    currentSeconds[4]=ingameSeconds;
    if (gobo==0||gobo==4) {
      if (currentDay==1) {
        alienWaitTime[4]=(int)random(69696969, 96969696);
      }
      if (currentDay==2) {
        alienWaitTime[4]=(int)random(2700, 5280);
      }
      if (currentDay==3) {
        alienWaitTime[4]=(int)random(1440, 2880);
      }
      if (currentDay==4) {
        alienWaitTime[4]=(int)random(960, 1920);
      }
      if (currentDay==5||currentDay==6) {
        alienWaitTime[4]=(int)random(600, 1500);
      }
      if (currentDay==7) {
        if (customDay[4]==0) {
          alienWaitTime[4]=6942069;
        } else if (customDay[4]==1) {
          alienWaitTime[4]=(int)random(2400, 5280);
        } else if (customDay[4]==2) {
          alienWaitTime[4]=(int)random(2220, 4440);
        } else if (customDay[4]==3) {
          alienWaitTime[4]=(int)random(1800, 3120);
        } else if (customDay[4]==4) {
          alienWaitTime[4]=(int)random(1560, 2640);
        } else if (customDay[4]==5) {
          alienWaitTime[4]=(int)random(1380, 2220);
        } else if (customDay[4]==6) {
          alienWaitTime[4]=(int)random(1200, 1920);
        } else if (customDay[4]==7) {
          alienWaitTime[4]=(int)random(900, 1440);
        } else if (customDay[4]==8) {
          alienWaitTime[4]=(int)random(780, 1200);
        } else if (customDay[4]==9) {
          alienWaitTime[4]=(int)random(600, 960);
        } else if (customDay[4]==10) {
          alienWaitTime[4]=(int)random(240, 360);
        }
      }
    }
    if (gobo>0&&gobo<4) {
      if (currentDay<6) {
        alienWaitTime[4]=(int)random(600, 1500);
      } else {
        alienWaitTime[4]=(int)random(420, 900);
      }
      if (currentDay==7) {
        if (customDay[4]<8) {
          alienWaitTime[4]=(int)random(600, 1500);
        } else if (customDay[4]<10) {
          alienWaitTime[4]=(int)random(420, 900);
        } else {
          alienWaitTime[4]=(int)random(240, 360);
        }
      }
    }
    if (gobo==6) {
      alienWaitTime[4]=(int)random(720, 1920);
    }
  }
  if (gobo==5) {
    currentSeconds[4]=ingameSeconds;
    if (camera==false) {
      cameraDown[4]=true;
    }
    if (camera==true&&cameraDown[4]==true) {
      if (newNano==6||newTera==7||newGiga==7) {
        gobo=-1337;
      } else {
        powerleft=0;
        alienWaitTimeReset[4]=0;
        gobo=6;
      }
    }
    if (mask==true&&howLongOffice[4]==0&&someoneInOffice==false) {
      howLongOffice[4]=(int)random(60, 180);
    }
    if (howLongOffice[4]!=0) {
      maskTimer[4]++;
    }
    if (mask==false&&howLongOffice[4]!=0) {
      howLongOffice[4]=0;
      maskTimer[4]=0;
    }
    if (someoneInOffice==true&&randomint[3]!=1) {
      gobo=1;
      alerts[4]=0;
      maskTimer[4]=0;
      SomeoneVentedG.play();
      howLongOffice[4]=0;
      cameraDown[4]=false;
    }
  }
  if (maskTimer[4]>howLongOffice[4]) {
    gobo=1;
    alerts[4]=0;
    maskTimer[4]=0;
    howLongOffice[4]=0;
    SomeoneVentedG.play();
    cameraDown[4]=false;
  }
  if (ingameSeconds>currentSeconds[4]+alienWaitTime[4]) {
    goboMove.play();
    alienWaitTimeReset[4]=0;
    gobo++;
    if (gobo==4) {
      alerts[4]=1;
      someoneMoved(11);
      SomeoneVentedG.play();
    }
    if (gobo==5&&camera==false||newNano==5) {
      goboMove.stop();
      gobo=4;
      SomeoneVentedG.stop();
      alienWaitTimeReset[4]=1;
    }
    if (gobo==1) {
      someoneMoved(10);
    }
    if (gobo==5) {
      someoneMoved(11);
      if (currentDay<7) {
        randomint[3]=(int)random(1, (13-currentDay));
      } else {
        if (customDay[4]<5) {
          randomint[3]=(int)random(1, 11);
        } else if (customDay[4]<10) {
          randomint[3]=(int)random(1, 8);
        } else {
          randomint[3]=(int)random(1, 5);
        }
      }
    }
  }
  if (gobo>6) {
    gobo=7;
    whoj="Giga";
    gameStage=7;
  }
}
void teraAI() {
  if (alienWaitTimeReset[5]==0) {
    alienWaitTimeReset[5]=1;
    currentSeconds[5]=ingameSeconds;
    if (currentDay==1||currentDay==2) {
      alienWaitTime[5]=300000;
    } 
    if (currentDay==3) {
      alienWaitTime[5]=(int)random(900, 2100);
    } 
    if (currentDay==4) {
      alienWaitTime[5]=(int)random(600, 1800);
    }
    if (currentDay==5) {
      alienWaitTime[5]=(int)random(600, 1200);
    }
    if (currentDay==6) {
      alienWaitTime[5]=(int)random(600, 900);
    }
    if (currentDay==7) {
      if (customDay[6]==0) {
        alienWaitTime[5]=(int)random(7777777, 8888888);
      } else if (customDay[6]==1) {
        alienWaitTime[5]=(int)random(1800, 3720);
      } else if (customDay[6]==2) {
        alienWaitTime[5]=(int)random(1620, 3120);
      } else if (customDay[6]==3) {
        alienWaitTime[5]=(int)random(1320, 2220);
      } else if (customDay[6]==4) {
        alienWaitTime[5]=(int)random(1080, 1920);
      } else if (customDay[6]==5) {
        alienWaitTime[5]=(int)random(900, 1500);
      } else if (customDay[6]==6) {
        alienWaitTime[5]=(int)random(600, 1200);
      } else if (customDay[6]==7) {
        alienWaitTime[5]=(int)random(480, 960);
      } else if (customDay[6]==8) {
        alienWaitTime[5]=(int)random(360, 840);
      } else if (customDay[6]==9) {
        alienWaitTime[5]=(int)random(300, 720);
      } else if (customDay[6]==10) {
        alienWaitTime[5]=(int)random(240, 360);
      }
    }
    if (tera==5) {
      alienWaitTime[5]=0;
    }
  }
  if (ingameSeconds>currentSeconds[5]+alienWaitTime[5]) {
    alienWaitTimeReset[5]=0;
    tera++;
    if (tera==1) {
      if (camLeftOff==6||camLeftOff==2) {
        someoneMoved(6);
        someoneMoved(2);
      }
    }
    if (tera==2) {
      disableHallLight();
      someoneMoved(2);
    }
    if (tera==3) {
      alerts[5]=1;
      disableHallLight();
      someoneMoved(8);
    }
    if (tera==4) {
      someoneMoved(11);
      someoneMoved(8);
      SomeoneVentedT.play();
    }
    if (tera==6) {
      if (camera==false||someoneInOffice) {
        tera=5;
        alienWaitTimeReset[5]=1;
      } else {
        piconianTimer=1;
        tera=7;
      }
    }
    if (tera==7) {
      someoneMoved(11);
    }
  }
  if (tera>6) {
    alienWaitTimeReset[5]=0;
    currentSeconds[5]=ingameSeconds;
    if (tera>7) {
      tera=7;
    }
    someoneInOffice=true;
    if (camera==false&&cameraDown[5]==false) {
      beginBlackout();
      cameraDown[5]=true;
      piconianTimer=0;
      alerts[19]=ingameSeconds;
    }
    if (cameraDown[5]==true) {
      if (ingameSeconds==alerts[19]+57) {
        if (mask==true) {
          cameraDown[18]=true;
        } else {
          cameraDown[18]=false;
        }
      }
      if (camera==true&&cameraDown[5]==true) {
        if (deathTimer==0) {
          whoj="Tera";
          deathTimer=1;
        }
        deathTimer();
      }
      if (camera==false) {
        if (ingameSeconds>alerts[19]+240) {
          if (cameraDown[18]==false) {
            whoj="Tera";
            gameStage=7;
          }
          if (mask==true) {
            disableHallLight();
            tera=2;
            alerts[5]=0;
            cameraDown[5]=false;
            someoneInOffice=false;
            cameraDown[18]=false;
            alienWaitTimeReset[5]=0;
            piconianTimer=0;
          } else {
            whoj="Tera";
            gameStage=7;
          }
        }
      }
    }
  }
}
void nanoAI() {
  if (alienWaitTimeReset[6]==0) {
    alienWaitTimeReset[6]=1;
    currentSeconds[6]=ingameSeconds;
    if (currentDay==1||currentDay==2) {
      alienWaitTime[6]=1700000;
    } 
    if (currentDay==3) {
      alienWaitTime[6]=(int)random(1200, 2400);
    } 
    if (currentDay==4) {
      alienWaitTime[6]=(int)random(900, 1800);
    }
    if (currentDay==5) {
      alienWaitTime[6]=(int)random(900, 1500);
    }
    if (currentDay==6) {
      alienWaitTime[6]=(int)random(600, 900);
    }
    if (currentDay==7) {
      if (customDay[7]==0) {
        alienWaitTime[6]=31415926;
      } else if (customDay[7]==1) {
        alienWaitTime[6]=(int)random(1920, 3720);
      } else if (customDay[7]==2) {
        alienWaitTime[6]=(int)random(1800, 3330);
      } else if (customDay[7]==3) {
        alienWaitTime[6]=(int)random(1500, 2520);
      } else if (customDay[7]==4) {
        alienWaitTime[6]=(int)random(1260, 2160);
      } else if (customDay[7]==5) {
        alienWaitTime[6]=(int)random(1020, 1620);
      } else if (customDay[7]==6) {
        alienWaitTime[6]=(int)random(900, 1260);
      } else if (customDay[7]==7) {
        alienWaitTime[6]=(int)random(720, 1020);
      } else if (customDay[7]==8) {
        alienWaitTime[6]=(int)random(600, 900);
      } else if (customDay[7]==9) {
        alienWaitTime[6]=(int)random(480, 780);
      } else if (customDay[7]==10) {
        alienWaitTime[6]=(int)random(240, 360);
      }
    }
    if (nano==4) {
      alienWaitTime[6]=0;
    }
  }
  if (ingameSeconds>currentSeconds[6]+alienWaitTime[6]) {
    alienWaitTimeReset[6]=0;
    nano++;
    if (nano==1) {
      someoneMoved(6);
      someoneMoved(3);
    }
    if (nano==2) {
      alerts[6]=1;
      someoneMoved(4);
      someoneMoved(3);
    }
    if (nano==3) {
      SomeoneVentedN.play();
      someoneMoved(12);
      someoneMoved(4);
    }
    if (nano==5) {
      if (camera==false||someoneInOffice) {
        nano=4;
      } else {
        piconianTimer=1;
      }
    }
    if (nano==5) {
      someoneMoved(12);
    }
  }
  if (nano>4) {
    alienWaitTimeReset[6]=0;
    currentSeconds[6]=ingameSeconds;
    if (nano>5) {
      nano=5;
    }
    someoneInOffice=true;
    if (camera==false&&cameraDown[6]==false) {
      beginBlackout();
      cameraDown[6]=true;
      piconianTimer=0;
      alerts[19]=ingameSeconds;
    }
    if (cameraDown[6]==true) {
      if (ingameSeconds==alerts[19]+57) {
        if (mask==true) {
          cameraDown[17]=true;
        } else {
          cameraDown[17]=false;
        }
      }
      if (camera==true&&cameraDown[6]==true) {
        if (deathTimer==0) {
          whoj="Nano";
          deathTimer=1;
        }
        deathTimer();
      }
      if (camera==false) {
        if (ingameSeconds>alerts[19]+240) {
          if (cameraDown[17]==false) {
            whoj="Nano";
            gameStage=7;
          }
          if (mask==true) {
            nano=1;
            alerts[6]=0;
            cameraDown[6]=false;
            someoneInOffice=false;
            cameraDown[17]=false;
            alienWaitTimeReset[6]=0;
            piconianTimer=0;
          } else {
            whoj="Nano";
            gameStage=7;
          }
        }
      }
    }
  }
}
void gigaAI() {
  if (alienWaitTimeReset[7]==0) {
    currentSeconds[7]=ingameSeconds;
    alienWaitTimeReset[7]=1;
    if (currentDay==1) {
      alienWaitTime[7]=369741;
    }
    if (currentDay==2) {
      alienWaitTime[7]=(int)random(2100, 3000);
    }
    if (currentDay==3) {
      alienWaitTime[7]=(int)random(1800, 2400);
    }
    if (currentDay==4) {
      alienWaitTime[7]=(int)random(1680, 2100);
    }
    if (currentDay==5) {
      alienWaitTime[7]=(int)random(1560, 1800);
    }
    if (currentDay==6) {
      alienWaitTime[7]=(int)random(1440, 1800);
    }
    if (currentDay==7) {
      if (customDay[9]==0) {
        alienWaitTime[7]=59728935;
      } else if (customDay[9]==1) {
        alienWaitTime[7]=(int)random(3900, 4500);
      } else if (customDay[9]==2) {
        alienWaitTime[7]=(int)random(3330, 3840);
      } else if (customDay[9]==3) {
        alienWaitTime[7]=(int)random(2400, 3600);
      } else if (customDay[9]==4) {
        alienWaitTime[7]=(int)random(2160, 3330);
      } else if (customDay[9]==5) {
        alienWaitTime[7]=(int)random(1920, 2880);
      } else if (customDay[9]==6) {
        alienWaitTime[7]=(int)random(1680, 2400);
      } else if (customDay[9]==7) {
        alienWaitTime[7]=(int)random(1500, 2100);
      } else if (customDay[9]==8) {
        alienWaitTime[7]=(int)random(1200, 1680);
      } else if (customDay[9]==9) {
        alienWaitTime[7]=(int)random(1020, 1560);
      } else if (customDay[9]==10) {
        alienWaitTime[7]=(int)random(660, 1020);
      }
    }
    if (giga==2) {
      alienWaitTime[7]=900;
    }
    if (giga>2) {
      alienWaitTime[7]=0;
    }
  }
  if (ingameSeconds>currentSeconds[7]+alienWaitTime[7]) {
    alienWaitTimeReset[7]=0;
    if (giga==2) {
      giga++;
    }
    if (giga==1) {
      disableHallLight();
      if (flashCounter>0) {
        giga=-1;
        disableHallLight();
        someoneMoved(6);
        flashCounter=0;
      } else {
        giga=2;
      }
    }
    if (giga<1) {
      someoneMoved(6);
      disableHallLight();
      giga++;
    }
  }
  if (giga==2&&camera==false&&mask==false&&keyPressed&&key==CODED&&keyCode==CONTROL) {
    giga=3;
  }
  if (giga==3) {
    whoj="Giga";
    gameStage=7;
  }
  if (giga==0) {
    alerts[7]=0;
  } else {
    alerts[7]=1;
  }
}
void picoAI() {
  if (nano==0||tera==0) {
    currentSeconds[8]=ingameSeconds;
  }
  if (alienWaitTimeReset[8]==0) {
    alienWaitTimeReset[8]=1;
    currentSeconds[8]=ingameSeconds;
    if (currentDay==1||currentDay==2) {
      alienWaitTime[8]=1700000;
    } 
    if (currentDay==3) {
      alienWaitTime[8]=(int)random(2100, 3600);
    } 
    if (currentDay==4) {
      alienWaitTime[8]=(int)random(1200, 2700);
    }
    if (currentDay==5) {
      alienWaitTime[8]=(int)random(1200, 2100);
    }
    if (currentDay==6) {
      alienWaitTime[8]=(int)random(600, 1500);
    }
    if (currentDay==7) {
      if (customDay[8]==0) {
        alienWaitTime[8]=(int)random(9999999, 99999999);
      } else if (customDay[8]==1) {
        alienWaitTime[8]=(int)random(2400, 5400);
      } else if (customDay[8]==2) {
        alienWaitTime[8]=(int)random(1500, 4500);
      } else if (customDay[8]==3) {
        alienWaitTime[8]=(int)random(1800, 3330);
      } else if (customDay[8]==4) {
        alienWaitTime[8]=(int)random(1500, 2400);
      } else if (customDay[8]==5) {
        alienWaitTime[8]=(int)random(1200, 1920);
      } else if (customDay[8]==6) {
        alienWaitTime[8]=(int)random(900, 1680);
      } else if (customDay[8]==7) {
        alienWaitTime[8]=(int)random(720, 1320);
      } else if (customDay[8]==8) {
        alienWaitTime[8]=(int)random(600, 1080);
      } else if (customDay[8]==9) {
        alienWaitTime[8]=(int)random(420, 720);
      } else if (customDay[8]==10) {
        alienWaitTime[8]=(int)random(240, 360);
      }
    }
    if (pico==4) {
      alienWaitTime[8]=0;
    }
  }
  if (ingameSeconds>currentSeconds[8]+alienWaitTime[8]) {
    alienWaitTimeReset[8]=0;
    pico++;
    if (pico==1) {
      someoneMoved(6);
      someoneMoved(2);
    }
    if (pico==2) {
      alerts[8]=1;
      someoneMoved(2);
      someoneMoved(7);
    }
    if (pico==3) {
      someoneMoved(7);
      disableHallLight();
    }
    if (pico==5) {
      if (camera==false||someoneInOffice) {
        pico=4;
      } else {
        disableHallLight();
        piconianTimer=1;
      }
    }
  }
  if (pico>4) {
    alienWaitTimeReset[8]=1;
    currentSeconds[8]=ingameSeconds;
    if (pico>5) {
      pico=5;
    }
    someoneInOffice=true;
    if (camera==false&&cameraDown[8]==false) {
      beginBlackout();
      cameraDown[8]=true;
      piconianTimer=0;
      alerts[19]=ingameSeconds;
    }
    if (cameraDown[8]==true) {
      if (ingameSeconds==alerts[19]+57) {
        if (mask==true) {
          cameraDown[16]=true;
        } else {
          cameraDown[16]=false;
        }
      }
      if (camera==true&&cameraDown[8]==true) {
        if (deathTimer==0) {
          deathTimer=1;
          whoj="Pico";
        }
        deathTimer();
      }
      if (camera==false) {
        if (ingameSeconds>alerts[19]+240) {
          if (cameraDown[16]==false) {
            whoj="Pico";
            gameStage=7;
          }
          if (mask==true) {
            pico=1;
            alerts[8]=0;
            cameraDown[8]=false;
            someoneInOffice=false;
            cameraDown[16]=false;
            alienWaitTimeReset[8]=0;
            piconianTimer=0;
          } else {
            whoj="Pico";
            gameStage=7;
          }
        }
      }
    }
  }
}
void goldenCatAI() {
  if (camera==true&&alienWaitTimeReset[9]==0) {
    if (currentDay<6) {
      alienWaitTime[9]=600000;
    }
    if (currentDay==6) {
      alienWaitTime[9]=(int)random(360, 720);
    }
    if (currentDay==7) {
      if (customDay[10]==0) {
        alienWaitTime[9]=999999;
      } else if (customDay[10]==1) {
        alienWaitTime[9]=(int)random(900, 1200);
      } else if (customDay[10]==2) {
        alienWaitTime[9]=(int)random(720, 1020);
      } else if (customDay[10]==3) {
        alienWaitTime[9]=(int)random(600, 840);
      } else if (customDay[10]==4) {
        alienWaitTime[9]=(int)random(480, 660);
      } else if (customDay[10]==5) {
        alienWaitTime[9]=(int)random(300, 600);
      } else if (customDay[10]==6) {
        alienWaitTime[9]=(int)random(180, 600);
      } else if (customDay[10]==7) {
        alienWaitTime[9]=(int)random(120, 480);
      } else if (customDay[10]==8) {
        alienWaitTime[9]=(int)random(120, 360);
      } else if (customDay[10]==9) {
        alienWaitTime[9]=(int)random(60, 300);
      } else if (customDay[10]==10) {
        alienWaitTime[9]=0;
      }
    }
    alienWaitTimeReset[9]=1;
    currentSeconds[9]=ingameSeconds;
  }
  if (camera==false&&alienWaitTimeReset[9]==1) {
    alienWaitTimeReset[9]=0;
    if (ingameSeconds>currentSeconds[9]+alienWaitTime[9]&&someoneInOffice==false) {
      goldenAlien2=1;
      maskTimer[18]=1;
    }
  }
  if (maskTimer[18]>0) {
    maskTimer[18]++;
  }
  if (goldenAlien2==0) {
    maskTimer[19]=0;
  } else {
    maskTimer[19]++;
  }
  if (mask==true) {
    goldenAlien2=0;
  }
  if (maskTimer[19]>57||goldenAlien2==2) {
    goldenAlien2=2;
    whoj="GS";
    gameStage=7;
  }
  if (ingameSeconds>currentSeconds[9]+120&&camera==true) {
    goldenAlienChance=0;
    flashCounter2=0;
  }
  if (beforeFlashlight==false&&flashlight==true&&goldenAlienChance!=1) {
    if (currentDay<6) {
      goldenAlienChance=6969;
    }
    if (currentDay==6) {
      goldenAlienChance=(int)random(1, 30);
    }
    if (currentDay==7) {
      if (customDay[10]==0) {
        goldenAlienChance=-6969;
      } else if (customDay[10]<5) {
        goldenAlienChance=(int)random(1, 45-(5*customDay[10]));
      } else if (customDay[10]<10) {
        goldenAlienChance=(int)random(1, 39-(4*customDay[10]));
      } else {
        goldenAlienChance=1;
      }
    }
  }
  if (newPico==3||newPico==4||giga==1||newPico==2||pico==3||newGiga==3||tera==2) {
    goldenAlienChance=0;
    flashCounter2=0;
  }
  if (flashCounter2>40&&currentDay==6) {
    whoj="GS";
    gameStage=7;
  } 
  if (currentDay==7) {
    if (customDay[10]<2) {
      if (flashCounter2>120) {
        whoj="GS";
        gameStage=7;
      }
    } else if (customDay[10]<4) {
      if (flashCounter2>80) {
        whoj="GS";
        gameStage=7;
      }
    } else if (customDay[10]<6) {
      if (flashCounter2>40) {
        whoj="GS";
        gameStage=7;
      }
    } else if (customDay[10]<8) {
      if (flashCounter2>35) {
        whoj="GS";
        gameStage=7;
      }
    } else {
      if (flashCounter2>30) {
        whoj="GS";
        gameStage=7;
      }
    }
  }
}
void makeNewPico(float size, int x, int y, float shade, boolean smile, boolean leg) {
  strokeWeight(10*size);
  stroke(237*shade, 141*shade, 50*shade);
  if (leg) {
    line(x-100*size*cos(4*PI/3), y-100*size*sin(4*PI/3), x-100*size*cos(4*PI/3), y-100*size*sin(4*PI/3)+100*size);
    line(x-100*size*cos(5*PI/3), y-100*size*sin(5*PI/3), x-100*size*cos(5*PI/3), y-100*size*sin(5*PI/3)+100*size);
  }
  fill(237*shade, 141*shade, 50*shade);
  noStroke();
  ellipse(x, y, 200*size, 200*size);
  fill(255*shade);
  arc(x, y, 200*size, 200*size, 0, PI);
  arc(x, y, 200*size, 100*size, PI, 2*PI);
  fill(0);
  ellipse(x-50*size, y-20*size, 24*size, 24*size);
  ellipse(x+30*size, y-20*size, 24*size, 24*size);
  fill(255);
  ellipse(x-50*size, y-20*size, 16*size, 16*size);
  ellipse(x+30*size, y-20*size, 16*size, 16*size);
  fill(0, 200*shade, 0);
  ellipse(x-50*size, y-20*size, 9*size, 9*size);
  ellipse(x+30*size, y-20*size, 9*size, 9*size);
  fill(255*shade, 0, 0);
  ellipse(x-63*size, y+26*size, 20*size, 20*size);
  ellipse(x+50*size, y+20*size, 20*size, 20*size);
  if (!smile) {
    noFill();
    strokeWeight(3*size);
    stroke(0);
    arc(x-10*size, y, 200*size/2, 200*9*size/20, PI/4, 5*PI/7);
  } else {
    fill(255);
    strokeWeight(3*size);
    stroke(0);
    arc(x-6*size, y+58*2/3*size, size*2/3*140, size*2/3*135, 0, PI);
    arc(x-6*size, y+58*2/3*size, size*2/3*140, size*2/3*20, PI, 2*PI);
  }
  noFill();
  noStroke();
}
void makeNewTera(float size, int x, int y, float shade, int size2, int eyeState, boolean smile, boolean leg) { 
  strokeWeight(10*size);
  stroke(138*shade, 43*shade, 226*shade);
  if (leg) {
    line(x-100*size*cos(4*PI/3), y-100*size*sin(4*PI/3), x-100*size*cos(4*PI/3), y-100*size*sin(4*PI/3)+100*size);
    line(x-100*size*cos(5*PI/3), y-100*size*sin(5*PI/3), x-100*size*cos(5*PI/3), y-100*size*sin(5*PI/3)+100*size);
  }
  fill(138*shade, 43*shade, 226*shade);
  stroke(0);
  noStroke();
  ellipse(x, y, 200*size, 200*size);
  fill(255*shade);
  arc(x, y, 200*size, 200*size, 0, PI);
  triangle(x-100*size, y, x-14*size, y-62*size, x+100*size, y);
  if (eyeState==0) {
    fill(0);
    ellipse(x-50*size, y-20*size, 15*size, 15*size);
    ellipse(x+30*size, y-20*size, 15*size, 15*size);
    fill(255);
    ellipse(x-50*size, y-20*size, 10*size, 10*size);
    ellipse(x+30*size, y-20*size, 10*size, 10*size);
    fill(200*shade, 0, 0);
    ellipse(x-50*size, y-20*size, 5*size, 5*size);
    ellipse(x+30*size, y-20*size, 5*size, 5*size);
  } else if (eyeState==1) {
    fill(0);
    ellipse(x-50*size, y-20*size, 20*size, 20*size);
    ellipse(x+30*size, y-20*size, 20*size, 20*size);
    fill(255);
    ellipse(x-50*size, y-20*size, 10*size, 10*size);
    ellipse(x+30*size, y-20*size, 10*size, 10*size);
    fill(200*shade, 0, 0);
  } else if (eyeState==2) {
    noFill();
    strokeWeight(size*5);
    stroke(0);
    arc(x-50*size, y-20*size, 10*size, 10*size, PI, 2*PI);
    arc(x+30*size, y-20*size, 10*size, 10*size, PI, 2*PI);
  }
  noStroke();
  fill(255*shade, 192*shade, 203*shade);
  ellipse(x-70*size, y+15*size, 15*size*size2, 15*size*size2);
  ellipse(x+50*size, y+15*size, 15*size*size2, 15*size*size2);
  if (!smile) {
    noFill();
    strokeWeight(size*3);
    stroke(0);
    arc(x-10*size, y, size*100, size*90, PI/4, 3*PI/4);
  } else {
    fill(255);
    strokeWeight(size*5);
    stroke(0);
    arc(x-6*size, y+58*2/3*size, size*2/3*140, size*2/3*135, 0, PI);
    arc(x-6*size, y+58*2/3*size, size*2/3*140, size*2/3*20, PI, 2*PI);
  }
  noFill();
  noStroke();
}
void makeNewGiga(float size, int x, int y, float shade, boolean holder) {
  if (holder) {
    makeNewGigaHolder(size, x, y, shade);
  }
  strokeWeight(3*size);
  stroke(0);
  fill(255*shade);
  ellipse(x, y, 200*size, 200*size);
  fill(200*shade);
  stroke(0);
  strokeWeight(3*size);
  arc(x, y, 160*size, 200*size, 0, PI);
  arc(x+20*size, y, 100*size, 50*size, PI+18*PI/45, 2*PI);
  noStroke();
  triangle(x-80*size, y, x-50*size, y-20*size, x+20*size, y);
  stroke(0);
  strokeWeight(3*size);
  line(x+20*size, y, x+3*size, y-24*size);
  line(x+70*size, y, x+80*size, y);
  line(x-80*size, y, x-50*size, y-20*size);
  line(x-50*size, y-20*size, x+20*size, y);
  strokeWeight(5*size);
  noFill();
  arc(x-30*size, y+30*size, 40*size, 20*size, 5*PI/4, 7*PI/4);
  arc(x+40*size, y+30*size, 40*size, 20*size, 5*PI/4, 7*PI/4);
  point(x-47*size, y+18*size);
  point(x-40*size, y+16*size);
  point(x+50*size, y+16*size);
  point(x+56*size, y+18*size);
  noStroke();
  fill(255*shade, 192*shade, 203*shade);
  ellipse(x-50*size, y+45*size, 20*size, 20*size);
  ellipse(x+60*size, y+45*size, 20*size, 20*size);
  fill(50/shade);
  noStroke();
  arc(x+5*size, y+58*2/3*size, size*2/3*100, size*2/3*120, 0, PI);
  arc(x+5*size, y+58*2/3*size, size*2/3*100, size*2/3*20, PI, 2*PI);
  stroke(0);
  noFill();
  strokeWeight(5*size);
  line(x-5*size, y-66*size, x+55*size, y-66*size);
  line(x-5*size, y-48*size, x+55*size, y-48*size);
  strokeWeight(8*size);
  line(x-10*size, y-58*size, x+60*size, y-58*size);
  strokeWeight(5*size);
  stroke(255*shade);
  line(x+4*size, y-71*size, x+36*size, y-42*size);
}
void makeNewGigaHolder(float size, int x, int y, float shade) {
  noFill();
  strokeWeight(10*size);
  stroke(0, 0, 255*shade);
  line(x-96*size, y-34*size, x-82*size, y-7*size);
  line(x+58*size, y-61*size, x+32*size, y-31*size);
  line(x+69*size, y-56*size, x+54*size, y-36*size);
  noFill();
  strokeWeight(10*size);
  stroke(0);
  line(x-317*size, y-289*size, x-79*size, y-289*size);
  line(x-64*size, y-178*size, x+219*size, y-313*size);
  strokeWeight(5*size);
  line(x-290*size, y-161*size, x-77*size, y-255*size);
  line(x-86*size, y-328*size, x+181*size, y-162*size);
  strokeWeight(30*size);
  stroke(125*shade);
  line(x-96*size, y-37*size, x-317*size, y-175*size);
  line(x-317*size, y-175*size, x-317*size, y-391*size);
  line(x-317*size, y-333*size, x-88*size, y-333*size);
  line(x-88*size, y-333*size, x-48*size, y-92*size);
  line(x+70*size, y-69*size, x+229*size, y-178*size);
  line(x+229*size, y-178*size, x+229*size, y-391*size);
  strokeWeight(3*size);
  stroke(0);
  fill(255*shade);
  quad(x-168*size, y-287*size, x-138*size, y-287*size, x-131*size, y-233*size, x-157*size, y-218*size);
  strokeWeight(5*size);
  ellipse(x+57*size, y-238*size, 125*size, 125*size);
  fill(200*shade);
  ellipse(x+78, y-257, 69*size, 69*size);
}
void makeNewNano(float size, int x, int y, float shade, int eyelids, boolean smile, boolean leg) {
  strokeWeight(10*size);
  stroke(139*shade, 69*shade, 19*shade);
  if (leg) {
    line(x-100*size*cos(4*PI/3), y-100*size*sin(4*PI/3), x-100*size*cos(4*PI/3), y-100*size*sin(4*PI/3)+100*size);
    line(x-100*size*cos(5*PI/3), y-100*size*sin(5*PI/3), x-100*size*cos(5*PI/3), y-100*size*sin(5*PI/3)+100*size);
  }
  fill(139*shade, 69*shade, 19*shade);
  noStroke();
  ellipse(x, y, size*200, size*200);
  fill(255*shade);
  ellipse(x, y, 180*size, size*120);
  fill(139*shade, 69*shade, 19*shade);
  triangle(x-70*size, y-50*size, x-9*size, y-29*size, x-27*size, y-64*size);
  triangle(x-23*size, y-64*size, x+7*size, y-48*size, x+3*size, y-67*size);
  noFill();
  if (eyelids==0) {
    strokeWeight(5*size);
    stroke(0);
    arc(x-50*size, y, 40*size, size*10, 6.5*PI/5, 8.5*PI/5);
    arc(x+50*size, y, size*40, 10*size, 6.5*PI/5, 8.5*PI/5);
  } else if (eyelids==1) {
    strokeWeight(5*size);
    stroke(0);
    arc(x-50*size, y, 40*size, size*10, 6.5*PI/5, 8.5*PI/5);
    arc(x+50*size, y, size*40, 10*size, 6.5*PI/5, 8.5*PI/5);
    noStroke();
    fill(255);
    ellipse(x-50*size, y-5*size, 3*size, 3*size);
    ellipse(x+50*size, y-5*size, 3*size, 3*size);
  } else if (eyelids==2) {
    strokeWeight(5*size);
    stroke(255);
    arc(x-50*size, y, 40*size, size*10, 6.5*PI/5, 8.5*PI/5);
    arc(x+50*size, y, size*40, 10*size, 6.5*PI/5, 8.5*PI/5);
  }
  noStroke();
  noFill();
  if (!smile) {
    strokeWeight(size*3);
    stroke(0);
    arc(x, y, size*100, size*90, PI/4, 3*PI/4);
  } else {
    fill(255);
    stroke(0);
    arc(x, y+30*2/3*size, size*80, size*70, 0, PI);
    arc(x, y+30*2/3*size, size*80, size*10, PI, 2*PI);
  }
  noFill();
  noStroke();
}
void makePuppet(float size, int x, int y, float shade, boolean body, boolean col) {
  strokeWeight(20*size);
  stroke(0);
  if (body) {
    line(x, y+60*size/1.5, x+130*size/1.5, y+20*size/1.5);
    line(x, y+60*size/1.5, x-130*size/1.5, y+20*size/1.5);
    line(x, y+60*size/1.5, x, y+220*size/1.5);
    line(x, y+220*size/1.5, x+130*size/1.5, y+320*size/1.5);
    line(x, y+220*size/1.5, x-130*size/1.5, y+320*size/1.5);
  }
  noStroke();
  fill(255*shade);
  ellipse(x, y, 100*size, 200*size);
  noFill();
  strokeWeight(5*size);
  stroke(0, 125*shade, 0);
  line(x-20*size, y-36*size, x-20*size, y+20*size);
  line(x+20*size, y-36*size, x+20*size, y+20*size);
  stroke(255*shade, 0, 255*shade);
  line(x-10*size, y+44*size, x-10*size, y+98*size);
  line(x+10*size, y+44*size, x+10*size, y+98*size);
  fill(150*shade, 150*shade, 0);
  noStroke();
  makeStar(x, y-75*size, 20*size, 10*size);
  if (!col) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(x-20*size, y-40*size, 30*size, 20*size);
  ellipse(x+20*size, y-40*size, 30*size, 20*size);
  arc(x, y+20*size, 75*size, 10*size, PI, 2*PI);
  arc(x, y+20*size, 75*size, 70*size, 0, PI);
  fill(255*shade, 0, 0);
  ellipse(x-38*size, y-12*size, 30, 30);
  ellipse(x+38*size, y-12*size, 30, 30);
}
void makeGoldenAlien(float size, int x, int y, float shade, boolean smile, boolean legs) {
  strokeWeight(10*size);
  stroke(255*shade, 255*shade, 0);
  if (legs) {
    line(x-100*size*cos(4*PI/3), y-100*size*sin(4*PI/3), x-100*size*cos(4*PI/3), y-100*size*sin(4*PI/3)+100*size);
    line(x-100*size*cos(5*PI/3), y-100*size*sin(5*PI/3), x-100*size*cos(5*PI/3), y-100*size*sin(5*PI/3)+100*size);
  }
  fill(255*shade, 255*shade, 0);
  noStroke();
  ellipse(x, y, 200*size, 200*size);
  fill(255*shade);
  arc(x, y, 200*size, 200*size, 0, PI);
  arc(x, y, 200*size, 100*size, PI, 2*PI);
  fill(0);
  ellipse(x-50*size, y-20*size, 24*size, 24*size);
  ellipse(x+30*size, y-20*size, 24*size, 24*size);
  if (!smile) {
    noFill();
    strokeWeight(3*size);
    stroke(0);
    line(x-50*size, y+40*size, x+30*size, y+40*size);
  } else {
    fill(255*shade);
    strokeWeight(3*size);
    stroke(0);
    arc(x-6*size, y+58*2/3*size, size*2/3*140, size*2/3*135, 0, PI);
    arc(x-6*size, y+58*2/3*size, size*2/3*140, size*2/3*20, PI, 2*PI);
  }
  fill(0);
  strokeWeight(0);
  ellipse(x-43*size, y-65*size, size*20, size*40);
  strokeWeight(7*size);
  stroke(255*shade, 255*shade, 0);
  line(x-54*size, y-57*size, x-34*size, y-60*size);
  strokeWeight(4*size);
  line(x-53*size, y-73*size, x-34*size, y-77*size);
  noFill();
  noStroke();
}
