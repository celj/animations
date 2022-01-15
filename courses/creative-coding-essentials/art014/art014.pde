void setup() {
    size(500, 500);
}

void draw() {
    background(0);
    noStroke();
    rectMode(CENTER);
    translate(width / 2, height / 2);

    fill(100);
    rect(0, 0, 200, 200);

    push();
    rotate(radians(frameCount));
    fill(255);
    rect(0, 0, 20, 400);
    pop();
}

