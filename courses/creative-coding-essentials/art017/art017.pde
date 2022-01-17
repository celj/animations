final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

color fg = 0;
color bg = #f1f1f1;

void setup() {
    size(1920, 1080);
}

void draw() {
    background(bg);
    noStroke();
    fill(fg);
    rectMode(CENTER);

    for (int i = 0; i < 20; i++) {
        ellipse(random(width), random(height), 100, 100);
    }

	//saveFrame("out/####.png");
	rec();
}

void rec() {
    if (frameCount == 1) {
        videoExport = new VideoExport(this, "out/" + sketchname + ".mp4");
        videoExport.setFrameRate(2);
        videoExport.startMovie();
    }
    videoExport.saveFrame();
}

