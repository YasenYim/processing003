
int xStart = 250;
int yStart = 250;


void setup() {
  smooth();
  size(1080, 768);
  background(255);
}


void draw() {
  stroke(random(80,100),  random(200,220), random(220, 255),40);
  strokeWeight(3);

  if (mousePressed) {    //不带括号的mousePressed 本质上是一个boolean，有true 和 false 两种状态
    line(xStart, yStart, mouseX, mouseY);
  }
}


void mousePressed() {  //带括号的mousePressed 控制的是 点下鼠标的这个时间点 上的一次操作
  xStart = mouseX;
  yStart = mouseY;
}

//时间点和时间段的区别
