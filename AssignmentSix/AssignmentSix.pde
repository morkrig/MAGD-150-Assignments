Cloud c;

void setup() {    //Sets gray background and the location of cloud c, plus variables.
  size(800, 600);
  c = new Cloud();
  c.x = 400;
  c.y = 200;
  c.z = c.y+65;
}

void draw() {    //Draws a cloud and is supposed to animate rain if I did this right.
  background(220);   
  c.rain();
  c.display();
  if (c.z > height) {    //When the drop goes offscreen, a new one is drawn.
    c.z = c.y+65;
  }
}