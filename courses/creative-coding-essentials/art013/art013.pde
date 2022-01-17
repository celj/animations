void setup() {
    size(500, 500);
}

void draw() {
    background(255);
    strokeWeight(20);
    rectMode(CENTER);

    if (mouseX < width / 2) {
        ellipse(width / 2, height / 2, 400, 400);
    } else {
        rect(width / 2, height / 2, 400, 400);
    }

	saveFrame("out/####.png");
	rec();
}

