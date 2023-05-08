float x=0;  //小球横坐标，这里把声明和赋值写到了一起

void setup() {
  size(800, 600);
}


void draw() {
  //background(0);
  fill(0, 20);
  rect(0, 0, width, height);    //半透明的方块，营造尾迹效果

  x+=5;  //小球以每帧5像素的速度，向右移动

  noStroke();
  fill(255, 255, 0);
  ellipse(x, 300, 60, 60);  //画球
}
