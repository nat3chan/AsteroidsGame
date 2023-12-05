Spaceship bob = new Spaceship();
Star [] space = new Star[250];
public void setup() 
{
  size(1000,1000);
  for (int i = 0; i < space.length; i++){
  space[i] = new Star();
  }

}
public void draw() 
{
  fill(0,0,0,75);
  rect(0,0,1000,1000);
  fill(255);
  for (int i = 0; i < space.length; i++){
  space[i].show();
  }
  bob.show();
  bob.move();

  
}
public void keyPressed(){
  if(key == 'd'){
    bob.turn(10.0);
  }
  if(key == 'a'){
    bob.turn(-10);
  }
  if(key == 'w'){
    bob.accelerate(0.1);
    while(bob.getXspeed() > 10){
    bob.setXspeed(9.8);
    }
    while(bob.getXspeed() < -10){
    bob.setXspeed(-9.8);
    }
    while(bob.getYspeed() > 10){
    bob.setYspeed(9.8);
    }
    while(bob.getYspeed() < -10){
    bob.setYspeed(-9.8);
  }
  }
  if(key == ' '){
    bob.hyperspace();
  }
}
