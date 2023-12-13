Spaceship bob = new Spaceship();
Star [] space = new Star[250];
ArrayList <Asteroids> list = new ArrayList <Asteroids>();
public void setup() 
{
  size(1000,1000);
  for (int i = 0; i < space.length; i++){
  space[i] = new Star();
  }
  for (int i = 0; i < 25; i++){
  list.add(new Asteroids());
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
  for(int i = 0; i < list.size(); i++){
    list.get(i).move();
    list.get(i).show();
    if(dist((float)bob.getX(), (float)bob.getY(), (float)list.get(i).getX(), (float)list.get(i).getY()) < 30){
      list.remove(i);
    }
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
