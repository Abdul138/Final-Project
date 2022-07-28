PImage spiderman, flower, planets;
float imageX, imageY, imageWidth, imageHeight, imageWidthRatio=0.0, imageHeightRatio=0.0, picWidthAdjusted, picHeightAdjusted;
float imageLargerDimension, imageSmallerDimension;
Boolean widthLarger=false, heightLarger=false;
void preload() {
  flower = loadImage("flower.png");
  spiderman = loadImage("spiderman.png");
  //planets = loadImage("planets.jpg");
}
