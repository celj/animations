final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

void setup() {
    size(1000, 1000);
}

void draw() {
    background(50);
    fill(255);
    noStroke();

    float wave = sin(frameCount * 100000) * 150;

    ellipse(width / 2 + wave, height / 2, 500, 500);

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

