final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

void setup() {
    size(500, 500);
}
void draw() {
    if (keyPressed) { // mousePressed
        if (key == ' ') { // space
            background(255);
        }
    }
    else {
        background(0);
    }

    fill(255);
    noCursor();
    noStroke();
    ellipse(mouseX, mouseY, 50, 50);

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

