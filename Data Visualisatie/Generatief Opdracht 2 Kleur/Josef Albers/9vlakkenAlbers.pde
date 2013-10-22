void setup() {
  colorMode(HSB, 360, 100, 100);
  size(600, 600);
  background(0, 0, 20);
  noStroke();
  
  int getal = 175;
  int getal2 = 360;
  int saturation = 75;
  int brightness = 70;

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      fill(random(261), 0, 100);
      rect(25+115*i, 25+115*j, 90, 90);

      fill(random(getal, getal2), saturation, brightness);
      rect(26+115*i, 26+115*j, 88, 88);

      fill(random(getal, getal2), saturation, brightness);
      rect(36+115*i, 42+115*j, 68, 68);

      fill(random(getal, getal2), saturation, brightness);
      rect(46+115*i, 55+115*j, 50, 50);

      fill(random(getal, getal2), saturation, brightness);
      rect(54+115*i, 66+115*j, 34, 34);
    }
  }
}

void draw() {
}

