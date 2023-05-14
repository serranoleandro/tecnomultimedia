//variables
PImage P, P2, P3, P4, P5, P6, P7;
String texto, texto2, texto3, texto4, texto5;
int miVariable;
float x=0,velx=3;
float y=0;
String estado = "inicio";
int cuentaFotograma = 0;
PFont fuente;
int contador;

void setup(){
  size (640,480);
  background (#FFFFFF);
    P = loadImage("img1.jpg");
   P2 = loadImage("img2.jpg");
   P3 = loadImage("img3.jpg");
   P4 = loadImage("img4.jpg");
   P5 = loadImage("img5.jpg");
   P6 = loadImage("img2.jpg");
   P7 = loadImage("fondo.jpg");
fuente = createFont("Calisto MT",40);
println(PFont.list());
  texto = "El primer museo de arte\n digital en París:\n L'Atelier des Lumières.\n UN ANTIGUO EDIFICIO\n DE FUNDICIÓN \nCONVERTIDO EN\n UN CENTRO DE\n ARTE DIGITAL.";
  y=150;
  texto2 = "El primer Centro de Arte Digital\n abre sus puertas\n el 13 de abril en París.\n Atelier des Lumières es un\n proyecto desarrollado por\n Culturespaces, una fundación\n que se encarga de las gestión\n y promoción de monumentos,\n museos y centros de arte.";
  texto3 = "El centro situado entre Bastille y\n Nation, se encuentra en el edificio\n de una antigua fundición.\n Ofrecerá exposiciones monumentales,\n utilizando 140 vídeo proyectores y un\n sistema de sonido especializado.";
  texto4 = "Como tiene 140 proyectores, sus\n imagenes estan en alta definicion.\n El sistema de audio completo el\n equipo multimedia que abarca 3.300\n metros cuadrados, desde el suelo al techo.";
  texto5 = "ESTA OBRA DIGITAL SE\n DIVIDE EN DOS PARTES: \n -La Halle, que acoge una exhibición de\n larga duración e inmersiva,\n generalmente dedicada a grandes\n figuras de la historia del arte\n -Y otra exhibición de más corta\n duración dedicada al arte contemporáneo.";
  textSize(50);
  miVariable = 1000;
  println(frameCount);
  contador = 0; 
  
 

}
void draw(){
  println(miVariable);
  
  background (#000000);
  
  
  
  miVariable = cuentaFotograma;
 
  
  textSize(18);
  textAlign(LEFT);
  text(cuentaFotograma,20,40);
  text(estado,20,45);
  
  
  
  if (estado.equals("inicio") ){
  //pantalla de inicio
  fill(#FFFFFF);
 image(P7, 1,1,700,500);
  textSize(50);
 textAlign(CENTER);
 textFont(fuente);
 text("BOTON DE INICIO Y REINICIO",width/2, height/2);
 fill(#EA3B3B);
 ellipse(width/2,300,100,100);
 
 
  }
  
 else if (estado.equals("pantalla 1") ) {
 //pantalla 1
  fill(#FFFFFF);
  image(P, 1,1,320,480);
  image(P2, 320,1,320,480);
 textAlign(CENTER);
 textSize(40);
 fill(#FFFFFF,map(miVariable,0,200,-50,200));
 text(texto,310,50);
 
 //incremnto del contador:
 cuentaFotograma++;
 if(cuentaFotograma>= 320) {
  estado = "pantalla 2";
  cuentaFotograma = 0;

   
 }
  
 }
 else if (estado.equals("pantalla 2") ) {
 //pantalla 2
  fill(#FFFFFF);
  image(P4, 1,1,700,500);
 textAlign(CENTER);
 textSize(31);
 text(texto2,miVariable-1,70);
 
  //incremnto del contador:
 cuentaFotograma++;
 if(cuentaFotograma>= 400) {
  estado = "pantalla 3";
  cuentaFotograma = 0;
   
 }
  
 }
 
 else if(estado.equals("pantalla 3") ) {
  //pantalla 3
  fill(#FFFFFF);
  image(P3, 1,1,650,500);
 textAlign(CENTER);
 textSize(37);
 text(texto3,310,430-miVariable);
 
 //incremnto del contador:
 cuentaFotograma++;
 if(cuentaFotograma>= 400) {
  estado = "pantalla 4";
   cuentaFotograma = 0;
 }
 
 
 
}
else if(estado.equals("pantalla 4") ) {
  //pantalla 4
  fill(#FFFFFF);
  image(P5, -20, -10,800,500);
 textAlign(CENTER);
 textSize(35);
  text(texto4, 600-miVariable, 130);
  
  //incremnto del contador:
 cuentaFotograma++;
 if(cuentaFotograma>= 490) {
  estado = "pantalla 5";
  cuentaFotograma = 0;
   
 }
}
else if(estado.equals("pantalla 5") ) {
  //pantalla 5
  fill(255);
  image(P2,1,1,650,500);
   textAlign(CENTER);
   textSize(0.5+contador);
   text(texto5, 310, 100);
   if(contador<32){
    contador++; 
   }
     
  //incremnto del contador:
 cuentaFotograma++;
 if(cuentaFotograma>= 620) {
  estado = "inicio";

   
 }

}

}
  
void mousePressed() { 
if (estado.equals("inicio") ){
  if(dist(mouseX,mouseY,width/2,300)<50) {
  miVariable = 1000;
  contador = 0; 
  estado = "pantalla 1";
  cuentaFotograma = 0;
   y=150;
   x=0;
   velx=3;
  }
}  else if (estado.equals("pantalla 1") ) {
  estado = "pantalla 2";
  cuentaFotograma = 0;
}  else if (estado.equals("pantalla 2") ) {
  estado = "pantalla 3";
  cuentaFotograma = 0;
}  else if (estado.equals("pantalla 3") ) {
  estado = "pantalla 4";
  cuentaFotograma = 0;
}  else if (estado.equals("pantalla 4") ) {
  estado = "pantalla 5";
  cuentaFotograma = 0;
}  else if (estado.equals("pantalla 5") ) {
  estado = "inicio";
  cuentaFotograma = 0;
}

  
  
}
