//tp3
//Montozzi Lucio Lorenzop
//Comision 1
//https://youtu.be/l2mm9TWR_jY
PImage cuadro;
int cant= 8;
int cant2= 9; 
int tam;  
color cambiar;
color colorcubo = color(255);

void setup() {
  size(800, 400);
  tam = height/cant;
  cuadro = loadImage("cuadro.jpg"); 
  noStroke();
  cambiar = color(255);
  
}

void draw() {
  background(230);
   for (int i = 0; i < cant; i++) {
    for (int j = 0; j < cant2; j++) {
      float lado = tam/1.7;
      float px = 400 + i * 60;
      float py= -15 + j * 90;
    
      Dibujarcubo(px, py, lado);
    }
   }
  for (int i = 0; i < cant2; i++) {
    for (int j = 0; j< cant2; j++) {
      float lado = tam/1.7;
      float px = 370 + i * 60;
      float py= 30 + j * 90;
      
      Dibujarcubo(px, py, lado); 
    }
  }
  image(cuadro, 0, 0, 400, 400);
}

float calcularBrillo(color c) {
  float r = red(c);
  float g = green(c);
  float b = blue(c);
  return (r + g + b) / 3.0;
}

void mousePressed() {
  cambiar = color(random(255), random(255), random(255));
  float brillo = calcularBrillo(cambiar);

  if (brillo > 120) {
    println("Color claro");
  } else {
    println("Color oscuro");
  }
}


void keyPressed() {
  if (key == 'r' || key == 'R') {
    cambiar = color(255);
  }
}
