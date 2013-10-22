import processing.pdf.*;

void setup(){
  background(255);
  size(400, 500, PDF, "ijshoorn.pdf");
  
  fill(255);
  stroke(0);
  ellipse(150, 165, 130, 130);
    
  fill(0);
  stroke(0);
  triangle(150, 390, 90, 190, 210, 190);

}

void draw(){
  println("Finished.");
  exit();
}
