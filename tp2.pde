//Titulo de la obra: Rectangulo de las Vermudas
//Serrano Leandro Martin 95509/5
//Comision 3
//Video explicativo: https://youtu.be/0Aqra5-Ucmw
PImage img;
int cant = 10;

void setup() {
  size(800, 400);
  img = loadImage ( "ilusion nueva.jpg");
}
void draw() {
  background(255);
 // cada figura se rotara de 0 a 360 grados con cada movimiento del mouse
  float rotacion = map(mouseX, 0, width/2, 0, 360);
  
  fill (255);
  rectt(700, 140, 80, rotacion, cant);
  rectt(600, 140, 80, -rotacion, cant);
  rectt(600, 350, 80, rotacion, cant);
  rectt(700, 245, 80, -rotacion, cant);
  rectt(500, 245, 80, rotacion, cant);
  rectt(500, 140, 80, -rotacion, cant);
  rectt(600, 245, 80, rotacion, cant);
  rectt(700, 350, 80, -rotacion, cant);
  rectt(500, 350, 80, rotacion, cant);
  rectt(802, 140, 80, rotacion, cant);
  rectt(802, 350, 80, rotacion, cant);
  rectt(802, 245, 80, rotacion, cant);
  rectt(700, 40, 80, rotacion, cant);
  rectt(802, 40, 80, rotacion, cant);
  rectt(600, 40, 80, rotacion, cant);
  rectt(500, 40, 80, rotacion, cant);
  rectt(400, 40, 80, rotacion, cant);
  rectt(400, 140, 80, rotacion, cant);
  rectt(400, 245, 80, rotacion, cant);
  rectt(400, 350, 80, rotacion, cant);
   image ( img, 60, 0, 350, 400);
   image ( img, -150, 0, 350, 400);
}
// Con cada click se agrega un cuadrado 
void mousePressed() { 
  cant++;
}
// Con presionar una tecla empezamos desde 0
void keyPressed() { 
  cant = 10;
}


void rectt(int x, int y, int ancho, float rotar, int cantidad) { 
  for (int i=0; i<cantidad; i++) {
    push();
    translate(x, y);
    rotate(radians(rotar));

    rectMode(CENTER);
     noFill();

    float tam = map(i, 0, cantidad-1, ancho, -99);
    float opacidad = map(i, 0, cantidad-1, 30, 300);
    stroke(0, 0, 0, opacidad);
    strokeWeight(3);
    rect(0, 0, tam, tam);

    pop();
  
  }
}
