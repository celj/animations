void setup() {
    size(500, 500);
}
void draw() {
    if (keyPressed) { // mousePressed
        if (key == ' ') { // space
            background(255);
        }
    }
    else {
        background(0);
    }

    fill(255);
    noCursor();
    noStroke();
    ellipse(mouseX, mouseY, 50, 50);
}

