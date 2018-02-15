Blob[] blobs = new Blob[10];
void setup() {
  size(1000, 600);
  for (int i=0; i<blobs.length; i++) {
    blobs[i] = new Blob(random(width), random(height));
  }
}

void draw() {
  background(50);
  loadPixels();

  for (int x = 0; x<width; x++) {
    for (int y = 0; y<height; y++) {
      int index = x+y*width;
      float sum = 0;
      for (Blob b : blobs) {
        float d  = dist(x, y, b.pos.x, b.pos.y);
        sum += 100 * b.r / d;
      }
      color col;
      if (sum > 200) col = color(0, 255, 0);
      else col = color(0);



      pixels[index] = col;
    }
  }

  updatePixels();

  for (int i=0; i<blobs.length; i++) {

    blobs[i].update();
    //blobs[i].show();
  }
}