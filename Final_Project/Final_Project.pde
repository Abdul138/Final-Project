import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//Global Variables
//Paper Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
//Circle Drawing Variables
float drawingDiameter;
//
Boolean draw = false;
//
void setup() {
  //Display Checker
  //Display Oreintation Checker
  //Display and CANVAS Checker
  size (500, 600); //Landscape (Portrait or Square)
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
} //End setup
//
void draw () {
  if (draw == true && mouseX> drawingSurfaceX  && mouseX <drawingSurfaceX + drawingSurfaceWidth && mouseY> drawingSurfaceY && mouseY < drawingSurfaceY +drawingSurfaceHeight) ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter); // Circle Drawing tool
}//End draw
//
void keyPressed() {
}//End keyPressed (Not Needed
//
void mousePressed() {
  if (mouseX> drawingSurfaceX  && mouseX <drawingSurfaceX + drawingSurfaceWidth && mouseY> drawingSurfaceY && mouseY < drawingSurfaceY +drawingSurfaceHeight ) {
    if (draw == true){
      draw = false;
    } else{
      draw = true;
    }
  }
  //End drawing tool
}// End mousePressed
