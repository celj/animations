color fg = 0;
color bg = #f1f1f1;

void setup() {
    size(1920,1080);
}

void draw() {
    background(bg);
    noStroke();
    fill(fg);
    rectMode(CENTER);

    for (int i = 0; i < 20; i++) {
        ellipse(i * 150, height / 2, 100, 100);
    }
}

