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
color foamc = color(230, 230, 230, 50);
float foam = 0;
float timer = 0;
void setup() {
  size(800, 600);
}
void draw() {
  timer++;
  foam++;
  stroke(1);
  fill(pot);
  background(150, 150, 200);
  fill(pot);
  rect(200,400,400,200);
  for (int i =0; i<4; i++) {
    for (int j = i; j<4; j++) {
      hexagon(i*100+100+j*50, 550-j*25+i*10);
      hexagon(700-i*100-j*50, 550-j*25+i*10);
    }
  }
  foamc = color(200,200,200,100*sin(foam/50)*sin(foam/50));
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
  noStroke();
  fill(150, 150, 200);
  beginShape();
  vertex(390+sin(timer/30-0.2), 112);
  vertex(390+10*sin(timer/30-0.1), 150);
  vertex(390+20*sin(timer/30), 200);
  vertex(390+10*sin(timer/30-0.1), 250);
  vertex(390+sin(timer/30-0.2), 288);
  vertex(410+sin(timer/30+0.6), 288);
  vertex(410+15*sin(timer/30+0.5), 250);
  vertex(410+20*sin(timer/30+0.4), 200);
  vertex(410+15*sin(timer/30+0.5), 150);
  vertex(410+sin(timer/30+0.6), 112);
  endShape(CLOSE);
  fill(sand);
  beginShape();
  vertex(410+sin(timer/30+0.6), 288);
  vertex(410+15*sin(timer/30+0.5), 250);
  vertex(410+20*sin(timer/30+0.4), 200);
  vertex(410+15*sin(timer/30+0.5), 150);
  vertex(410+sin(timer/30+0.5), 112);
  vertex(500, 200);
  endShape(CLOSE);
  fill(water);
  beginShape();
  vertex(390+sin(timer/30-0.2), 288);
  vertex(390+15*sin(timer/30-0.1), 250);
  vertex(390+20*sin(timer/30), 200);
  vertex(390+15*sin(timer/30-0.1), 150);
  vertex(390+sin(timer/30-0.1), 112);
  vertex(300, 200);
  endShape(CLOSE);
  fill(foamc);
  ellipse(120*(sin(foam/50))*(sin(foam/50))+300, 170, 25, 50);
  ellipse(90*(sin(foam/50))*(sin(foam/50))+350, 200, 25, 50);
  ellipse(100*(sin(foam/50))*(sin(foam/50))+310, 240, 25, 50);
  fill(pot);
  stroke(1);
  ellipse(500,250,50,25);
  ellipse(497,230,50,25);
  ellipse(495,210,50,25);
  ellipse(492,190,50,25);
  ellipse(488,170,50,25);
  ellipse(483,150,50,25);
  fill(100,200,100);
  quad(483,150,433,150,408,175,458,175);
  quad(483,150,463,120,483,100,503,120);
  quad(483,150,533,150,558,175,508,175);
  quad(483,150,433,150,408,120,463,120);
  quad(483,150,503,120,558,120,533,150);
  quad(483,150,458,175,483,200,508,175);
}

void hexagon(float px, float py) {
  fill(pot);
  translate(px, py);
  quad(0, 0, -75, -50, 0, -100, 75, -50);
  quad(0, 0, -75, -50, -75, 50, 0, 100);
  quad(0, 0, 0, 100, 75, 50, 75, -50);
  translate(-px, -py);
}
