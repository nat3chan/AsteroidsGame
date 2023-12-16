class Bullet extends Floater  
{   
    public Bullet(Spaceship bob){
      myCenterX = bob.getX();
      myCenterY = bob.getY();
      myPointDirection = bob.getDir();
      double dRadians = myPointDirection*(Math.PI/180);
      myXspeed = 5 * Math.cos(dRadians) + bob.getXspeed();
      myYspeed = 5 * Math.sin(dRadians) + bob.getYspeed();

      corners = 4;
      xCorners = new int [corners];
      yCorners = new int [corners];
      xCorners[0] = 0;
      yCorners[0] = -4;
      xCorners[1] = 8;
      yCorners[1] = 0;
      xCorners[2] = 0;
      yCorners[2] = 4;
      xCorners[3] = -8;
      yCorners[3] = 0;
      myColor = 255;
    }
    public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;         
    if(myCenterX > width)
    {     
      list2.remove(this);    
    }    
    }
    public double getX(){return myCenterX;}
    public void setY(double a){myCenterY = a;}
    public double getY(){return myCenterY;}
}
