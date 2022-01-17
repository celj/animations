final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

float amount, gap, s;

void setup() {
    size(1920, 1080);
}

void draw() {
    background(0);
    fill(#f1f1f1);
    noStroke();
    rectMode(CENTER);

    amount = 20;
    gap = width / amount;
    s = 50;

    translate(gap / 2, 0);

    for (int i = 0; i < amount; i++) {
        push();
        translate(i * gap, height / 2);
        if (i % 4 == 0) {
            rect(0, 0, s, s * 4);
        } else {
            ellipse(0, 0, s, s);
        }
        pop();
    }

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

