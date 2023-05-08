
boolean lightOn;  //灯的开关

void setup() {
  size(600, 600);
  lightOn=true;  //初始时，灯亮着
}


void draw() {
  background(0);

  if (lightOn) {  //如果亮

    fill(230, 220, 50, 13);  
    noStroke();

    float diam=2;
    for (int i=0; i<60; i++) {    //这里的灯是用60个尺寸不同的半透明同心圆叠出来的。
      ellipse(width/2, height/2, diam, diam);
      diam*=1.08;
    }
  }
}

void mousePressed() {
  if (mouseButton==LEFT) {  //如果鼠标左键
    lightOn=!lightOn;    //让 lightOn 存储的值反向
  }
}
