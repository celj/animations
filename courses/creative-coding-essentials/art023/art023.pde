final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

void setup() {
    size(1920, 1080);
    rectMode(CENTER);
    fill(0);
    noStroke();
}

void draw() {
    background(#f1f1f1);

    float wave = sin(radians(frameCount));
    float mag = width*0.35;

    push();
    translate(width / 2 + wave * mag, height / 2);
    rotate(radians(wave * 180));
    rect(0, 0, 50, height * 0.8);
    pop();

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

