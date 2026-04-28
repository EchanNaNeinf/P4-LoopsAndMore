//BECAUSE NOW I KNOW THAT PAIN CANNOT DEFINE THE PAST
//WE ARE BUILD TO OVERCOME ENDLESS MISHAP
//YOU KNOW, IT'S NOT SO BAAAADD
//WHEN YOU ARE WITH ME
//CHERISH MEMORIES FROM THE PAST
//AND S IS NOT FOR SAYONARA
//LET MEMORIES PLAY BAAAAAACCCCKKKK
color pot = color(140, 100, 100);
color water = color(70, 70, 190);
color sand = color(230, 220, 150);
float timer = 0;
void setup() {
  size(800, 600);
}
void draw() {
  timer++;
  stroke(1);
  fill(pot);
  background(150, 150, 200);
  ellipse(400, 200, 500, 600);
  fill(150, 150, 200);
  noStroke();
  rect(0, 0, 800, 200);
  stroke(1);
  strokeWeight(4);
  fill(pot);
  ellipse(400, 200, 500, 200);
  fill(sand);
  ellipse(400, 200, 460, 180);
  fill(water);
  arc(400, 200, 460, 180, HALF_PI, PI+HALF_PI);
  fill(150, 150, 200);
  noStroke();
  beginShape();
  vertex(390+sin(timer/30-0.2), 112);
  vertex(390+4*sin(timer/30), 200);
  vertex(390+sin(timer/30-0.1), 288);
  vertex(410+sin(timer/30+0.6), 288);
  vertex(410+4*sin(timer/30+0.4), 200);
  vertex(410+sin(timer/30+0.5), 112);
  endShape(CLOSE);
  stroke(4);
  for (int i =0; i<4; i++) {
    for (int j = i; j<4; j++) {
      hexagon(i*100+100+j*50, 550-i*25);
      hexagon(700-i*100-j*50, 550-i*25);
    }
  }
}

void hexagon(float px, float py) {
  fill(pot);
  translate(px, py);
  quad(0, 0, -75, -50, 0, -100, 75, -50);
  quad(0, 0, -75, -50, -75, 50, 0, 100);
  quad(0, 0, 0, 100, 75, 50, 75, -50);
  translate(-px, -py);
}
