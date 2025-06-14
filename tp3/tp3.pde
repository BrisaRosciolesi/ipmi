
//https://youtu.be/7rhSWcAyAvs



PImage imagenreferencia;
float tamano;
color fondo;
color circulo;
color fondo1;
color circulo1;
color fondo2;
color circulo2;

int grilla = 3;

void setup(){
  size (800,400);
  imagenreferencia = loadImage ("arteoptico.png");
  noStroke();
  fondo1 = color(0, 0, 40);      
  circulo1 = color(40, 0, 200);  

  fondo2 = color(40, 0, 200);      
  circulo2 = color(0, 0, 40);    

}

void draw(){
  background (0);
  image (imagenreferencia, 0,0,400,400); 
    float tamano = calcularTamanoCelda();
  
  for (int fila = 0; fila < grilla; fila++) { // dibujo filas
    for (int col = 0; col < grilla; col++) { //dibujo columnas
      float x = 400+ col * tamano; 
      float y = fila * tamano;
      
      color fondo;
      color circulo;
      
       boolean filaPar = (fila / 2) * 2 == fila; 
      boolean colPar = (col / 2) * 2 == col;
      
      if ((filaPar && colPar) || (!filaPar && !colPar)) { 
        fondo = fondo1;
        circulo = circulo1;
      } else { 
        fondo = fondo2;
        circulo = circulo2;
      }

       cuadradocirculo (x, y, tamano, fondo, circulo);
    }
  }
}


void mousePressed(){
generarColores();
  
}

void keyPressed() {
  if (keyCode == RIGHT) {
    grilla++;
  } else if (keyCode == LEFT && grilla > 1) {
    grilla--;
  }
  
  if (key == 'r' || key == 'R')
  grilla = 3;
  fondo1 = color(0, 0, 40);      
  circulo1 = color(40, 0, 200);  

  fondo2 = color(40, 0, 200);      
  circulo2 = color(0, 0, 40); 
  
}
