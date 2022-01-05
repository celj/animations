void setup() {
    size(500, 500);
}

void draw() {
    push();
    background(0);
    noFill();
    stroke(255);
    strokeWeight(10);
    translate(width / 2, height / 2);

    float diff = 100;
    float x1 = 0;
    float y1 = -diff;
    float x2 = diff;
    float y2 = diff;
    float x3 = -diff;
    float y3 = diff;

    triangle(x1, y1, x2, y2, x3, y3);
    pop();
}

