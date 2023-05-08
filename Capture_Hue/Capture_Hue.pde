//macOS 10.15 或更高版本操作系统的用户，遇到无法启动摄像头问题时，
//请到我公众号文章里查找解决方案

import processing.video.*;  //载入视频库

Capture cam;  //声明摄像头的小篮子

void setup(){
  size(1280,720);
  cam=new Capture(this,1280,720,30);  //赋值（初始化）摄像头
  cam.start();  //启动摄像头
  
  colorMode(HSB);  //设定颜色模式
}

void draw(){
  
  if (cam.available() == true) {  //读取摄像头拍的图像
    cam.read();
  }
  
  int space=2;  //间距为2
  noStroke();
  for(int x=0;x<width;x+=space){  //以space为横纵间隔，取点
    for(int y=0;y<height;y+=space){
      color col=cam.get(x,y);
      float hueValue=map(brightness(col),0,255,255,0);//用取到的颜色的亮度值 映射成色相
      fill(hueValue,200,255);
      rect(x,y,space,space);
    }
  }
}
  
