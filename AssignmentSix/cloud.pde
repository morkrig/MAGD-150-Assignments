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