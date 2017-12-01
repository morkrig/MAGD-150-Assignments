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

//A cloud that will be the main object.
class Cloud {

  float x;
  float y;
  float z;

  void display() {    //These are the parameters for drawing a white cloud.
    noStroke();
    ellipse(x, y, 60, 60);
    ellipse(x+30, y, 60, 60);
    ellipse(x-30, y+30, 60, 60);
    ellipse(x-10, y+30, 60, 60);
    ellipse(x+10, y+30, 60, 60);
    ellipse(x+30, y+30, 60, 60);
    ellipse(x+50, y+30, 60, 60);
  }

  void rain() {    //This is supposed to be a blue raindrop that falls out of the cloud.
    strokeWeight(3);
    stroke(90, 90, 200);
    line(x+10, z, x+10, z+10);
    z = z +3;
  }
}
