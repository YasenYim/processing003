void setup() {
  size(600, 600);
}

void draw() {
  if (mousePressed) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

//在每一帧里，都把当前鼠标位置和上一帧的鼠标位置之间连线
