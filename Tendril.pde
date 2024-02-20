class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myNumSegments=len;
myX=x;myY=y;
myAngle=theta;
  }
  public void show()
  {
sX=myX;
sY=myY;
for (int i=0;i<myNumSegments;i++){
myAngle+=Math.random()*.4-.2;
eX=sX+Math.cos(myAngle)*len;
eY=sY+Math.sin(myAngle)*len;
}
}
}
