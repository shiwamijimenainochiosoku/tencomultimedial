PImage imagen1, imagen2, imagen3;
int segundos= 0;
int estado= 0;
boolean arranca, reinicio;
float suma;
float texto1;
float texto2;
float texto3;
int px, py, ancho, alto;
int posX = 200;
PFont lafuente;

void setup() {
  size(640, 480);
  imagen1 = loadImage("th.jpg");
  imagen2 = loadImage("i2.jpg");
  imagen3 = loadImage("i1.jpg");
  px = 220;
  py = 420;
  ancho = 200;
  alto = 50;
  suma=1;
  texto1=0;
  texto2=0;
  texto3=0;
lafuente=loadFont("InformalRoman-Regular-48.vlw");

}

void draw() {
 text(segundos, width/2, 300);
 fill(255);
println( mouseX + ";" + mouseY);
  if (arranca == true) {
    if (frameCount%60==0) {
      segundos ++;
  }
  }
  if (estado==0) {

     image(imagen1, 0, 0, 640, 480);
     
     textFont(lafuente);

    texto1= texto1+0.5;  
     text("la motossierra fue inventada\n y patentada\n en alemania en 1830", texto1,300);
   
     
}
  if (estado==1) {
    image(imagen2, 0, 0, 640, 480);
    fill(255,55,79);
    texto2=texto2+0.5;
    textFont(lafuente);
   
    text("para arrancar la\n motosierra se tiene que\n tirar de la correa"
    ,texto2,200);
    
  }
  if (estado==2) {

     image(imagen3, 0, 0, 640, 480 );
     texto3=texto3+0.5;
     textFont(lafuente);

    text("la motossierra es para cortar\n arboles con mas facilidad",texto3,50,250);
}
  if (segundos<=5) {
    estado = 0;
  if (segundos<=0) {
    if (mouseX>220 && mouseX <420 && mouseY>400 && mouseY<470 ) {
    fill(0, 0, 0, 200);
    }
   else {
    fill(0, 0, 0, 100);
  }
  rect(px, py, ancho, alto);
  fill(0, 0, 0, 255);
  }
} else if (segundos>5 && segundos<= 10) {
    estado = 1;
  } else {
    estado = 2;
    if (segundos>15 ) {
    if (mouseX>220 && mouseX <420 && mouseY>400 && mouseY<470 ) {
    fill(0, 0, 0, 200);
    }
   else {
    fill(0, 0, 0, 100);
  }
  rect(px, py, ancho, alto);
  fill(0, 0, 0, 255);
  }
}
}
void mousePressed() {
  if (mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto) {
    posX += 10;
    arranca = true;
  }
   if (mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto) {
     segundos = 0;
     reinicio = true;
   }
}

void keyPressed() {
  segundos = 0;
  estado =0;
  arranca  = false;
}
