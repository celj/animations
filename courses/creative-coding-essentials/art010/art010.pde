final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

// Store colors as follows
color bg = #000000;
color fg = #f1f1f1;
color primary = #0000ff;
color secondary = #ff0000;

void setup() {
    size(600, 600);
}

void draw() {
    background(secondary);
    fill(255);
    noStroke();

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

