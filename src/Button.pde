class Button {
  //Member Variables
  int x, y, w, h, v;
  String text;
  color c ;
  //Multiple Constructor
  Button( int x, int y, int w, int h, String text) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.text = text;
  }
  //Display Method
  void display() {

    rectMode(CENTER);
    fill(205, 130, 130);
    

    rect(x, y, w, h);


    textAlign(CENTER, CENTER);
    fill(0);
    text(text, x, y);
  }
  //Hover Method
  boolean hover() {
    return mouseX > x - w/2 && mouseX < x + w/2 && mouseY > y - h/2 && mouseY < y + h/2;
  }

}
