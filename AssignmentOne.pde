void setup(){
background(40);
size(600,600);

}

void draw(){
  rectMode(CORNERS);      // tall narrow building (background)
  noStroke();
  fill(50);
  rect(35,0,250,600);
  
  rectMode(CORNER);       // short wide building (foreground)
  fill(80);
  rect(75,250,450,300);  
  rect(125,550,350,25);
  rect(100,575,400,25);
  
  stroke(60);             // windows
  strokeWeight(1);
  fill(220);
  ellipse(120,500,20,20);
  ellipse(210,500,20,20);
  ellipse(300,500,20,20);
  ellipse(390,500,20,20);
  ellipse(480,500,20,20);
  
  ellipse(120,425,20,20);
  ellipse(210,425,20,20);
  ellipse(300,425,20,20);
  ellipse(390,425,20,20);
  ellipse(480,425,20,20);
  
  stroke(200);           // lamp post
  noStroke();
  triangle(561,506,551,600,570,600);
  strokeWeight(5);       
  stroke(60);
  rect(557,505,17,5);
  line(575,500,575,600);
  
  strokeWeight(3);       // people in windows
  stroke(0);
  point(210,431);
  point(390,506);

}
