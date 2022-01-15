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
}

