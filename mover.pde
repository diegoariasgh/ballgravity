class Mover {
  PVector loc, vel, acc;
  float mass;

  Mover() {
    size(1240, 640);
    loc = new PVector(0, 0);
    vel = new PVector (0, 0);
    acc = new PVector(0, 0);
    mass = 2;
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acc.add(f);
  }

  void update() {
    vel.add(acc);
    loc.add(vel);
    acc.mult(0);
  }
  void display() {
    ellipse(loc.x, loc.y, 30, 30);
    fill(55);
  }

  void checkEdges() {
    if (loc.x>width ) {
      loc.x=width;
      vel.x*=-1;
    } else if (loc.x < 0 ) {
      loc.x=0;
      vel.x*=-1;
    }

    if (loc.y>height) {
      loc.y= height;
      vel.y*=-1;
    } else if (loc.y < 0) {
      loc.y=0;
      vel.y*=-1;
    }
  }
}