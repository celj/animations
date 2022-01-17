void setup() {
    size(800, 800);
}

void draw() {
    background(0);
    fill(255);
    noStroke();

    float circleSize = map(mouseX, 0, width, 50, 600);

    ellipse(width / 2, height / 2, circleSize, circleSize);

	//saveFrame("out/####.png");
	rec();
}

