float range=15;  //控制高斯分布的范围

void setup() {
  size(600, 600);
  background(255);
}


void draw() {
  if (mousePressed && mouseButton==LEFT) {  //按下鼠标左键的时候

    float xpos;  //声明两个局部变量，后面的时候，变量里的值会变化600次
    float ypos;  //铁打的营盘流水的兵

    for (int i=0; i<600; i++) {
      xpos=randomGaussian() * range;  //用range和高斯分布来控制点的偏移量
      ypos=randomGaussian() * range;

      if (random(1)<.2) {  //20%的概率是颜色1
        stroke(#BFBD87);    //这里用十六进制表达颜色
      } else {
        stroke(#DBD99D);  //80%的概率是颜色2
      }
      point(mouseX+xpos, mouseY+ypos);
    }
  }
}
