Spaceship bob = new Spaceship();
Star [] space = new Star[250];
ArrayList <Asteroids> list = new ArrayList <Asteroids>();
ArrayList <Bullet> list2 = new ArrayList <Bullet>();
public int b = 0;
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
  
for (int i = 0; i < list2.size(); i++) {
    list2.get(i).show();
    list2.get(i).move();
}
for (int i = 0; i < list2.size(); i++) {
  for (int o = 0; o < list.size(); o++) {
    if(dist((float)list2.get(i).getX(), (float)list2.get(i).getY(), (float)list.get(o).getX(), (float)list.get(o).getY()) < 10){
      list2.remove(i);
      list.remove(o);
    }
  }
}
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
    while(bob.getXspeed() > 5){
    bob.setXspeed(4.8);
    }
    while(bob.getXspeed() < -5){
    bob.setXspeed(-4.8);
    }
    while(bob.getYspeed() > 5){
    bob.setYspeed(4.8);
    }
    while(bob.getYspeed() < -5){
    bob.setYspeed(-4.8);
    }
  }
  if(key == 'e'){
    bob.hyperspace();
  }
  if(key == ' '){
    list2.add(new Bullet(bob));
  }
}
