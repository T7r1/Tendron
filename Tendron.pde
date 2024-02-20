Tendril bob=new Tendril(100,PI,250,250);
public void setup()
{
  size(1000, 1000);  
  background(255);
  noLoop();
}

public void draw()
{
  background(255);
  //  bob.show();
scale(.05);
  Cluster c = new Cluster(100, (width/2)*1/.05, (height/2)*1/.05); // initial number of segments in the tendril and starting (x,y) coordinate

}
public void mousePressed()
{
  redraw();
}
