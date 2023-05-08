//macOS 10.15 或更高版本操作系统的用户，遇到无法启动摄像头问题时，
//请到我公众号文章里查找解决方案

import processing.video.*; //载入视频库

Capture cam; //声明摄像头的小篮子

void setup() {
  size(640, 480);
  println(Capture.list());  //在控制台打印出所有可用的分辨率
  
  cam=new Capture(this,640,480,30);  //摄像头分辨率设置为640*480，帧率30
  cam.start();  //启动摄像头
}

void draw(){
  if(cam.available()){    //读取摄像头拍的图像
    cam.read();          //把图像读取到 cam 里面
  }
  image(cam,0,0);  //显示cam
  
}
