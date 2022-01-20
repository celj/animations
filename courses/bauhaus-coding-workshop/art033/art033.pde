final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

PGraphics pg;
color bg = #f1f1f1;
color fg = #111111;
float[] it = {0};
int x = 300;

void setup() {
    size(900, 900); // 1080px wide, 1920px tall for video
    frameRate(60);

    pg = createGraphics(width, height);
}

void draw() {
    float speed = 0.2;
    float count = radians(frameCount);
    float movement = count * speed;
    float wave = 600 * trigWave(movement);

    it = append(it, wave);

    pg.beginDraw();
    pg.background(bg);
    pg.fill(fg);
    pg.noStroke();

    pg.pushMatrix();
    pg.translate(0, wave);
    pg.circle(width / 2, height / 6, width / 3);
    pg.popMatrix();

    pg.pushMatrix();
    pg.translate(0, -wave);
    pg.triangle(width / 2, height * 2 / 3, width / 3, height, width * 2 / 3, height);
    pg.popMatrix();

    for (int i = x; i < width - x; i++) {
        for (int j = x; j < height - x; j++) {
            color c = pg.get(i, j);
            if (c == fg) {
                pg.set(i, j, bg);
            } else {
                pg.set(i, j, fg);
            }
        }
    }

    if (it[it.length - 2] > it[it.length - 1]) {
        pg.filter(INVERT);
    }

    pg.endDraw();

    //println(it.length, it[it.length - 2], it[it.length - 1]);

    imageMode(CENTER);
    image(pg, width / 2, height / 2);

    //saveFrame("out/####.png");
	rec();
}

float trigWave(float x) {
    float y = float(floor((x / 2) + 0.5));
    float z = 2 * abs((x / 2) - y);
    return z;
}

void rec() {
    if (frameCount == 1) {
        videoExport = new VideoExport(this, "out/"+sketchname+".mp4");
        videoExport.setFrameRate(60);
        videoExport.startMovie();
    }

    videoExport.saveFrame();
}

