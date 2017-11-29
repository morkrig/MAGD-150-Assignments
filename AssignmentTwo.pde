void setup(){
 size(800,500);
 background(60,30,90);
}

void draw(){
  noStroke();                     // star in corner
  fill(0x14FFEECC);
  arc(0,0,460,420,0,HALF_PI,PIE);
  stroke(220,200,10);
  noFill();
  bezier(269,100,186,162,147,50,56,117);
  
  fill(0,40,40);                  // planetoid with ring
  noStroke();
  ellipse(400,210,110,110);
  strokeWeight(5);
  stroke(0x2233337F);
  noFill();
  bezier(375,200,10,300,795,300,425,200);
  fill(150);
 
}
