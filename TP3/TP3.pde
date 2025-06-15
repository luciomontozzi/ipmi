//TP3
//Montozzi Lucio Lorenzo
//Comision 1
int cant = 5;
int tam;
PImage cuadro;
boolean alternado;

void setup() {
  size(800, 400);
  tam = height / cant;
  cuadro = loadImage("cuadro.jpg"); 
  noStroke();
}

void draw() {
  background(255);
  image(cuadro, 0, 0, 400, 400); 
  cubo(400, 0, cant, tam, alternado);
}

void mousePressed() {
  alternado = !alternado; // cambia colores al hacer clic
}

void cubo(int x, int y, int cant, int tama, boolean alterna) {
  float lado = tama / 2.0;
  for (int i = 0; i < cant; i++) {
    for (int j = 0; j < cant; j++) {
      float px = x + i * lado * 1.5;
      float py = y + j * tama + (i % 2) * (tama / 2);
      boolean invertir = alterna && ((i + j) % 2 == 0);
      cubo3(px, py, lado, invertir);
    }
  }
}

void cubo3(float x, float y, float l, boolean invertido) {
  float px0 = x,         py0 = y;
  float px1 = x + l,     py1 = y - l / 2;
  float px2 = x + 2 * l, py2 = y;
  float px3 = x + l,     py3 = y + l / 2;
  float px4 = x,         py4 = y + l;
  float px5 = x + l,     py5 = y + l * 1.5;
  float px6 = x + 2 * l, py6 = y + l;

  if (invertido) {
    fill(0);      // cara superior
    quad(px0, py0, px1, py1, px2, py2, px3, py3);
    fill(200);    // cara izquierda
    quad(px0, py0, px3, py3, px5, py5, px4, py4);
    fill(255);    // cara derecha
    quad(px3, py3, px2, py2, px6, py6, px5, py5);
  } else {
    fill(255);    // cara superior
    quad(px0, py0, px1, py1, px2, py2, px3, py3);
    fill(150);    // cara izquierda
    quad(px0, py0, px3, py3, px5, py5, px4, py4);
    fill(0);      // cara derecha
    quad(px3, py3, px2, py2, px6, py6, px5, py5);
  }
}
