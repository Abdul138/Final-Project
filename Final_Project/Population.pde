float titleX, titleY, titleWidth, titleHeight;
void population() {
  //Population
  int flowerWidth = 225; 
  int flowerHeight = 225;   
  int spidermanWidth = 207; 
  int spidermanHeight = 243;   
  
  if ( flowerWidth >= flowerHeight ) { //Image Dimension Comparison
    //True if Landscape or Square
    imageLargerDimension = flowerWidth;
    imageSmallerDimension = flowerHeight;
    widthLarger = true;
  } else {
    //False if Portrait
    imageLargerDimension = flowerHeight;
    imageSmallerDimension = flowerWidth;
    heightLarger = true;
  }//End Image Dimension Comparison
 // println(imageSmallerDimension, imageLargerDimension, widthLarger, heightLarger); //Verify variables details
  //Aspect Ratio
  //Note: single line IFs can be summarized into IF-ELSE or IF-ElseIF-Else
  //Computer chooses which formulae to execute
  if ( widthLarger == true ) imageWidthRatio = imageLargerDimension / imageLargerDimension;
  if ( widthLarger == true ) imageHeightRatio = imageSmallerDimension / imageLargerDimension;
  if ( heightLarger == true ) imageWidthRatio = imageSmallerDimension / imageLargerDimension;
  if ( heightLarger == true ) imageHeightRatio = imageLargerDimension / imageLargerDimension;
  
  
  if ( spidermanWidth >= spidermanHeight ) { //Image Dimension Comparison
    //True if Landscape or Square
    imageLargerDimension = spidermanWidth;
    imageSmallerDimension = spidermanHeight;
    widthLarger = true;
  } else {
    //False if Portrait
    imageLargerDimension = spidermanHeight;
    imageSmallerDimension = spidermanWidth;
    heightLarger = true;
  }//End Image Dimension Comparison
 // println(imageSmallerDimension, imageLargerDimension, widthLarger, heightLarger); //Verify variables details
  //Aspect Ratio
  //Note: single line IFs can be summarized into IF-ELSE or IF-ElseIF-Else
  //Computer chooses which formulae to execute
  if ( widthLarger2 == true ) imageWidthRatio2 = imageLargerDimension2 / imageLargerDimension2;
  if ( widthLarger2 == true ) imageHeightRatio2 = imageSmallerDimension2 / imageLargerDimension2;
  if ( heightLarger2 == true ) imageWidthRatio2 = imageSmallerDimension2 / imageLargerDimension2;
  if ( heightLarger2 == true ) imageHeightRatio2 = imageLargerDimension2 / imageLargerDimension2;
  
  drawingSurfaceX = width*0; // Should use appWidth and appHeight Instead
  drawingSurfaceY = height*0;
  drawingSurfaceWidth =  width*3/4; 
  drawingSurfaceHeight = height*4/5;
  drawingDiameter = width*1/100;
  
  imageX = drawingSurfaceX;
  imageY = drawingSurfaceY;
  imageWidth = drawingSurfaceWidth; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
  imageHeight = drawingSurfaceHeight;
  
  
  picWidthAdjusted = imageWidth * imageWidthRatio;
  picHeightAdjusted = imageHeight * imageHeightRatio;
  //
  
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
  
  titleX = width*13/16 ;
  titleY = height *9/10 - 35;
  titleWidth =width*3/16 - 25 ;
  titleHeight = height*1/18;
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
  
}//End population
