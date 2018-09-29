 //<>//
float x;
float y;
color fernColor = color(0, 255, 0);

void setup() {
  background(0);
  size(600, 600);
}

void draw() {
  for(int i = 0; i < 1000; i++){
    drawPoint();
  }
}

void drawPoint() {
  float px = map(x, -2.1820, 2.6558, 0, width);
  float py = map(y, 0, 9.998, height, 0);

  strokeWeight(1);
  stroke(newColor());
  point(px, py);

  float rand = random(1);
  if (rand < 0.01) {
    function1();
  } else if (rand < 0.86) {
    function2();
  } else if (rand < 0.93) {
    function3();
  } else {
    function4();
  }
}

color newColor(){
   float rand = random(1);
   color c;
   if(rand < 0.33){
     c= color(255,0,0);
   }else if(rand < 0.66){
     c= color(0,255,0);
   }else{
     c= color(0,0,255);
   }
   return c;
}

void function1() {
  float newX = 0;
  float newY = 0.16 * y;
  x = newX;
  y = newY;
}

void function2() {
  float newX = 0.85 * x + 0.04 *  y ;
  float newY = -0.04 * x + 0.85 * y + 1.6;
  x = newX;
  y = newY;
}

void function3() {
  float newX = 0.2 * x - 0.26 *  y ;
  float newY = 0.23 * x + 0.22 * y + 1.6;
  x = newX;
  y = newY;
}

void function4() {
  float newX = -0.15 * x + 0.28 *  y ;
  float newY = 0.26 * x + 0.24 * y + 0.44;
  x = newX;
  y = newY;
}
