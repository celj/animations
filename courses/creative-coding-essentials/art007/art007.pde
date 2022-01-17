final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

void setup() {
    size(600,600);
}

void draw() {
    background(#111111);
    noStroke();

    rectMode(CENTER);

    fill(#f1f1f1);
    rect(width / 2, height / 2, 400, 400, 10);

    fill(#111111);
    rect(width / 2, height / 2, 300, 300, 30);

    saveFrame("out/####.png");
    //rec();
}

void rec() {
    if (frameCount == 1) {
        videoExport = new VideoExport(this, "out/" + sketchname + ".mp4");
        videoExport.setFrameRate(60);
        videoExport.startMovie();
    }
    videoExport.saveFrame();
}

