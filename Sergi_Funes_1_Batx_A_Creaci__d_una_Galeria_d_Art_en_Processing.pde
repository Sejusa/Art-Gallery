PImage[] obrasDeArte;
String[] titulos;
String[] descripciones;
int currentArtwork;
boolean openWindow; //Para controlar si hay una ventana abierta.
boolean imageOpen; //Para controlar si tenemos una imagen abierta.
int cols = 3; // Número de columnas en la cuadrícula
int rows = 2; // Número de filas en la cuadrícula
int padding = 20; // Espacio entre las imágenes
int marcoColor = #703720; // Color del marco
int i = 0;

void setup() {
  size(800, 600);
  obrasDeArte = new PImage[5];
  titulos = new String[5];
  descripciones = new String[5];
 
  // Crear imágenes y agregar títulos y descripciones
  obrasDeArte[0] = loadImage("Cuadros-de-Arte.jpg");
  obrasDeArte[1] = loadImage("Cielo-Estrellado.jpg");
  obrasDeArte[2] = loadImage("WTF.jpg");
  obrasDeArte[3] = loadImage("Mona-Lisa.jpg");
  obrasDeArte[4] = loadImage("Capilla-Sixtina.jpg");
  
  titulos[0] = "La persistencia de la memoria.";
  titulos[1] = "La noche estrellada.";
  titulos[2] = "El grito.";
  titulos[3] = "La gioconda.";
  titulos[4] = "Fragmento de la Capilla Sixtina.";

  descripciones[0] = "Pintado por Salvador Dalí en 1931.";
  descripciones[1] = "Pintado por ‎Vincent van Gogh en 1889.";
  descripciones[2] = "Pintado por Edvard Munch en 1893.";
  descripciones[3] = "Pintado por Leonardo Da Vinci en 1797.";
  descripciones[4] = "Se encuentra en el Vaticano.";
  
  //Los dos for para hacer los 5 cuadros.
  for(var x = 50; x < 750; x += 250){
    rect(x, 50, 200, 200);
  }
  
  for(var x = 120; x < 750; x += 350){
    rect(x, 300, 200, 200);
  }
  
  image(obrasDeArte[0], 50, 50, 200, 200);
  image(obrasDeArte[1], 300, 50, 200, 200);
  image(obrasDeArte[2], 550, 50, 200, 200);
  image(obrasDeArte[3], 120.5, 300, 200, 200);
  image(obrasDeArte[4], 470, 300, 200, 200);
}                  

void draw(){
  
  if(imageOpen){
    //Los dos for para hacer los 5 cuadros.
    for(var x = 50; x < 750; x += 250){
      rect(x, 50, 200, 200);
    }
  
    for(var x = 120; x < 750; x += 350){
      rect(x, 300, 200, 200);
    }
  
      image(obrasDeArte[0], 50, 50, 200, 200);
      image(obrasDeArte[1], 300, 50, 200, 200);
      image(obrasDeArte[2], 550, 50, 200, 200);
      image(obrasDeArte[3], 120.5, 300, 200, 200);
      image(obrasDeArte[4], 470, 300, 200, 200);
      
      imageOpen = false;
  }
  
  else if(imageOpen = false){
    //No dibujamos nada para que el cuadro que se dibuja en la función "mouseClicked" no sea superpuesto por los marcos.
  }
}

void mouseClicked(){
  textSize(20);
  if(mouseX > 50 && mouseX < 250 && mouseY > 50 & mouseY < 250 && openWindow){
    image(obrasDeArte[0], 100, 0, 600, 600);
    text(titulos[0], 300, 40);
    text(descripciones[0], 300, 80);
    openWindow = false;
    i = 0;
    }
    
    else if(mouseX > 300 && mouseX < 500 && mouseY > 50 && mouseY < 250 && openWindow){
      image(obrasDeArte[1], 100, 0, 600, 600);
      text(titulos[1], 300, 40);
      text(descripciones[1], 300, 80);
      openWindow = false;
      i = 1;
    }
    
    else if(mouseX > 550 && mouseX < 750 && mouseY > 50 && mouseY < 250 && openWindow){
      image(obrasDeArte[2], 100, 0, 600, 600);
      text(titulos[2], 300, 40);
      text(descripciones[2], 300, 80);
      openWindow = false;
      i = 2;
    }
    
    else if(mouseX > 120.5 && mouseX < 320 && mouseY > 300 && mouseY < 500 && openWindow){
      image(obrasDeArte[3], 100, 0, 600, 600);
      text(titulos[3], 300, 40);
      text(descripciones[3], 300, 80);
      openWindow = false;
      i = 3;
    }
    
    else if(mouseX > 470 && mouseX < 670 && mouseY > 300 && mouseY < 500 && openWindow){
      image(obrasDeArte[4], 100, 0, 600, 600);
      text(titulos[4], 300, 40);
      text(descripciones[4], 300, 80);
      openWindow = false;
      i = 4;
    }
    
    else if(openWindow == false){
      background(#B9B4B4);
      openWindow = true;
      imageOpen = true;
    }
    
    else{
    }
}

void keyPressed(){
  textSize(20);
  if(keyCode == RIGHT){
    if(i == 0 && i < 5){
      image(obrasDeArte[0], 100, 0, 600, 600);
      text(titulos[0], 300, 40);
      text(descripciones[0], 300, 80);
      i++;
    }
    else if(i == 1 && i < 5){
      image(obrasDeArte[1], 100, 0, 600, 600);
      text(titulos[1], 300, 40);
      text(descripciones[1], 300, 80);
      i++;
    }
    else if(i == 2 && i < 5){
      image(obrasDeArte[2], 100, 0, 600, 600);
      text(titulos[2], 300, 40);
      text(descripciones[2], 300, 80);
      i++;
    }
    
    else if(i == 3 && i < 5){
      image(obrasDeArte[3], 100, 0, 600, 600);
      text(titulos[3], 300, 40);
      text(descripciones[3], 300, 80);
      i++;
    }
    
    else if(i == 4 && i < 5){
      image(obrasDeArte[4], 100, 0, 600, 600);
      text(titulos[4], 300, 40);
      text(descripciones[4], 300, 80);
    }
  } 
  else if(keyCode == LEFT){
    textSize(20);
    if(i == 0 && i < 5){
      image(obrasDeArte[0], 100, 0, 600, 600);
      text(titulos[0], 300, 40);
      text(descripciones[0], 300, 80);
    }
    
    else if(i == 1 && i < 5){
      image(obrasDeArte[1], 100, 0, 600, 600);
      text(titulos[1], 300, 40);
      text(descripciones[2], 300, 80);
      i--;
    }
    
    else if(i == 2 && i < 5){
      image(obrasDeArte[2], 100, 0, 600, 600);
      text(titulos[2], 300, 40);
      text(descripciones[2], 300, 80);
      i--;
    }
    
    else if(i == 3 && i < 5){
      image(obrasDeArte[3], 100, 0, 600, 600);
      text(titulos[3], 300, 40);
      text(descripciones[3], 300, 80);
      i--;
    }
    
    else if(i == 4 && i < 5){
      image(obrasDeArte[4], 100, 0, 600, 600);
      text(titulos[4], 300, 40);
      text(descripciones[4], 300, 80);
      i--;
    }
  }
}
