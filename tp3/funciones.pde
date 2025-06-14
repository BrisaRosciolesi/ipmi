

//funcion que NO retorna valor
void cuadradocirculo(float x, float y, float tamano, color fondo, color circulo){
  fill (fondo);
  rect(x,y,tamano,tamano);
  
  fill (circulo);
  ellipse (x+tamano/2, y+ tamano/2, tamano, tamano); 
}
  void generarColores() { 
  float r = random(255);
  float g = random(255);
  float b = random(255);

  fondo1 = color(r * 0.5, g * 0.5, b * 0.5); 
  circulo1 = color( 
    map(r, 0, 255, r, 255),
    map(g, 0, 255, g, 255),
    map(b, 0, 255, b, 255)
  );  

  fondo2 = circulo1;  // claro
  circulo2 = fondo1;  // oscuro
}

//funcion que retorna valor
float calcularTamanoCelda() {
  return height / grilla;
}
