final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

void setup() {
    size(250, 250); // width & height
}

void draw() {
    background(mouseX);
    fill(width - mouseX);
    noStroke();
    ellipse(mouseX, mouseY, 50, 50);

    //saveFrame("out/####.png");
    rec();
}

void rec() {
    if (frameCount == 1) {
        videoExport = new VideoExport(this, "out/"+sketchname+".mp4");
        videoExport.setFrameRate(30);
        videoExport.startMovie();
    }
    videoExport.saveFrame();
}

