void setup() {
  //Instellingen voor: kleur, titel frame, afmeting
  colorMode(HSB, 360, 100, 100);
  frame.setTitle("Eindopdracht Processing - Emma van der Linden");
  int breedte = 1020;
  int hoogte = 660;
  background(0, 0, 95);
  size(breedte, hoogte);

  //Roept het KNMI bestand aan
  String regels[] = loadStrings("KNMI_20130831.txt");

  //Zet gemiddelde windsnelheid en hoogste op 0
  int gemWindsnelheid = 0;
  int hoogsteWindsnelheid = 0;

  //Titel properties
  noStroke();
  fill(0, 0, 75);
  rect(0, 0, breedte, 30);
  fill(0, 100, 0);
  textSize(18);
  text("Wat was het verschil in Augustus 2013 per dag tussen de gemiddelde en de hoogste windsnelheid op Terschelling?", 10, 20);

  //Legenda properties
  textSize(12.2);
  text("Gemiddelde windsnelheid:", 10, 50); 
  text("Hoogste windsnelheid:", 10, 70); 
  fill(225, 80, 70);
  rect(180, 40, 12, 12);
  fill(200, 70, 85, 180);
  rect(180, 60, 12, 12);

  //Maak evenveel bars als aantal dagen
  for (int i = 0; i < regels.length; i++) {    
    if (i > 0) {  
      //Laadt de juiste gegevens uit het KNMI bestand
      String[] list = split(regels[i], ',');
      gemWindsnelheid = int(trim(list[2]));
      hoogsteWindsnelheid = int(trim(list[3]));

      //Variablen zodat de hoogte van de bars en tekst snel en makkelijk aangepast kunnen worden
      int hoogteBar = 65;
      int hoogteGetal = 79;

      //Hoogste snelheid & getal van data
      stroke(0, 100, 0);
      fill(200, 70, 85, 180);
      rect(10, i*17+hoogteBar, hoogsteWindsnelheid*4, 17, 2);
      fill(0, 100, 0);
      text(hoogsteWindsnelheid, hoogsteWindsnelheid*4-15, 17*i+hoogteGetal);

      //Gemiddelde snelheid & getal van data
      fill(225, 80, 70);
      rect(10, i*17+hoogteBar, gemWindsnelheid*4, 17, 2);
      fill(0, 0, 100);
      text(gemWindsnelheid, gemWindsnelheid*4-10, 17*i+hoogteGetal);

      //Roept datum op
      fill(10, 0, 100);
      text(int(trim(list[1])), 14, 17*i+hoogteGetal);

      //Roept tekst Verschil op
      fill(10, 100, 0);
      int verschil = (hoogsteWindsnelheid - gemWindsnelheid);
      String messagetest = "dit is een test" + verschil;
      text("Verschil: " + verschil + " m/s", hoogsteWindsnelheid*4+15, 17*i+hoogteGetal);
    }
  }

  //Bronvermelding properties
  noStroke();
  fill(0, 0, 75);
  rect(0, hoogte-35, breedte, hoogte - 35);
  fill(0, 0, 0);
  text("Bron: KNMI", 10, hoogte-15);
}

void draw() {
}

