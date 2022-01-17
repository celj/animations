final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

void setup() {
    size(500, 500);
    frameRate(1); // 4 frames per second
}

void draw() {
    if (random(1) > 0.5) {
        background(255);
        fill(0);
    } else {
        background(0);
        fill(255);
    }

    ellipse(random(0, width), random(0, height), 200, 200);

	saveFrame("out/####.png");
	rec();
}

void rec() {
    if (frameCount == 1) {
        videoExport = new VideoExport(this, "out/" + sketchname + ".mp4");
        videoExport.setFrameRate(1);
        videoExport.startMovie();
    }
    videoExport.saveFrame();
}

