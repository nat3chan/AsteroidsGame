class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 8;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = -2;
      yCorners[1] = -6;
      xCorners[2] = -4;
      yCorners[2] = -12;
      xCorners[3] = 16;
      yCorners[3] = 0;
      xCorners[4] = -4;
      yCorners[4] = 12;
      xCorners[5] = -2;
      yCorners[5] = 6;
      xCorners[6] = -8;
      yCorners[6] = 8;
      xCorners[7] = -2;
      yCorners[7] = 0;
      myColor = 255;
      myCenterX = (int)(Math.random()*1000);
      myCenterY = (int)(Math.random()*1000);
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = (int)(Math.random()*360);
    }
      public void setXspeed(double a){myXspeed = a;}
      public double getXspeed(){return myXspeed;}
      public void setYspeed(double a){myYspeed = a;}
      public double getYspeed(){return myYspeed;}
      public double getY(){return myCenterY;}
      public double getX(){return myCenterX;}
      public void hyperspace(){
        myCenterX = (int)(Math.random()*1000);
        myCenterY = (int)(Math.random()*1000);
        myXspeed = 0;
        myYspeed = 0;
        myPointDirection = (int)(Math.random()*360);
      }
}
