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
        y = map(sin(radians(i)), -1, 1, -300, 300);
        x = map(i, 0, amount, 0, width);
        ellipse(x, y + height / 2, size, size);
    }
}

