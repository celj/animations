void setup() {
    size(500, 500);
    frameRate(4); // 4 frames per second
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
}

