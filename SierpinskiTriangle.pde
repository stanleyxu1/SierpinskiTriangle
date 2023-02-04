public void setup()
{
  size(500, 500);
  fill(255);
  noStroke();
}

int x = 45;
int y = 50;

public void draw()
{

  background(0);
  sierpinski(x, y, hi);
}
public void mouseWheel(MouseEvent event)//optional
{
  float hello = event.getCount();

  if (hello == -1.0)
    hi +=25;
  if (hello == 1.0)
    hi = hi - 25;

  if (hi<=0)
    hi=0;
  if (hi>=500)
    hi=500;
}

public void mouseDragged( ) {
  x = mouseX;
  y = mouseY;
}

int hi = 400;
public void sierpinski(int x, int y, int len)
{
  if (len <= 15) {
    triangle(x, y, x+len/2, y+len, x+len, y);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y+len/2, len/2);
  }
}
