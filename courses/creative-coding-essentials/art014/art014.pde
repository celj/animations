final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

void setup() {
    size(500, 500);
}

void draw() {
    background(0);
    noStroke();
    rectMode(CENTER);
    translate(width / 2, height / 2);

    fill(100);
    rect(0, 0, 200, 200);

    push();
    rotate(radians(frameCount));
    fill(255);
    rect(0, 0, 20, 400);
    pop();

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

