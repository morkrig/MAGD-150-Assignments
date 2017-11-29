//Declares strings and fonts.
PFont title;
PFont subtitle;
String s = "A Fake Poster";
String t = "for a fake movie";

void setup() {
  size (900, 1400);
  background(255, 232, 117);

  //Loads the two specified fonts in.
  title = loadFont("Constantia-BoldItalic-75.vlw");
  subtitle = loadFont("FranklinGothic-Medium-28.vlw");

  //Displays a random pull quote each time the program is run.
  int x = (int) random(0, 3);
  String[] lines = loadStrings("pullquotes.txt");

  textAlign(CENTER);
  textFont(subtitle);
  fill(10, 2, 40);
  text(lines[x], width/2, 200);

  //Draws the poster's title and subtitle text.
  textAlign(LEFT);
  text(t, width/2, 970);

  textFont(title);
  textAlign(CENTER);
  text(s, width/2, 950);
}

void draw() {
  //Draws smile on poster.
  noStroke();
  fill(5);
  ellipse(width/3, 450, 70, 110);
  ellipse((width/3)*2, 450, 70, 110);

  noFill();
  stroke(5);
  strokeWeight(10);
  arc(450, 580, 460, 350, 0, PI);
}
