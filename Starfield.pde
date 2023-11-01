PImage kitty;
PImage kuromi;
Chan[] cat=new Chan[90];
void setup(){
  size(400,400);
  kitty = loadImage("hello.png");
  kuromi = loadImage("kuromi.png");
  for(int i=0;i<cat.length;i++) {
  cat[i]=new Chan();
  cat[10] = new extraChan();
  }
}
void draw(){
    background(248, 200, 220);
  for (int i=0;i<cat.length;i++){
    cat[i].move();
    cat[i].show();
  }
}

class Chan{
  double myX, myY, myAngle, mySpeed;
  Chan(){
    myX=myY=200;
    myAngle=Math.random()*2*Math.PI;
    mySpeed=Math.random()*8;
  }
  void move(){
    myX+=Math.cos(myAngle)*mySpeed;
    myY+=Math.sin(myAngle)*mySpeed;
  }
  void show(){
    image(kitty, (float)(myX), (float)(myY), 60, 50);
    if((myX > 400) || (myX < 0)){
      myX = myY = 200;}
  }
}
class extraChan extends Chan{
  extraChan(){
    myX = myY = 200;
  }
  void move(){
    myX+=(int)(Math.random()*5)-1;
    myY+=(int)(Math.random()*2)-2;
  }
  void show(){
    image(kuromi, (float)(myX), (float)(myY), 60, 70);
  }
}  

