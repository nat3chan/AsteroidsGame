class Star //note that this class does NOT extend Floater
{
  private int myX, myY, mySize;
  public Star(){
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*1000);
    mySize = (int)(Math.random()*5)+1;
  }
  public void show(){
    fill(255);
    ellipse(myX,myY,mySize,mySize);
  }
}
