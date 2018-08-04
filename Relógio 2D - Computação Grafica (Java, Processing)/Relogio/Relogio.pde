void setup() {
  size(800, 600);
}
  float sangle;
  float mangle;
  float hangle;
void draw() {
  background(61, 43, 31);
  translate(width/2, height/2);
  //circunferencia
  fill(109, 53, 26);
  ellipse(0, 0, 400, 400);
  fill(105);
  ellipse(0, 0, 380, 380);
  //numeros
  float r = 160;
  fill(253, 245, 230);
  textSize(40);
  textAlign(CENTER, CENTER);
  for (int i = 0; i<12; i++) {
    String texto = ""+i;
    if (i == 0) {
      texto = "12";
    }
    float angulo = map(i, 0, 12, 0, TWO_PI) - HALF_PI;
    text(texto, r*cos(angulo), r*sin(angulo));
  }
  fill(255);
  textSize(20);
  text("ROLEX", 0, -60);
  ellipse(0, 0, 10, 10);
  //ponteiros
  sangle = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  mangle = map(minute(), 0, 60, 0, TWO_PI) - HALF_PI;
  hangle = map(hour() + minute()/60.0, 0, 24, 0, 2*TWO_PI) - HALF_PI; 
  strokeWeight(1);
  line(0, 0, cos(sangle) * 120, sin(sangle)*120);
  strokeWeight(2);
  line(0, 0, cos(mangle) * 120, sin(mangle)*120);
  strokeWeight(3);
  line(0, 0, cos(hangle) * 80, sin(hangle)*80);
  //pulseira
  stroke(255);
  strokeWeight(4);
  fill(255,255,0);
  line(-400, 70, -187, 70);
  line(-400, -70, -187, -70);
  line(400, 70, 187, 70);
  line(400, -70, 187, -70);
  noFill();
  ellipse(-360, 0, 30, 30);
  ellipse(-300, 0, 30, 30);
  ellipse(-240, 0, 30, 30);
  ellipse(360, 0, 30, 30);
  ellipse(300, 0, 30, 30);
  ellipse(240, 0, 30, 30);
}