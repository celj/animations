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
    rectMode(CORNER);

    for (int i = 0; i < mouseX; i++) {
        push();
        translate(width / 2, height / 2);
        rotate(radians(i * 20.3 + (i * frameCount * 0.005)));
        rect(mouseX * 0.002 * i, 0, 100, 10);
        ellipse(mouseX * 0.002 * i + 15, 35, 16, 16);
        pop();
    }

    translate(mouseX, mouseY);
    triangle(0, 0, 40, 40, 0, 60);

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

