Tendril bob=new Tendril(100,PI,250,250);
private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
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
strokeWeight(4);
scale(.04);
  Cluster c = new Cluster(100, (width/2)/.04, (height/2)/.04); // initial number of segments in the tendril and starting (x,y) coordinate

}
public void mousePressed()
{
  redraw();
}
public void drawBranches(float x,float y, double branchLength, double angle) 
{   
  double an1=angle+branchAngle;
  double an2=angle-branchAngle;
  branchLength*=fractionLength;
  float ex1=(float)(Math.cos(an1)*branchLength)+x;
  float ey1=(float)(Math.sin(an1)*branchLength)+y; 
  float ex2=(float)(Math.cos(an2)*branchLength)+x;
  float ey2=(float)(Math.sin(an2)*branchLength)+y;
  line(x,y,ex1,ey1);
  line(x,y,ex2,ey2);
  if (branchLength>smallestBranch){
  drawBranches(ex1,ey1,branchLength,an1);
  drawBranches(ex2,ey2,branchLength,an2);
  }
} 
