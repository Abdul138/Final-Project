import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//Global Variables
//Music
Minim minim;
AudioPlayer song1;
AudioMetaData songMetaDate1;
AudioPlayer soundEffect;
AudioMetaData soundMetaDateEffect;
boolean music = false;

//Paper Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
//Circle Drawing Variables
float drawingDiameter;
//
float colorTemplateX, colorTemplateY, colorTemplateWidth, colorTemplateHeight;
float redColorX, redColorY, redColorWidth, redColorHeight;
float yellowColorX, yellowColorY, yellowColorWidth, yellowColorHeight;
float greenColorX, greenColorY, greenColorWidth, greenColorHeight;
float blueColorX, blueColorY, blueColorWidth, blueColorHeight;
float blackColorX, blackColorY, blackColorWidth, blackColorHeight;
float purpleColorX, purpleColorY, purpleColorWidth, purpleColorHeight ;
float eraserTemplateX, eraserTemplateY, eraserTemplateWidth, eraserTemplateHeight; 
float eraserX, eraserY, eraserDiameter;
float addDiameterX, addDiameterY, addDiameterWidth, addDiameterHeight;
float minusDiameterX, minusDiameterY, minusDiameterWidth, minusDiameterHeight;
float jukeboxX, jukeboxY, jukeboxWidth, jukeboxHeight;
float pauseX, pauseY, pauseWidth, pauseHeight;
float playX, playY, playWidth, playHeight;
float stopX, stopY, stopWidth, stopHeight;
float rewindX, rewindY, rewindWidth, rewindHeight;
float forwardX, forwardY, forwardWidth, forwardHeight;
float plusPenSizeX, plusPenSizeY, plusPenSizeWidth, plusPenSizeHeight;
float minusPenSizeX, minusPenSizeY, minusPenSizeWidth, minusPenSizeHeight;
float drawingToolX, drawingToolY, drawingToolWidth, drawingToolHeight; 
float choseImageX, choseImageY, choseImageWidth, choseImageHeight;
//
String redColor = "Red.", yellowColor = "Yellow.", greenColor = "Green.", blueColor = "Blue.", blackColor = "Black", purpleColor = "Purple", eraserName = "Eraser", addName = "Increase Size", minusName = "Decrease Size";
String jukeBox = "JukeBox";
String clickPlay = "Play", clickPause = "Pause", clickStop = "Stop", clickForward = "Fasforward", clickRewind = "Rewind";
String plusPen = "+ Pen size", minusPen = "- Pen size";
String penStyle = "Switch to Line Coloring";
String switchImage = ("Click to switch image");
Boolean draw = false;
color colorChoice;
color grey = #837A83 ;
color eraserColor = #00EAC9;
color jukeboxColor = #A7CAFF;
color minusSize =#AAEA66;
color plusSize = #5985A0;
color drawingColor = #E3C485;
//
float colorX, colorY, colorWidth, colorHeight;
//String colorChoice = "Colors";
color black = #000000;
color yellow=#FFFF00;
color resetWhite = #FFFFFF;
color buttonFill;
color red = #FF0000, blue = #0000FF, green = #00FF00, purple = #FF00FF;
Boolean isRed = false, isYellow = false, isGreen = false, isBlue = false, isBlack = true, isPurple = false;
Boolean lineDrawing = false;
Boolean ellipseDrawing = true;
Boolean isEraser = false;
Boolean isJukebox = false;

int penSize = 1;


//
void setup() {
  background(grey);
  minim = new Minim(this);
  song1 = minim.loadFile("song1.mp3");
  songMetaDate1 = song1.getMetaData();
  
  soundEffect = minim.loadFile("soundEffect.mp3");
  
  
  
  //Display Checker
  //Display Oreintation Checker
  //Display and CANVAS Checker
  size (600, 700); //Landscape (Portrait or Square)
  //
  //Population
  drawingSurfaceX = width*0; // Should use appWidth and appHeight Instead
  drawingSurfaceY = height*0;
  drawingSurfaceWidth =  width*3/4; 
  drawingSurfaceHeight = height*4/5;
  drawingDiameter = width*1/100;
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //
  //colorX = width*4/5;
  //colorY = height*1/10; 
  //colorWidth = width * 1/6;
  //colorHeight = height* 1/15;
  //
  //colorTemplateX = width*3/5 ;
  //colorTemplateY = height*1/12;
  //colorTemplateWidth = width*1/4 ;
  //colorTemplateHeight = height* 1/12 ;

  redColorX = width*12/16 +3 ;
  redColorY = height*1/10 ;
  redColorWidth = width*2/16-5 ;
  redColorHeight = height*1/15;
  //

  yellowColorX = width*14/16+2;
  yellowColorY = height*1/10;
  yellowColorWidth = width*2/16-5 ;
  yellowColorHeight = height*1/15 ;
  //
  greenColorX = width*12/16 +3;
  greenColorY = height*2/10;
  greenColorWidth = width*2/16-5;
  greenColorHeight = height*1/15;
  ////
  blueColorX = width*14/16+2;
  blueColorY = height*2/10;
  blueColorWidth =width*2/16-5 ;
  blueColorHeight = height*1/15;
  //
  blackColorX = width*12/16 +3 ;
  blackColorY = height*3/10;
  blackColorWidth = width*2/16-5 ;
  blackColorHeight = height*1/15;
  //
  purpleColorX = width*14/16 +3 ;
  purpleColorY = height*3/10;
  purpleColorWidth = width*2/16-5 ;
  purpleColorHeight = height*1/15;
  //
  eraserTemplateX = width*12/16 +3;
  eraserTemplateY = height*4/10 ;
  eraserTemplateWidth = width*4/16 - 8 ;
  eraserTemplateHeight = height*1/15;
  //
  //
  eraserX = mouseX;
  eraserY = mouseY;
  eraserDiameter = width*1/40 ;
  
  addDiameterX = width*12/16 +3 ;
  addDiameterY = height*5/10 -20 ; 
  addDiameterWidth = width*2/16-5 ; 
  addDiameterHeight = height*1/18;
  minusDiameterX = width*14/16 +3 ;
  minusDiameterY = height*5/10 - 20; 
  minusDiameterWidth = width*2/16-5 ; 
  minusDiameterHeight = height*1/18;
  //Line or elipse

  //Jukeboxes
  jukeboxX = width*12/16 +3;
  jukeboxY = height*6/10 - 40;
  jukeboxWidth = width*4/16 - 8 ;
  jukeboxHeight = height*2/15;
  //
  //Play, stop, pause, fasforward, rewind
  playX = width*12/16 +3;
  playY = height *7/10 - 15;
  playWidth = width*2/16-5 ;
  playHeight = height*1/18;
  
  pauseX = width*14/16 +3;
  pauseY = height *7/10 - 15;
  pauseWidth = width*2/16-5 ;
  pauseHeight = height*1/18;
   
  rewindX = width*12/16 +3;
  rewindY = height *8/10 - 40;
  rewindWidth = width*2/16-5 ;
  rewindHeight = height*1/18;
  
  forwardX = width*14/16 +3;
  forwardY = height *8/10 - 40;
  forwardWidth = width*2/16-5 ;
  forwardHeight = height*1/18;
  
  stopX = width*13/16 ;
  stopY = height *8.5/10 - 35;
  stopWidth = width*3/16 - 25 ;
  stopHeight = height*1/18;
  //
  //Pensize + or -
  plusPenSizeX = width*12/16 +3 ;
  plusPenSizeY = height*1/25 -10;
  plusPenSizeWidth = width*2/16-5 ;
  plusPenSizeHeight = height*1/18;
  //
  minusPenSizeX = width*14/16+2 ;
  minusPenSizeY = height*1/25 -10;
  minusPenSizeWidth = width*2/16-5 ;
  minusPenSizeHeight = height*1/18;
  //
  drawingToolX = width* 1/15 - 20 ; 
  drawingToolY = height*4/5 + 10;
  drawingToolWidth = width*1/4+5 ;
  drawingToolHeight = height*1/16 ;
  
  
  choseImageX =  width* 2/5 - 10 ;
  choseImageY = height*4/5 + 10;
  choseImageWidth = width*1/4+5;
  choseImageHeight =  height*1/16;
  
  preload();
  //image(flower,drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight );
  
} //End setup
//
void draw () {
  
  if ( mouseX>redColorX && mouseX<redColorX+redColorWidth && mouseY>redColorY && mouseY<redColorY+redColorHeight ) {
    buttonFill = red;
  } else {
    buttonFill = resetWhite;
  }
  fill(buttonFill);
  rect(redColorX, redColorY, redColorWidth, redColorHeight);
  fill(black);
  textAlign(CENTER, CENTER);
  text(redColor, redColorX, redColorY, redColorWidth, redColorHeight);
  fill(resetWhite);

  if ( mouseX>yellowColorX && mouseX<yellowColorX+yellowColorWidth && mouseY>yellowColorY && mouseY<yellowColorY+yellowColorHeight ) {
    buttonFill = yellow;
  } else {
    buttonFill = resetWhite;
  }
  fill(buttonFill);    
  rect(yellowColorX, yellowColorY, yellowColorWidth, yellowColorHeight);
  fill(black);
  textAlign(CENTER, CENTER);        
  text(yellowColor, yellowColorX, yellowColorY, yellowColorWidth, yellowColorHeight);
  fill(resetWhite);

  if ( mouseX>greenColorX && mouseX<greenColorX+greenColorWidth && mouseY>greenColorY && mouseY<greenColorY+greenColorHeight ) {
    buttonFill = green;
  } else {
    buttonFill = resetWhite;
  }
  fill(buttonFill);
  rect(greenColorX, greenColorY, greenColorWidth, greenColorHeight);  
  fill(black);
  textAlign(CENTER, CENTER);    
  text(greenColor, greenColorX, greenColorY, greenColorWidth, greenColorHeight);
  fill(resetWhite);

  if ( mouseX>blueColorX && mouseX<blueColorX+blueColorWidth && mouseY>blueColorY && mouseY<blueColorY+blueColorHeight ) {
    buttonFill = blue;
  } else {
    buttonFill = resetWhite;
  }
  fill(buttonFill);
  rect(blueColorX, blueColorY, blueColorWidth, blueColorHeight);
  textAlign(CENTER, CENTER);
  fill(black);   
  text(blueColor, blueColorX, blueColorY, blueColorWidth, blueColorHeight );
  fill(resetWhite);

  if ( mouseX>blackColorX && mouseX<blackColorX+blackColorWidth && mouseY>blackColorY && mouseY<blackColorY+blackColorHeight ) {
    buttonFill = black;
    fill(buttonFill);
    rect(blackColorX, blackColorY, blackColorWidth, blackColorHeight);
    textAlign(CENTER, CENTER); 
    fill(resetWhite);    
    text(blackColor, blackColorX, blackColorY, blackColorWidth, blackColorHeight);
  } else {
    buttonFill = resetWhite; 
    rect(blackColorX, blackColorY, blackColorWidth, blackColorHeight);
    textAlign(CENTER, CENTER);
    fill(black);
    text(blackColor, blackColorX, blackColorY, blackColorWidth, blackColorHeight);
  }



  if ( mouseX>purpleColorX && mouseX<purpleColorX+purpleColorWidth && mouseY>purpleColorY && mouseY<purpleColorY+purpleColorHeight ) {
    buttonFill = purple;
  } else {
    buttonFill = resetWhite;
  }
  fill(buttonFill);
  rect(purpleColorX, purpleColorY, purpleColorWidth, purpleColorHeight);
  textAlign(CENTER, CENTER);
  fill(black);   
  text(purpleColor, purpleColorX, purpleColorY, purpleColorWidth, purpleColorHeight );
  fill(resetWhite);

  
  //ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter); // Circle Drawing tool

  //fill(buttonFill);
  if (draw == true && mouseX> drawingSurfaceX  && mouseX <drawingSurfaceX + drawingSurfaceWidth && mouseY> drawingSurfaceY && mouseY < drawingSurfaceY +drawingSurfaceHeight) { 
    if (isEraser == false) {
      if(lineDrawing == true){
        strokeWeight(penSize);
        stroke(colorChoice);
        line (mouseX, mouseY, pmouseX, pmouseY);
        stroke(black);
        strokeWeight(1);
        penStyle = "Switch to Ellipse Coloring";
      }
      else if(ellipseDrawing == true){
        noStroke();
        fill(colorChoice);
        ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
        penStyle = "Switch to Line Coloring";
        stroke(black);
        strokeWeight(1);
      }
    }
  } else if (isEraser == true  ) { 
    if (mouseX> drawingSurfaceX  && mouseX <drawingSurfaceX + drawingSurfaceWidth && mouseY> drawingSurfaceY && mouseY < drawingSurfaceY +drawingSurfaceHeight) {
      fill(255);
      //strokeWeight(2);
      noStroke();
      ellipse(mouseX, mouseY, eraserDiameter, eraserDiameter);
      fill(resetWhite);        
      strokeWeight(1);
    }
  } 

  //if(mouseX >drawingSurfaceX + drawingSurfaceWidth && mouseY > drawingSurfaceY +drawingSurfaceHeight){
  //  background(grey);
  //}


  if ( mouseX>eraserTemplateX && mouseX<eraserTemplateX+eraserTemplateWidth && mouseY>eraserTemplateY && mouseY<eraserTemplateY+eraserTemplateHeight ) {
    buttonFill = eraserColor;
  } else {
    buttonFill = resetWhite;
  }
  fill(buttonFill);
  rect(eraserTemplateX, eraserTemplateY, eraserTemplateWidth, eraserTemplateHeight); 
  textAlign(CENTER, CENTER);
  fill(black); 
  textSize(20);
  text(eraserName, eraserTemplateX, eraserTemplateY, eraserTemplateWidth, eraserTemplateHeight);
  textSize(12);


  if ( mouseX>addDiameterX && mouseX<addDiameterX+addDiameterWidth && mouseY>addDiameterY && mouseY<addDiameterY+addDiameterHeight ) {
    buttonFill = eraserColor;
  } else {
    buttonFill = resetWhite;
  }
  fill(buttonFill);
  rect(addDiameterX, addDiameterY, addDiameterWidth, addDiameterHeight); 
  textAlign(CENTER, CENTER);
  fill(black); 
  textSize(10);
  text(addName, addDiameterX, addDiameterY, addDiameterWidth, addDiameterHeight);
  textSize(12);

  if ( mouseX>minusDiameterX && mouseX<minusDiameterX+minusDiameterWidth && mouseY>minusDiameterY && mouseY<minusDiameterY+minusDiameterHeight ) {
    buttonFill = eraserColor;
  } else {
    buttonFill = resetWhite;
  }
  
  fill(buttonFill);
  rect(minusDiameterX, minusDiameterY, minusDiameterWidth, minusDiameterHeight); 
  textAlign(CENTER, CENTER);
  fill(black); 
  textSize(10);
  text(minusName, minusDiameterX, minusDiameterY, minusDiameterWidth, minusDiameterHeight);
  textSize(12);
  fill(resetWhite);
  //
  if (mouseX>jukeboxX && mouseX<jukeboxX+jukeboxWidth && mouseY>jukeboxY && mouseY<jukeboxY+jukeboxHeight ) {
    buttonFill = jukeboxColor;
  } else {
    buttonFill = resetWhite;
  }
  fill(buttonFill);
  rect(jukeboxX, jukeboxY, jukeboxWidth, jukeboxHeight); 
  textAlign(CENTER, CENTER);
  fill(black); 
  textSize(30);
  text(jukeBox, jukeboxX, jukeboxY, jukeboxWidth, jukeboxHeight);
  textSize(12);
  fill(resetWhite);
  
  
  if (mouseX>plusPenSizeX && mouseX<plusPenSizeX+plusPenSizeWidth && mouseY>plusPenSizeY && mouseY<plusPenSizeY+plusPenSizeHeight ) {
    buttonFill = plusSize;
  } else {
    buttonFill = resetWhite;
  }
  fill(buttonFill);
  textAlign(CENTER, CENTER);
  rect(plusPenSizeX, plusPenSizeY, plusPenSizeWidth, plusPenSizeHeight); 
  fill(black); 
  textSize(12);
  text(plusPen, plusPenSizeX, plusPenSizeY, plusPenSizeWidth, plusPenSizeHeight);
  fill(resetWhite);
   
  if (mouseX>minusPenSizeX && mouseX<minusPenSizeX+minusPenSizeWidth && mouseY>minusPenSizeY && mouseY<minusPenSizeY+minusPenSizeHeight ) {
    buttonFill = minusSize;
  } else {
    buttonFill = resetWhite;
  }
  fill(buttonFill); 
  rect(minusPenSizeX, minusPenSizeY, minusPenSizeWidth, minusPenSizeHeight);
  fill(black);
  text(minusPen, minusPenSizeX, minusPenSizeY, minusPenSizeWidth, minusPenSizeHeight);
  fill(resetWhite);
  
   if (mouseX>drawingToolX && mouseX<drawingToolX+drawingToolWidth && mouseY>drawingToolY && mouseY<drawingToolY+drawingToolHeight ) {
    buttonFill = drawingColor;
  } else {
    buttonFill = resetWhite;
  }
  
  fill(buttonFill); 
  rect(drawingToolX, drawingToolY, drawingToolWidth, drawingToolHeight);
  fill(black);
  text(penStyle, drawingToolX, drawingToolY, drawingToolWidth, drawingToolHeight);
  fill(resetWhite);
  
  rect(choseImageX, choseImageY, choseImageWidth, choseImageHeight);
  //
  //if ( mouseX>jukeboxX && mouseX<jukeboxX+jukeboxWidth && mouseY>jukeboxY && mouseY<jukeboxY+jukeboxHeight){
    if (isJukebox == true){
      rect(playX, playY, playWidth, playHeight);
      textAlign(CENTER, CENTER);
      fill(black); 
      textSize(12);
      text(clickPlay, playX, playY, playWidth, playHeight);
      fill(resetWhite);
      
      
      rect(pauseX, pauseY, pauseWidth, pauseHeight);
      textAlign(CENTER, CENTER);
      fill(black); 
      textSize(12);
      text(clickPause, pauseX, pauseY, pauseWidth, pauseHeight);
      fill(resetWhite);
      
      rect(rewindX, rewindY, rewindWidth, rewindHeight);
      textAlign(CENTER, CENTER);
      fill(black); 
      textSize(12);
      text(clickRewind, rewindX, rewindY, rewindWidth, rewindHeight);
      fill(resetWhite);
      
      rect(forwardX, forwardY, forwardWidth, forwardHeight );
      textAlign(CENTER, CENTER);
      fill(black); 
      textSize(12);
      text(clickForward,forwardX, forwardY, forwardWidth, forwardHeight);
      fill(resetWhite);
      
      rect(stopX, stopY, stopWidth, stopHeight );
      textAlign(CENTER, CENTER);
      fill(black); 
      textSize(12);
      text(clickStop,stopX, stopY, stopWidth, stopHeight);
      fill(resetWhite);
    } else {
      return;
    }
  //} 
  //ellipse(eraserX, eraserY, eraserDiameter, eraserDiameter);
  //rect (colorX, colorY, colorWidth, colorHeight);
  //fill(black);
  //textAlign(CENTER, CENTER);
  //text (colorChoice, colorX, colorY, colorWidth, colorHeight);
  //fill(resetWhite);
}//End draw
//
void keyPressed() {
}//End keyPressed (Not Needed
//
void mousePressed() {
  if (mouseX> drawingSurfaceX  && mouseX <drawingSurfaceX + drawingSurfaceWidth && mouseY> drawingSurfaceY && mouseY < drawingSurfaceY +drawingSurfaceHeight ) {
    if (draw == true) {
      draw = false;
    } else {
      draw = true;
    }
  }
  // redColorX, redColorY, redColorWidth, redColorHeight 
  if (mouseX > redColorX  && mouseX <redColorX + redColorWidth && mouseY> redColorY && mouseY < redColorY + redColorHeight ) {
    soundEffect.play();
    isEraser = false;
    colorChoice = red;
  }
  // Yellow Colors
  if (mouseX > yellowColorX  && mouseX <yellowColorX + yellowColorWidth && mouseY> yellowColorY && mouseY < yellowColorY + yellowColorHeight ) {
    isEraser = false;
    colorChoice = yellow;
  }
  //greenColorX, greenColorY, greenColorWidth, greenColorHeight
  if (mouseX > greenColorX  && mouseX <greenColorX + greenColorWidth && mouseY> greenColorY && mouseY < greenColorY + greenColorHeight ) {
    isEraser = false;
    colorChoice = green;
  }
  //blueColorX, blueColorY, blueColorWidth, blueColorHeight
  if (mouseX > blueColorX  && mouseX <blueColorX + blueColorWidth && mouseY> blueColorY && mouseY < blueColorY + blueColorHeight ) {
    colorChoice = blue;
  }
  //
  if (mouseX > blackColorX  && mouseX <blackColorX + blackColorWidth && mouseY> blackColorY && mouseY < blackColorY + blackColorHeight ) {
    isEraser = false;
    colorChoice = black;
  }
  //
  if (mouseX > purpleColorX  && mouseX < purpleColorX + purpleColorWidth && mouseY> purpleColorY && mouseY < purpleColorY + purpleColorHeight ) {
    isEraser = false;
    colorChoice = purple;
  }
  //eraserTemplateX, eraserTemplateY, eraserTemplateWidth, eraserTemplateHeight
  if (mouseX > eraserTemplateX  && mouseX < eraserTemplateX + eraserTemplateWidth && mouseY > eraserTemplateY && mouseY < eraserTemplateY + eraserTemplateHeight ) {
    if (isEraser == false) {
      isEraser = true;
      colorChoice = resetWhite;
    } else if (isEraser == true) {
      isEraser = false;
    }
    colorChoice = resetWhite;
  }
   if ( mouseX>addDiameterX && mouseX<addDiameterX+addDiameterWidth && mouseY>addDiameterY && mouseY<addDiameterY+addDiameterHeight ) {
    eraserDiameter = eraserDiameter + 1;
   }

  if ( mouseX>minusDiameterX && mouseX<minusDiameterX+minusDiameterWidth && mouseY>minusDiameterY && mouseY<minusDiameterY+minusDiameterHeight ) {
     eraserDiameter = eraserDiameter - 1;
  }
  //jukeboxX, jukeboxY, jukeboxWidth, jukeboxHeight)
  if ( mouseX>jukeboxX && mouseX<jukeboxX+jukeboxWidth && mouseY>jukeboxY && mouseY<jukeboxY+jukeboxHeight && isJukebox == false ) {
      isJukebox = true;
  }
  else if ( mouseX>jukeboxX && mouseX<jukeboxX+jukeboxWidth && mouseY>jukeboxY && mouseY<jukeboxY+jukeboxHeight && isJukebox == true ) {
      isJukebox = false;
  }
  //rect(playX, playY, playWidth, playHeight);
  if ( mouseX>playX && mouseX<playX+playWidth && mouseY>playY && mouseY<playY+playHeight ) {
    if (isJukebox == true){
       song1.play();
    }
  }
  //pauseX, pauseY, pauseWidth, pauseHeight
  if ( mouseX>pauseX && mouseX<pauseX+pauseWidth && mouseY>pauseY && mouseY<pauseY+pauseHeight ) {
    if (song1.isPlaying() ) {
      song1.pause();
    }     
  }
  //rewindX, rewindY, rewindWidth, 
  if ( mouseX>rewindX && mouseX<rewindX+rewindWidth && mouseY>rewindY && mouseY<rewindY+rewindHeight ) {
    
     song1.skip(-2000) ;
  }
  //
  if ( mouseX>forwardX && mouseX<forwardX+forwardWidth && mouseY>forwardY && mouseY<forwardY+forwardHeight ) {    
     song1.skip(2000) ;
  }
  //stopX, stopY, stopWidth, stopHeight
  if ( mouseX>stopX && mouseX<stopX+stopWidth && mouseY>stopY && mouseY<stopY+stopHeight ) {    
     if (song1.isPlaying() ) {
      song1.pause();
      song1.rewind();
    } else { 
      song1.rewind();
    }
  }
  //plusPenSizeX, plusPenSizeY, plusPenSizeWidth, plusPenSizeHeight
  if ( mouseX>plusPenSizeX && mouseX<plusPenSizeX+plusPenSizeWidth && mouseY>plusPenSizeY && mouseY<plusPenSizeY+plusPenSizeHeight ) {    
     penSize = penSize + 1;
     drawingDiameter = drawingDiameter + 1;
  }
  //minusPenSizeX, minusPenSizeY, minusPenSizeWidth, minusPenSizeHeight
  if ( mouseX>minusPenSizeX && mouseX<minusPenSizeX+minusPenSizeWidth && mouseY>minusPenSizeY && mouseY<minusPenSizeY+minusPenSizeHeight && penSize > 1 ) {    
     penSize = penSize  - 1;
     drawingDiameter = drawingDiameter - 1;
  }
  //drawingToolX, drawingToolY, drawingToolWidth, drawingToolHeight
  if ( mouseX>drawingToolX && mouseX<drawingToolX+drawingToolWidth && mouseY>drawingToolY && mouseY<drawingToolY+drawingToolHeight  ) {    
     if(ellipseDrawing == true){
       ellipseDrawing = false;
       lineDrawing = true;
     }
     else if(lineDrawing == true){
       ellipseDrawing = true;
       lineDrawing = false;

     }
  }
  //End drawing tool
}// End mousePressed
