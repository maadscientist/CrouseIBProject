float shapeX, shapeY;
class shapeMaker {
  shapeMaker() {
    //put colors and stuff here
  }
  void drawShape(float degree, int move, float shapeX, float shapeY) {
    for (int i = 0; i < 360; i++) {
      
      forward(move, shapeX, shapeY);
      turn(degree);
    }
  }
  void turn(float w) {
    angle = (angle + w/180*PI) % (2*PI);
  }
  void forward(int rep, float shapeX, float shapeY)
  {

    line(shapeX, shapeY, shapeX + cos(angle)*rep, shapeY + sin(angle)*rep);
    shapeX = shapeX + cos(angle)*rep;
    shapeY = shapeY + sin(angle)*rep;
  }
}
