size(600, 400);
for (int i = 0; i < 200; i++) {
  stroke(i);
  line(200-i, 200, 200, i);
  line(i, 0, 0, 200-i);
}
for (int x = 5; x < 200; x = x+20) {
  for (int y = 5; y < 200; y = y+20) {
    rect(x, y+200, 10, 10);
  }
}
for (int x = 5; x < 200; x = x+20) {
  for (int y = 5; y < 200; y = y+20) {
    rect(x+195, y+195, 10, 10);
    rect(x+205, y+205, 10, 10);
  }
}
fill(0, 0, 0);
for (int x = 0; x < 200; x = x+20) {
  for (int y = 0; y < 200; y = y+20) {
    triangle(x+200, y, x+210, y, x+200, y+10);
    triangle(x+210, y+20, x+220, y+10, x+220, y+20);
    triangle(x+210, y+10, x+210, y, x+220, y+10);
    triangle(x+210, y+10, x+200, y+10, x+210, y+20);
  }
}
fill(255, 255, 255);
strokeWeight(2);
int n = 0;
for (int x = 410; x < 600; x = x+20) {
  for (int y = 10; y < 200; y = y+20) {
    n++;
    if (n == 3) {
      fill(100, 100, 175);
      n = 0;
    } else if (n == 2){
      fill(125, 125, 150);
    }else{
      fill(150,150,150);
    }
    circle(x, y, 20);
    circle(x, y, 15);
    circle(x, y, 10);
    circle(x, y, 5);
  }
}
