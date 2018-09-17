Mover ball;

void setup() {
  size(1240, 640);
  ball = new Mover();
}

void draw() {
  background(255);
  PVector wind = new PVector(.05, .05);
  PVector wind2 = new PVector(0, cos(radians(millis())*.01));
  PVector gravity = new PVector(.01, 1);
  
  if (ball.loc.x < 200) {     
    ball.applyForce(wind);
  } 
  if ((ball.loc.x)>200 && (ball.loc.x < 1000)) {
    ball.applyForce(wind2);
  }
  if (ball.loc.x > 1000) {
    ball.applyForce(gravity);
  }
   if (ball.loc.x > 1200) {
    ball.loc.x = width;
    ball.loc.y= height;
  }
  
  print("loc x: ");
  println(ball.loc.x);
  
  ball.update();
  ball.display();
  ball.checkEdges();
}