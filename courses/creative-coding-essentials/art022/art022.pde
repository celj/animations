void setup() {
    size(1000, 1000);
}

void draw() {
    background(50);
    fill(255);
    noStroke();

	float wave = sin(frameCount * 100000) * 150;

    ellipse(width / 2 + wave, height / 2, 500, 500);

	//saveFrame("out/####.png");
	rec();
}

