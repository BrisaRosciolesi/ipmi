PImage pistola;

void setup(){  
  size( 800, 400 ); 
  background( 255 ); 
 
  pistola = loadImage("minecraft.png");
}

void draw(){  
  background( 205, 199, 187);  
  image( pistola, 0, 35); 
  
  
  fill(134, 129, 118,130); //sombra de arriba
noStroke();
rect(507,87,287,16);
stroke(205, 199, 187);
strokeWeight(10);
line(515,86,507,100);
  
 
  stroke(0);
  strokeWeight(2);
  line( 400, 0, 400, 400 );
  fill (80, 129, 154); 
  stroke (76, 129, 157);
  rect(494, 104, 300, 68);
  rect( 472, 122, 21, 50);
  rect( 494, 172, 69, 17);
  rect(630, 172, 55, 17);
  rect( 472, 189, 186, 20); 
 rect( 455,209, 107 ,17); 
 rect( 438, 226, 107 , 17);
 rect( 438, 243, 90, 17);
 rect(438, 260, 73, 25);
 
 fill(36, 41, 46);
 stroke(36, 41, 46); 
 rect(498,111,40,20); 
 rect(498, 130,20,21);
 rect(586, 111, 188 ,20);
 
 fill (99, 43, 51);
 stroke(99, 43, 51);
 rect( 555, 137,223,20);
 rect(640 , 172, 17,12);
rect(505, 192,15,15);
rect(490, 207,15,15);
rect(475, 222,15,15);
rect(520,207,15,15);
rect(505,222,15,15);
rect(490,237,15,15);
rect(460,237,15,30); 
rect(475,252, 15,15);

fill(105, 119, 121,190);
noStroke();
rect(562,173,68,16);

fill(105,119,121,220);
noStroke();
rect(562,173,12,16);

fill(93, 98, 104,190);
  triangle(685,172,686,188,698,172);
  triangle(658,189,658,208,674,189);
  fill(93, 98, 104,200);
  triangle(563,208,563,226,578,208);
  triangle(545,225,545,245,561,225);
  triangle(527,243,527,260,544,243);
  triangle(512,259,512,283,527,259);
  
  fill(146, 137, 124,135);
  ellipse(604,397,70,40);

  fill(146, 137, 124,135);
  ellipse(790,397,70,40);


 println( mouseX + " / " + mouseY);
}
