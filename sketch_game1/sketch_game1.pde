//Setup

float x = 400,y = 400;
float[][] level1 = new float[][] {{350,400}};

void initLevel(float[][] level, int l) {
  for(int i = 0; i < l; i++) {
    rect(level[i][0],level[i][1],20,20);
  }
}

void setup() {
  size(800,800);
}

void draw() {
  //frame
  background(125);
  //player
  ellipse(x,y,20,20);
  //level
  initLevel(level1,1);
  keyPressed();
}

void keyPressed() {
  if(key == 'w') {
    y = y - 1;
  }
  if(key == 's') {
    y = y + 1;
  }
  if(key == 'a') {
    x = x - 1;
  }
  if(key == 'd') {
    x = x + 1;
  }
}

void keyReleased() {
  key = 0;
}