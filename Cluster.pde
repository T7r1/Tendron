public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster
private Tendril bob;
    public Cluster(float len, float x, float y)
    {
      for (double i=0;i<2*PI;i+=2*PI/6.5){
bob=new Tendril( len,i,  x,  y);    
bob.show();
}
}
}
