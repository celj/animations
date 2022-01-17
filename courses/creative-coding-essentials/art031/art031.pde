final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

void setup() {
    size(800, 800);
}

void draw() {
    background(0);
    fill(255);
    noStroke();

    float circleSize = map(mouseX, 0, width, 50, 600);

    ellipse(width / 2, height / 2, circleSize, circleSize);

    //saveFrame("out/####.png");
    rec();
}

void rec() {
    if (frameCount == 1) {
        videoExport = new VideoExport(this, "out/" + sketchname + ".mp4");
        videoExport.setFrameRate(60);
        videoExport.startMovie();
    }
    videoExport.saveFrame();
}

