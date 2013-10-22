void setup(){
  colorMode(HSB, 360, 100, 100);
  size(900, 650);
  frameRate(10);
  
  float rk1 = random(0,2);
  if (rk1 > 1){
    background(random(300, 360), 20, 90);
  }
  else{
    background(random(0, 60), 20, 90);
  }
  
}

void draw(){
  for(int i = 0; i < 50; i++){
    for(int j = 0; j < 50; j++){
      float opacity = random(50, 200);
      float kleur = 0;
      float rk2 = random(0,2);
      float x = random(10,75);
      
      if (rk2 > 1){
        kleur = random(0, 60);
      }
      else {
        kleur = random(300, 360);
      }
      
      fill(kleur, 50, 100, opacity);
      stroke(kleur, 100, 50, opacity);
      
      ellipse(10+i*x, 10+j*x, x, x);
      rect(i*x, j*x, x, x);
    }
  }
}
