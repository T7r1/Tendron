class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private float myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(float len, double theta, float x, float y)
  {
    myNumSegments=len;
myX=x;myY=y;
myAngle=theta;
  }
  public void show()
  {
strokeWeight(myNumSegments/10+2);

float sX=myX;
float sY=myY;
for (int i=0;i<myNumSegments;i++){
myAngle+=Math.random()*.4-.2;
float eX=sX+(float)Math.cos(myAngle)*myNumSegments;
float eY=sY+(float)Math.sin(myAngle)*myNumSegments;
line(sX,sY,eX,eY);
if (Math.random()<myNumSegments/10000){
strokeWeight(myNumSegments/25);
drawBranches(eX,eY,myNumSegments*1.8+40,Math.random()*PI);
  }
sX=eX;
sY=eY;

}
if (myNumSegments>10){
Cluster d=new Cluster(myNumSegments/2, sX, sY);
}
  }
}
