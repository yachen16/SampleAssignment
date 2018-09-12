PImage iceberg;
int x = 0; 
int y = 0;
void setup(){
  size(900, 600);
  iceberg = loadImage("http://www.pngmart.com/files/4/Iceberg-PNG-Image.png");
  frameRate(60);
}
void draw(){
  background(13, 27, 51);
  String pt1 = "Not all boats float.";
  String pt2 = "Some ships sink ...";
  fill(255, 255, 77);
  textSize(40);
  text(pt1, 125, 75);
  text(pt2, 200, 140);
  boat(x, y);
  x = x+2;
  if(x >= 600){
    y = y+2;
  }
  if(x >= 850 || y >= 550){
    x = 0;
    y = 0;
  }
  image(iceberg,600,355,300,300);
  water();
}
void boat(int x, int y){
  noStroke();
  fill(142, 8, 8);
  bezier(0+x,390+y,35+x,500+y,165+x,500+y,200+x,390+y);
  stroke(50);
  line(100+x,390+y,100+x,290+y);
  noStroke();
  fill(255);
  triangle(100+x,290+y,100+x,340+y,165+x,315+y);
}
void water(){
  fill(3,71,255,150);
  noStroke();
  rect(0,450,900,450);
}


