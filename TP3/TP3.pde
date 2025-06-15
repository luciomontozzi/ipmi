//TP3
//Montozzi Lucio Lorenzo
//Comision 1
int cant = 5;
int tam;

PImage cuadro;
void setup(){
 size(800,400); 
  tam = height/cant;
cuadro =loadImage("cuadro.jpg");

  }
  
  void draw(){ 
    background(255);
    image(cuadro, 0, 0, 400, 400); //Fondo; imagen en la mitad de la pantalla izquierda 
        
  }
 
  
    
 
