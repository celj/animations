final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

void setup() {
    size(500, 500);
}

void draw() {
    background(0);
    rect(mouseX - 25, mouseY - 25, 50, 50);

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

