PImage view;
float unit;

void setup(){
  size(800,600);
  view=loadImage("view.jpg");
  view.resize(800,600);
  image(view,0,0);
  
  colorMode(HSB);
}

void draw(){
  unit=map(mouseX,0,width,2,12);  //unit 是方块的大小
  
  for(float i=0;i<width;i+=unit){  //刺绣法等距取点
    for(float j=0;j<height;j+=unit){
      
      color cl=view.get(int(i),int(j));  //图片上该点颜色
      float hueV=hue(cl);
      float satV=saturation(cl);
      float briV=brightness(cl);
      
      if(j<mouseY){  //高于鼠标的方块，让饱和度为0，也就是去掉所有颜色信息，只保留黑白
        satV=0;
      }
      
      fill(hueV,satV,briV);
      noStroke();
      rect(i,j,unit,unit);
    }
  }
}
