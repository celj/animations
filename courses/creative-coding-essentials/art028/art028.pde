final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

void setup() {
    size(1920, 1080);
}

void draw() {
    background(0);
    noStroke();
    float x, y;
    float amount = 720;
    float size = 5;
    fill(#f1f1f1);
    for (int i = 0; i < amount; i++) {
        y = map(tan(radians(i)), -1, 1, -50, 50);
        x = map(i, 0, amount, 0, width);
        ellipse(x, y + height / 2, size, size);
    }

	saveFrame("out/####.png");
	//rec();
}

void rec() {
    if (frameCount == 1) {
        videoExport = new VideoExport(this, "out/" + sketchname + ".mp4");
        videoExport.setFrameRate(60);
        videoExport.startMovie();
    }
    videoExport.saveFrame();
}

