//tp2
//Montozzi Lucio Lorenzo
//Comision 1
PImage Loki1, Loki2, Loki3;
int pantalla = 1;
int contador = 0;
int tiempoPorPantalla = 300; // 4 segundos si está a 60fps
PFont fuente;
float textoY = 100;
float velocidadY = 1;

String texto1 = "Loki es una serie de Marvel Studios \n" +  
    "estrenada en Disney+";
    
String texto2 = "Loki nos cuenta la historia de una variante \n" + 
"de Loki que se desvio de la linea de tiempo.\n" +
"Durante la serie Loki conocera a variantes de el mismo, \n" +
"que fueron desviadas de su linea temporal \n" + 
"al ser consideradas errores";

String texto3 = "A lo largo de la serie veremos como Loki pasa de ser \n" +
"el Dios de las mentiras, a convertirse en el dios y guardian \n" +
"del tiempo y espacio";


void setup() {
  size(640, 480);
   fuente = createFont("Arial", 22);
  textFont(fuente);
  Loki1 = loadImage("Loki1.jpg");
  Loki2 = loadImage("Loki2.jpg");
  Loki3 = loadImage("Loki3.jpeg");
 
}

void draw() {
background(0);
contador++;
 if (pantalla == 1) {
    image(Loki1, 0, 0, width, height);
    
    fill(255);
    textAlign(CENTER);
    text(texto1, width / 2, textoY);
    textoY += velocidadY;

    if (contador > tiempoPorPantalla) {
      pantalla = 2;
      contador = 0;
      textoY = 100;
    }
  }
 else if (pantalla == 2) {
    image(Loki2, 0, 0, width, height);
    
    fill(255);
    textAlign(CENTER);
    text(texto2, width / 2, textoY);
    textoY += velocidadY;

    if (contador > tiempoPorPantalla) {
      pantalla = 3;
      contador = 0;
      textoY = 100;
    }
  }

 else if (pantalla == 3) {
  image(Loki3, 0, 0, width, height);
  
  fill(255);
  textAlign(CENTER);
  text(texto3, width / 2, textoY);
  textoY += velocidadY;

  // Mostrar botón solo cuando pasa el texto
  if (contador > tiempoPorPantalla) {
    // Botón de reinicio
    fill(245, 7, 36);
    rect(240, 400, 160, 40);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(20);
    text("Reiniciar", 320, 420);
  }
}
}

void mousePressed() {
  if (pantalla == 3 && mouseX > 240 && mouseX < 400 && mouseY > 400 && mouseY < 440) {
    pantalla = 1;
    contador = 0;
    textoY = 100;
  }
}
