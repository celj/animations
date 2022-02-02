final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

color bg = #f1f1f1;
color fg = #111111;

void setup() {
    size(900, 900); // 1080px wide, 1920px tall for video
    frameRate(8);
}

void draw() {
    background(bg);
    stroke(fg);
    noFill();

    int events = 1000;

    float[] x = new float[events + 1];
    float[] y = new float[events + 1];

    x[0] = random(width);
    y[0] = random(height);

    beginShape();

    for (int i = 0; i < events; i++) {
        x[i + 1] = random(width);
        y[i + 1] = random(height);
        vertex(x[i], y[i]);
        vertex(x[i + 1], y[i + 1]);
    }

    vertex(x[0], y[0]);

    endShape();

    //saveFrame("out/####.png");
    rec();
}

void rec() {
    if (frameCount == 1) {
        videoExport = new VideoExport(this, "out/"+sketchname+".mp4");
        videoExport.setFfmpegPath("/opt/homebrew/bin/ffmpeg");
        videoExport.setFrameRate(8);
        videoExport.startMovie();
    }

    videoExport.saveFrame();
}

