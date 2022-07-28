PImage spiderman, flower, planets;
float imageX, imageY, imageWidth, imageHeight, imageWidthRatio=0.0, imageHeightRatio=0.0, picWidthAdjusted, picHeightAdjusted;
float imageLargerDimension, imageSmallerDimension;
float imageX2, imageY2, imageWidth2, imageHeight2, imageWidthRatio2=0.0, imageHeightRatio2=0.0, picWidthAdjusted2, picHeightAdjusted2;
float imageLargerDimension2, imageSmallerDimension2;
Boolean widthLarger=false, heightLarger=false;
Boolean widthLarger2 =false, heightLarger2 =false;
void preload() {
  flower = loadImage("flower.png");
  spiderman = loadImage("spiderman.png");
  //planets = loadImage("planets.jpg");
}
