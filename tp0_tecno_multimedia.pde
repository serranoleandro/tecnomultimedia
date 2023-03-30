PImage P;
void setup(){
  size (800,400);
  background (#792A2A);
   //back hair
  stroke (#050505);
  fill (#D3BABA);
  ellipse (299,200,120,120);
  ellipse (100,200,120,120);
fill (#050000);
rect (70,100,100,100);
ellipse (200,180,280,280);
rect (170,90,160,160);
fill (#D3BABA);
rect (130,300,130,130);
ellipse (200,210,270,280);
//color de ojos
fill (#FFFAFA);
ellipse (270,200,70,40);
ellipse (130,200,70,40);
fill (#030000);
ellipse (130,195,30,30);
ellipse (270,195,30,30);
fill (#FFFAFA);
ellipse (270,195,5,5);
ellipse (130,195,5,5);
//cejas
fill (#030000);
rect (100,170,60,5);
rect (235,170,60,5);
rect (166,300,60,5);
//nariz
fill (#D3BABA);
rect (190,210,20,50);
ellipse (195,260,30,30);
ellipse (206,260,30,30);
ellipse (200,261,30,32);
fill (#CB5252);
rect (185,230,30,5);
//armadura beserk
fill (#050000);
ellipse (50,450,200,200);
ellipse (340,450,200,200);
rect (100,380,200,100);
//pelo
rect (90,70,210,50);
rect (100,60,200,15);
rect (111,50,175,15);
rect (111,50,4,100);
rect (100,87,4,70);
rect (125,50,4,110);
rect (155,50,4,110);
rect (185,50,4,110);
rect (210,65,4,110);
rect (225,50,4,110);
rect (255,50,4,110);
rect (285,50,4,110);
rect (310,90,4,70);
rect (700,1,200,900);
//detalles



  P = loadImage("gutsberserk2.png");
}
void draw(){
  image(P, 400, 1, 300, 400);
}
