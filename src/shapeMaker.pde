
class shapeMaker {
  shapeMaker() {
    //put colors and stuff here
  }
  void drawShape(float degree, int move) {
    for (int i = 0; i < 360; i++) {
      forward(move);
      turn(degree);
    }
  }
  void turn(float w) {
    angle = (angle + w/180*PI) % (2*PI);
  }
  void forward(int rep)
  {

    line(x, y, x + cos(angle)*rep, y + sin(angle)*rep);
    x = x + cos(angle)*rep;
    y = y + sin(angle)*rep;
  }
}
