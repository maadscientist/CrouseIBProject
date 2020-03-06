float x, y, z, b;
float angle;

void setup() {
  size(1000, 1000);
  frameRate(10);
  x = 0;
  y = 75;
  z = 144;
  angle = 0;
}

void draw() {
  background(255);
  stroke(0, 0, 100); 

  for (int i = 0; i < 120; i++) {
    drawShape(145, 150);
    //    Draw Stuff Here
  }
}
/**
If tiling selected = 1, 4, 16, etc...
  for (int i < vertical){
    for (int j < horizontal){
       object.drawShape(tilingX, tilingY, tilingSize)
       (Will use polymorphism for the object!!!)
*/

void mouseClicked() {
  saveFrame("frame-#####.png");
}
