final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

boolean toggle = false;

void setup() {
    size(1920, 1080);
}

void draw() {
    if (toggle == true) {
        background(0);
        fill(#f1f1f1);
    } else {
        background(#f1f1f1);
        fill(0);
    }

    if (frameCount % 30 == 0) {
        toggle = !toggle;
    }

    ellipse(width / 2, height / 2, frameCount * 8, frameCount * 8);

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

