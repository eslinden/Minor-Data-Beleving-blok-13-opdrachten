 import processing.pdf.*;

void setup() {
  colorMode(HSB, 360, 100, 100);
  size(600, 600, PDF, "vierkant9.pdf");
  //size(600, 600);
  background(0, 0, 20);
  noStroke();
  
  int getal = 230;
  int getal2 = 360;
  int saturation = 60;
  float brightness = random(60,80);

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      fill(random(261), 0, 100);
      rect(0, 0, 600, 600);

      fill(random(getal, getal2), saturation, brightness);
      rect(1, 1, 598, 598);

      fill(random(getal, getal2), saturation, brightness);
      rect(50, 80, 498, 498);

      fill(random(getal, getal2), saturation, brightness);
      rect(100, 150, 398, 398);

      fill(random(getal, getal2), saturation, brightness);
      rect(150, 220, 298, 298);
    }
  }
}

void draw() {
  println("Finished.");
  exit();
}

