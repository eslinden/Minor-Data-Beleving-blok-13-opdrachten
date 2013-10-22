void setup(){
  size(600, 400);
  colorMode(HSB, 360, 100, 100);
  background(0, 0, 100);
  
  int kleur = 333;

  for(int i = 0; i < 10; i++){
    noStroke();
    fill(kleur, 100-i*10, 100);
    rect(40+(i*50), 40, 50, height-90);
  }

}

void draw(){
}
