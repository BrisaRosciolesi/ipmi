PImage Portada;
PImage DiapoDos;
PImage DiapoTres;
PImage DiapoCuatro;
PImage DiapoFinal;
int transparente = 0;
int Animado = 0;
int x = 0;
String estado;
int e;
PFont miFuente;
int posXtexto = 0;
float posx = 0;   
float posy=0;



 void setup () {
   text(int(frameCount/60),15,15);
   size( 640, 480 );
  textAlign(CENTER, CENTER);
   Portada = loadImage ("PORTADA.jpg");
   DiapoDos = loadImage ("pantalla 2.jpg");
   DiapoTres= loadImage ("sims.jpg");
   DiapoCuatro = loadImage("amor.jpg");
   DiapoFinal = loadImage ("finall.jpg");
   estado = "pantalla-1";
  miFuente = loadFont ("forsaking.vlw");
  textFont (miFuente, 32);
     e = 1;
 }
 
 void draw() {
   
   //-------------------------------------------PANTALLA 1
   if ( e == 1 ) {
     background (0);
     if (Animado < 220){
  Animado++;}
   image (Portada,0, 0, Animado*3,Animado*3); 
   }
     
     if( frameCount == (60*5) ){
       e = 2;  
     }
     //---------------------------------------------PANTALLA 2
  else if ( e == 2 ) {

     background( 0, 100, 0 );  //verde

 image (DiapoDos, 0, 0, 640,480); 
 textSize(23);
 fill(255,0,0);
 Animado = frameCount;
 textAlign(CENTER,CENTER);
 text ("Los Sims 4 es un videojuego de simulación de vida \ndesarrollado por Maxis y publicado por Electronic Arts.\nFue lanzado el 2 de septiembre de 2014 \npara PC, y más tarde adaptado a consolas\n como PlayStation y Xbox. \nForma parte de la exitosa franquicia Los Sims,\n iniciada en el año 2000.",330,Animado-200);

     
     if( frameCount == (60*10) ){
       e = 3;  
     }
      } else if ( e == 3 ) {
     // ----------------------------------PANTALLA 3
     
      if (transparente < 255) {
    transparente = transparente + 2; }

tint(255, transparente); 
image (DiapoTres, 0,0,640,480);
Animado = frameCount;
fill(193,242,242);
textAlign(RIGHT,RIGHT);
fill(0);
text ("Permite al jugador crear\n y controlar \npersonajes virtuales,llamados Sims,\n gestionando todos los aspectos de sus vidas. \nSe puede Construir sus casas y \nDecidir su apariencia, personalidad, aspiraciones, \ntrabajos y relaciones sociales.",Animado-220,300);


      if(frameCount == (60*15) ){
       e = 4;  
     }
     } else if ( e == 4) {
       //----------------------------------------PANTALLA 4
    background (255);
      image(DiapoCuatro,0,0,posx,500);
    posx = posx + 2.2;
      Animado = frameCount;
      fill(0);
         text ("Los Sims tienen emociones dinámicas\n que influyen en sus acciones, \nhaciendo el juego más realista. \nUna de las características clave es que\n no tiene un objetivo fijo, \nlo que permite jugar de forma libre y creativa.",posx+ 5,300);
      
      
     
      
       if(frameCount == (60*20) ){
       e = 5;  
       }
            } else if ( e == 5) {
//---------------------------------------PANTALLA 5
      background(255);
   image(DiapoFinal,0,0,640,480);
       fill (0,0,255);
       strokeWeight(1);
           rect(70, 370, 120,50); 
           fill (255);
           textSize(25);
         text ("Reiniciar",183, 400);
       
     }}
void mousePressed (){
   if ( mouseX > 70 && mouseX < 70+120 && mouseY > 370 && mouseY < 370+50 ) {
e = 1;  
    Animado = 0;  
    transparente = 0;  
    posx = 0;  
    posy = 0;  
    frameCount = 0; 
    estado = "pantalla-1";
    

 }}
    
     
     
