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
AudioPlayer Effect;
AudioMetaData soundMetaDateEffect;
AudioMetaData songMetaDate2;
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
Boolean isFlower = false, isSpiderman = false;

color colorChoice;
color grey = #837A83 ;
color eraserColor = #00EAC9;
color jukeboxColor = #A7CAFF;
color minusSize =#AAEA66;
color plusSize = #5985A0;
color drawingColor = #E3C485;
color imageColor = #358639;

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
  size (600, 700); //Landscape (Portrait or Square)
  minim = new Minim(this);
  song1 = minim.loadFile("song1.mp3");
  songMetaDate1 = song1.getMetaData();
  
  //minim = new Minim(this);
  //Effect = minim.loadFile("effect.mp3");
  //songMetaDate2 = Effect.getMetaData();
  
  
  
  //Display Checker
  //Display Oreintation Checker
  //Display and CANVAS Checker
  
  
  int appWidth = width;
  int appHeight = height;
  if ( width > displayWidth || height > displayHeight ) { //CANVAS in Display Checker
    //CANVAS Too Big
    appWidth = displayWidth;
    appHeight = displayHeight;
    println("CANVAS needed to be readjusted to fit on your monitor.");
  } else {
    println("CANVAS is Good to go on your display.");
  }//End CANVAS in Display Checker
  //Display Orientation
  String ls="Landscape or Square", p="portraint", DO="Display Orientation:", instruct="Bru, turn your phun";
  String orientation = ( appWidth>=appHeight ) ? ls : p; //Ternary Operator, repeats the IF-Else structure to populate a variable
  println( DO, orientation );
  if ( orientation==ls ) { //Test for chosen display orientation
    println("Good to Go");
  } else {
    appWidth *= 0; //asignment operator, works like appWidth=appWidth*0
    appHeight *= 0;
    println(instruct);
  }
  //
  population();
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
  //Effect.play();
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
  
  if (mouseX>choseImageX && mouseX<choseImageX+choseImageWidth && mouseY>choseImageY && mouseY<choseImageY+choseImageHeight ) {
    buttonFill = imageColor;
  } else {
    buttonFill = resetWhite;
  }
  fill(buttonFill); 
  rect(choseImageX, choseImageY, choseImageWidth, choseImageHeight);
  fill(black);
  text(switchImage, choseImageX, choseImageY, choseImageWidth, choseImageHeight);
  fill(resetWhite);
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
    } else if (isJukebox == false){
      
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
       rect(titleX, titleY, titleWidth, titleHeight);
       fill(black);
       text(songMetaDate1.title(), titleX, titleY, titleWidth, titleHeight);
       fill(resetWhite);  
    }
  }
  //pauseX, pauseY, pauseWidth, pauseHeight
  if ( mouseX>pauseX && mouseX<pauseX+pauseWidth && mouseY>pauseY && mouseY<pauseY+pauseHeight ) {
    if (isJukebox == true){
      if (song1.isPlaying() ) {
        song1.pause();
      }     
    }
  }
  //rewindX, rewindY, rewindWidth, 
  if ( mouseX>rewindX && mouseX<rewindX+rewindWidth && mouseY>rewindY && mouseY<rewindY+rewindHeight ) {
    if (isJukebox == true){
     song1.skip(-2000) ;
    }
  }
  //
  if ( mouseX>forwardX && mouseX<forwardX+forwardWidth && mouseY>forwardY && mouseY<forwardY+forwardHeight ) {    
    if (isJukebox == true){
     song1.skip(2000) ;
    }
  }
  //stopX, stopY, stopWidth, stopHeight
  if ( mouseX>stopX && mouseX<stopX+stopWidth && mouseY>stopY && mouseY<stopY+stopHeight ) {    
    if (isJukebox == true){
       if (song1.isPlaying() ) {
        song1.pause();
        song1.rewind();
      } else { 
        song1.rewind();
      }
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
  //choseImageX, choseImageY, choseImageWidth, choseImageHeight
 
  if ( mouseX>choseImageX && mouseX<choseImageX+choseImageWidth && mouseY>choseImageY && mouseY<choseImageY+choseImageHeight ) { 
    if (isFlower == false){
     noStroke();
      //drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight
      //imageX, imageY, picWidthAdjusted, picHeightAdjusted
     image(flower, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
     isFlower = true;
     isSpiderman = true;
    }
    else if (isSpiderman == true){
      image(spiderman, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
      isFlower = false;
      isSpiderman = false;
    }
  }
  
  //End drawing tool
}// End mousePressed
