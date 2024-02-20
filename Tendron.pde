Tendril bob=new Tendril(100,PI,250,250);
public void setup()
{
  size(500, 500);  
  background(255);
  noLoop();
}

public void draw()
{
  background(255);
  //  bob.show();
scale(.02);
  Cluster c = new Cluster(100, 250*50, 250*50); // initial number of segments in the tendril and starting (x,y) coordinate

}
public void mousePressed()
{
  redraw();
}
