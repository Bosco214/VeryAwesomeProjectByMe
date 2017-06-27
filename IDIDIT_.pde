/*
 
 sketch_1_forloop
 
 Your neighborhood association wants you to build a white
 picket privacy fence. You've put up the fence rail and
 one picket. Write a loop to place all ten pickets!
 
*/
void Chimney(int x) {
  beginShape();
  vertex(x, 90);
  vertex(x, 40);
  vertex(x + 15, 40);
  vertex(x + 15, 90);
  endShape(CLOSE);
}
void house(int x) {
  beginShape();
  vertex(x, 300);
  vertex(x, 90);
  vertex(x + 20, 65);
  vertex(x + 40, 90);
  vertex(x + 40, 300);
  endShape(CLOSE);
}
//roof
void roof(int x) {
  beginShape();
  vertex(x, 300);
  vertex(x, 90);
  vertex(x + 40, 90);
  vertex(x + 40, 300);
  endShape(CLOSE);
}
//windows
void window1(int x) {
  beginShape();
  vertex(x + 5, 95);
  vertex(x + 5, 107);
  vertex(x + 12, 107);
  vertex(x + 12, 95);
  endShape(CLOSE);
}
//windows
void window2(int x) {
  beginShape();
  vertex(x + 28, 95);
  vertex(x + 28, 107);
  vertex(x + 35, 107);
  vertex(x + 35, 95);
  endShape(CLOSE);
}
void door(int x) {
  beginShape();
  vertex(x + 15, 120);
  vertex(x + 15, 107);
  vertex(x + 25, 107);
  vertex(x + 25, 120);
  endShape(CLOSE);
}

void setup() {
  size(400, 300);

  PImage rail = loadImage("fence.tif");
  image(rail, 0, 0);
   background(20,0,195);
   for(int xpos = 0; xpos <350; xpos += 95){
     fill(125,13,0);
  Chimney(xpos);
  }
  for(int xpos = 0; xpos < 350; xpos += 95){
    fill(165,85,0);
    house(xpos);
  }
  for(int xpos = 0; xpos <350; xpos += 95)
  roof(xpos);
  for(int xpos = 0; xpos <350; xpos += 95) {
    fill(200,200,0);
  window1(xpos);
  }
  for(int xpos = 0; xpos <350; xpos += 95)
  window2(xpos);
  for(int xpos = 0; xpos <350; xpos += 95){
   fill(255,255,255);
  door(xpos);
  }
  //grass
  fill(35,145,5);
  rect(0, 120, 400, 300);
  //moon
  fill(230,230,0);
  ellipse (400,15,80,80);
  fill(190,190,0);
  ellipse (400,15,10,10);
  ellipse (390,35,20,20);
  ellipse (385,1,15,15);
  ellipse (375,17,14,14);

}