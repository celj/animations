final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

void setup() {
    size(1000, 1000);
    frameRate(10);
}

void draw() {
    background(0);
    fill(255);
    noStroke();

    for (int i = 0; i < 10; i++) {
		//println(i);
        fill(random(255));
        ellipse(random(width), random(height), i * 10, i * 10);

    }

	saveFrame("out/####.png");
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

