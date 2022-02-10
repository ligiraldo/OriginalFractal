void setup(){
  size(500,500);
}
void draw(){
  background(0);
  myFractal(250,250,480);
  noLoop();
}
void myFractal(int x, int y, int siz){
  fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
  circle(x,y,siz);
  if(siz > 10){
    myFractal(x-siz/3,y, siz/3);
    myFractal(x+siz/3,y, siz/3);
    myFractal(x,y-siz/3, siz/3);
    myFractal(x,y+siz/3, siz/3);
  }
}
