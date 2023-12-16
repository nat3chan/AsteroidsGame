class Asteroids extends Floater  
{   
    public Asteroids(){
      corners = 11;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -4;
      yCorners[0] = -3;
      xCorners[1] = -4;
      yCorners[1] = -8;
      xCorners[2] = 8;
      yCorners[2] = -7;
      xCorners[3] = 10;
      yCorners[3] = 3;
      xCorners[4] = 5;
      yCorners[4] = 3;
      xCorners[5] = 7;
      yCorners[5] = 5;
      xCorners[6] = 8;
      yCorners[6] = 6;
      xCorners[7] = 3;
      yCorners[7] = 8;
      xCorners[8] = -9;
      yCorners[8] = 4;
      xCorners[9] = -9;
      yCorners[9] = -3;
      xCorners[10] = -7;
      yCorners[10] = -7;
      myColor = 200;
      myCenterX = (int)(Math.random()*1000);
      myCenterY = (int)(Math.random()*1000);
      myXspeed = (int)(Math.random()*4)-2;
      myYspeed = (int)(Math.random()*4)-2;
      myPointDirection = (int)(Math.random()*360);
    }
      public void setXspeed(double a){myXspeed = a;}
      public double getXspeed(){return myXspeed;}
      public void setYspeed(double a){myYspeed = a;}
      public double getYspeed(){return myYspeed;}
      public void setX(double a){myCenterX = a;}
      public double getX(){return myCenterX;}
      public void setY(double a){myCenterY = a;}
      public double getY(){return myCenterY;}
      public void move(){
        turn(-5);
        super.move();
      }
}
