void setup() {
  background (0);
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  boolean shift = true;
  for (int y = 550; y >= -50; y -= 25) 
  {
    for (int x = -50; x <= 500; x += 40) 
    {
      if (shift == true)
        scale(x + 20 ,y);
      else
        scale(x,y);
    }
  if (shift == true)
    shift = false;
  else
    shift = true;
}
}
void scale(int x, int y) {
  fill((int)(256*Math.random()),(int)(256*Math.random()),(int)(256*Math.random()));
  g.stroke = true;
  ellipse (x + 20, y + 20, 40, 40);
  noStroke();
  rect (x, y, 40, 20);
}



