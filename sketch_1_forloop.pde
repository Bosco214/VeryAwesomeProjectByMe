/*
 
 sketch_1_forloop
 
 Your neighborhood association wants you to build a white
 picket privacy fence. You've put up the fence rail and
 one picket. Write a loop to place all ten pickets!
 
*/
void house(int x) {
  beginShape();
  vertex(x, 300);
  vertex(x, 90);
  vertex(x + 20, 65);
  vertex(x + 40, 90);
  vertex(x + 40, 300);
  endShape(CLOSE);
}

void setup() {
  size(400, 300);

  background(0,0,0); 
  PImage rail = loadImage("fence.tif");
  image(rail, 0, 0);
    
  for(int xpos = 0; xpos < 350; xpos += 95)
  house(xpos);
  //grass
  fill(35,145,5);
  rect(0, 120, 400, 300);
  //moon
  fill(230,255,0);
  ellipse (400,15,80,80);
  fill(200,220,0);
  ellipse (400,15,10,10);
  ellipse (390,35,20,20);
  ellipse (385,1,15,15);
  ellipse (375,17,14,14);

}