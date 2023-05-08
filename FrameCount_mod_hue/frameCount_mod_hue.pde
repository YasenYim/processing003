void setup() {
  size(400, 400);
  colorMode(HSB);
}

void draw() {
  background(frameCount%256, 127, 255);
}
