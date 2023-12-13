class Asteroids extends Floater  
{   
    public Asteroids(){
      corners = 8;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = -2;
      yCorners[1] = -8;
      xCorners[2] = 4;
      yCorners[2] = -4;
      xCorners[3] = 4;
      yCorners[3] = 5;
      xCorners[4] = 5;
      yCorners[4] = 7;
      xCorners[5] = 3;
      yCorners[5] = 8;
      xCorners[6] = -3;
      yCorners[6] = 10;
      xCorners[7] = -8;
      yCorners[7] = 6;
      myColor = 200;
      myCenterX = (int)(Math.random()*1000);
      myCenterY = (int)(Math.random()*1000);
      myXspeed = (int)(Math.random()*2)+.3;
      myYspeed = (int)(Math.random()*2)+.3;
      myPointDirection = (int)(Math.random()*360);
    }
      public void setXspeed(double a){myXspeed = a;}
      public double getXspeed(){return myXspeed;}
      public void setYspeed(double a){myYspeed = a;}
      public double getYspeed(){return myYspeed;}
      public double getY(){return myCenterY;}
      public double getX(){return myCenterX;}
      public void move(){
        turn(-5);
        super.move();
      }
}
