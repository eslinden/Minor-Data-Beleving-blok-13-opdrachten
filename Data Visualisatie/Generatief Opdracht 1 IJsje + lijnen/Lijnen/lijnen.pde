void setup(){
  int breedte = 600;
  int lengte = 500;
  
  background(0);
  size(breedte, lengte);
  strokeWeight(7);
  
  int[] kleuren = {0, #FF0000, #0000FF, #00FF00, #AF1BE0, #E08B1B, 
#1BE0BF, #D5B6F2, #F2DCB6, #B6F2E5};
  int getalhor = 0;
  int getalvert = 0;
  
  for(int i = 0; i < lengte; i++){
    getalhor++;
      if (getalhor < 4){
        stroke(kleuren[getalhor]);
      }
      else if (getalhor > 3 && getalhor < 6){
        getalhor = 6;
      }
      else if (getalhor > 6 && getalhor < 10) {
         stroke(kleuren[getalhor]);
      }
      else if (getalhor > 9){
        getalhor = 0;
      }
    line(0, (i * 14), breedte, (i*14));
  }

  for(int i = 0; i < lengte; i++){
    getalvert++;
      if (getalvert < 7){
          stroke(kleuren[getalvert]);
      }
      else if (getalvert > 6){
         getalvert = 0;
      }
    line((i*14), 0, (i*14), lengte);
  }
}

void draw(){
}
