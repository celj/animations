final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

void setup() {
    size(500,500);
}

void draw() {
    background(100);

    fill(0);
    noStroke();
    ellipse(mouseX, mouseY, 100, 100); // ellipse

    fill(255);
    ellipse(width / 2, height / 2, 100, 100);

    saveFrame("out/####.png");
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

