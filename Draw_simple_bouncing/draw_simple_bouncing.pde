
float y=0;  //小球纵坐标
float yspd=0;  //小球纵向速度
float gravity=0.2;  //重力加速度

void setup(){
  size(800,600);
}

void draw(){
  //background(0);
  fill(0,15);
  rect(0,0,width,height);  //和窗口等大的半透明方块营造尾迹
  
  yspd+=gravity;  //刷新速度值
  y+=yspd;    //刷新位置
  
  if(y>height){    //如果小球落地
    y-=yspd;      //把位置挪到触地前一刹那的位置
    yspd*=-0.8;    //把速度反向，并损耗20%的速度
  }
  
  fill(0,255,0);
  noStroke();
  ellipse(width/2,y,40,40);
  
}
