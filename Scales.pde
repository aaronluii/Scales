void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  boolean shift = true;
  for (int y = 0; y <= 500; y += 45) 
  {
    for (int x = 0; x <= 500; x += 45) 
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
  fill(#D12EF2);
  noStroke();
  ellipse (x + 20, y + 20, 40, 40);
  rect (x, y, 40, 20);
}
