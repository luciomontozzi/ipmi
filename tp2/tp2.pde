//Montozzi, Lucio Lorenzo
PImage Loki1, actores, Loki2, Loki3;
PFont fuente;
int pantalla = 1;
int contador = 0;
int tiempoPorPantalla = 300; // 5 segundos si está a 60fps
float textoY = 200;
float velocidadY = 1;

void setup() {
  size(640, 480);
  Loki1 = loadImage("Loki1.jpg");
  actores = loadImage("actores.jpeg");
  Loki2 = loadImage("Loki2.jpg");
  Loki3 = loadImage("Loki3.jpeg");
  fuente = createFont("Arial", 30);
  textFont(fuente);
}

void draw() {
  background(0);
  contador++;

  if (pantalla == 1) {
    image(Loki1, 0, 0, width, height);
    animartexto("Loki es una serie de Marvel Studios \n" +  
    "estrenada en Disney+");
    if (contador > tiempoPorPantalla) {
      pantalla = 2;
      contador = 0;
      textoY = 200;
    }
  } else if (pantalla == 2) {
    image(actores, 0, 0, width, height);
    animartexto("Con Tom Hiddleston como Loki \n" +
    "Sophia Di Martino como Sylvie \n" +
    "Owen Wilson como Mobius \n " +
    "Ke Huy Quan como Ouroboros \n" +
    "y Jonathan Majors como Victor Timely");
    if (contador > tiempoPorPantalla) {
      pantalla = 3;
      contador = 0;
      textoY = 200;
    }
  } else if (pantalla == 3) {
    image(Loki2, 0, 0, width, height);
    animartexto("Loki es una historia de rendencion \n" + 
    "y autodescubrimiento");
     if (contador > tiempoPorPantalla) {
      pantalla = 4;
      contador = 0;
      textoY = 200;
    }
  } else if (pantalla == 4) {
    image(Loki3, 0, 0, width, height);
    animartexto("Loki es una serie exlente \n" +
    "la cual todo mundo debe de darle una oportunidad");


    //Boton de reinicio
    fill(245, 7, 36);
    rect(240, 400, 160, 40);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(20);
    text("Reiniciar", 320, 420);
  }
}

void mousePressed() {
  if (pantalla == 4) {
    if (mouseX > 240 && mouseX < 400 && mouseY > 400 && mouseY < 440) {
      pantalla = 1;
      contador = 0;
      textoY = 200;
    }
  }
}

// animartexto
void animartexto(String texto) {
  fill(255);
  textAlign(CENTER);
  text(texto, 300, textoY);
  textoY += velocidadY;
}
