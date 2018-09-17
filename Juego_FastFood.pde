jugador j1;
jugador j2;

comida pi;
comida pa;
comida ho;
comida ha;

comida objetoJ1;
comida objetoJ2;

int p;
int TURNO;
boolean J1,J2;
int C,C1;

void setup(){
  size(700,500);
  j1 = new jugador(0);
  j2 = new jugador(0);
  
  pi = new comida(15);
  pa = new comida(5);
  ho = new comida(10);
  ha = new comida(20);
  
  objetoJ1 = new comida();
  objetoJ2 = new comida();
}

void draw(){
  switch(p){
    case 0:
    p1();
    break;
    
    case 1:
    p2();
    break;
    
    case 2:
    p3();
    break;
    
    case 3:
    p4();
    break;
  }
}

void p1(){
  background(250,224,180);
  fill(244,199,31);
  strokeWeight(8);
  rect(160,70,400,80);
  textSize(70);
  fill(240,127,0);
  text("Fast Food",200,135);
  fill(0);
  rect(160,150,10,140);
  strokeWeight(5);
  rect(550,150,10,140);
  fill(244,199,31);
  rect(160,295,400,130);
 
 //hamburguesa 
  fill(213,154,11);
  strokeWeight(1);
  ellipse(290,380,70,30);
  strokeWeight(1);
  fill(163,124,115);
  ellipse(290,380,80,15);
  strokeWeight(1);
  fill(121,167,7);
  ellipse(290,375,75,15);
  fill(213,154,11);
  strokeWeight(1);
  ellipse(290,365,70,30);
  fill(240,220,156);
  strokeWeight(1);
  ellipse(290,365,5,5);
  fill(240,220,156);
  strokeWeight(1);
  ellipse(280,360,5,5);
  fill(240,220,156);
  strokeWeight(1);
  ellipse(300,360,5,5);
  fill(240,220,156);
  strokeWeight(1);
  ellipse(300,370,5,5);
  fill(240,220,156);
  strokeWeight(1);
  ellipse(280,370,5,5);
  fill(240,220,156);
  strokeWeight(1);
  ellipse(270,365,5,5);
  fill(240,220,156);
  strokeWeight(1);
  ellipse(310,365,5,5);
  
 //papas
 fill(227,189,47);
 rect(390,330,10,30);
 fill(227,189,47);
 rect(401,325,10,30);
 fill(227,189,47);
 rect(410,333,10,30);
 fill(227,189,47);
 rect(415,330,10,30);
 fill(220,0,0);
 rect(385,350,45,50);
  
  textSize(15);
  text("Presiona ENTER para continuar",250,230);
  
  if(key == ENTER){
    p = 1;
  }
}

void p2(){
  background(250,224,180);
  textSize(30);
  fill(0);
  text("Seleciona tres comidas diferentes",100,75);
  textSize(20);
  text("Pizza",50,125);
  text("Presiona Q\nJugador 1",50,150);
  text("Presiona 1\nJugador 2",50,400);
  text("Papas",200,125);
  text("Presiona W\nJugador 1",200,150);
  text("Presiona 2\nJugador 2",200,400);
  text("HotDog",350,125);
  text("Presiona E\nJugador 1",350,150);
  text("Presiona 3\nJugador 2",350,400);
  text("Hamburguesa",500,125);
  text("Presiona R\nJugador 1",500,150);
  text("Presiona 4\nJugador 2",500,400);
  if(keyPressed){
  switch(key){
    case 'q':
    J1 = true;
    C = 0;
    break;
    
    case 'w':
    J1 = true;
    C = 1;
    break;
    
    case 'e':
    J1 = true;
    C = 2;
    break;
    
    case 'r':
    J1 = true;
    C = 3;
    break;
  
    case '1':
    J2 = true;
    C1 = 0;
    break;
    
    case '2':
    J2 = true;
    C1 = 1;
    break;
    
    case '3':
    J2 = true;
    C1 = 2;
    break;
    
    case '4':
    J2 = true;
    C1 = 3;
    break;
  }
  }
  
  translate(100,300);
  pi.pizza();
  translate(150,0);
  pa.papas();
  translate(150,0);
  ho.hotdog();
  translate(150,0);
  ha.hamburguesa();
  
  if (J1 && J2){
    p = 2;
    TURNO = 1;
  }
  
}

void p3(){
  
  background(255);
  
  textSize(25);
  fill(0);
  text("PS:",50,450);
  text(j1.vida,100,450);
  text("PS:",500,450);
  text(j2.vida,550,450);
  
  j1.display(100,200);
  j2.display(600,200);
  
  if(TURNO==1){
    text("Presiona A para lanzar comida",50,75);
    if(keyPressed){
      if(key  == 'a' || key == 'A'){
        j2.vida = j2.vida+objetoJ1.d;
        TURNO=2;
      }
    }
  }
  
  if(TURNO==1){
    text("Presiona L para lanzar comida",150,75);
    //if(keyPressed){
      if(key  == 'l' || key == 'L'){
        j1.vida = j1.vida+objetoJ2.d;
        TURNO=1;
      }
    //}
  }
  
  translate(200,300);
  
  switch(C){
    case 0:
    objetoJ1 = pi;
    objetoJ1.pizza();
    break;
    
    case 1:
    objetoJ1 = pa;
    objetoJ1.papas();
    break;
    
    case 2:
    objetoJ1 = ho;
    objetoJ1.hotdog();
    break;
    
    case 3:
    objetoJ1 = ha;
    objetoJ1.hamburguesa();
    break;
  }
  
  translate(350,0);
  
  switch(C1){
    case 0:
    objetoJ2 = pi;
    objetoJ2.pizza();
    break;
    
    case 1:
    objetoJ2 = pa;
    objetoJ2.papas();
    break;
    
    case 2:
    objetoJ2 = ho;
    objetoJ2.hotdog();
    break;
    
    case 3:
    objetoJ2 = ha;
    objetoJ2.hamburguesa();
    break;
  }
  
  if(j1.vida <= 100 || j2.vida <= 100){
    p = 3;
  }
}

void p4(){
  background(0);
  textSize(80);
  fill(255);
  text("GANASTE",100,200);
  textSize(20);
  text("Presiona ESC para cerrar",100,400);
}

class comida{
  int d;
  
  comida(int d_){
    d = d_;
  }
  
  comida(){
  }
  
  void pizza(){
    fill(0);
    rectMode(CENTER);
    rect(0,0,30,30);
  }
  
  void hamburguesa(){
   fill(242,78,217);
   ellipse(0,0,30,30);
  }
  
  void papas(){
    fill(152,223,70);
    rectMode(CENTER);
    rect(0,0,10,30);
  }
  
  void hotdog(){
    fill(70,165,223);
    rectMode(CENTER);
    rect(0,0,30,10);
  }
}

class jugador{
  int vida;
  jugador(int vida_){
    vida = vida_;
  }
  
  void display(int x, int y){
    rectMode(CENTER);
    rect(x,y,70,250);
  }
}