//By Aleksa

float ballY = 400, Yvel = 5;
float ballX = 400, Xvel = 5;
int score = 0;

float padY;

boolean racket() {
  if(ballY > mouseY - 100 && ballY < mouseY + 100) {
    return true;
  }
  return false;
}

void setup() {
  size(800,800);
}

void draw() {
  background(125);
  
  fill(#FF0000);
  textSize(50);
  text(""+score+"",10,50);
  ellipse(ballX,ballY,50,50);
  rect(725,mouseY - 100,25,200);
  
  if(ballY >= 775 || ballY <= 25) {
    Yvel = -Yvel;
  }
  
  if(ballX >= 775 || ballX <= 25) {
    Xvel = -Xvel;
  }
  
  if(ballX == 725 && racket() == true) {
    Xvel = -Xvel;
    score = score + 1;
  }
  
  ballY = ballY + Yvel;
  ballX = ballX + Xvel;
}