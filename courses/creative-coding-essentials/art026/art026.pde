float amount = 100;

void setup() {
    size(1920, 1080);
}

void draw() {
    background(#f1f1f1);
    fill(0);
    noStroke();
    translate(width / 2, height / 2);
    for (int i = 0; i <= amount; i++) {
        float y = map(i, 0, amount, -height * 0.6, height * 0.6);
        float x = map(tan(radians((frameCount + (i * 2)))), -1, 1, -width * 0.4, width * 0.4);
        pushMatrix();
        translate(x, y);
        ellipse(0, 0, 10, 10);
        popMatrix();
    }

	//saveFrame("out/####.png");
	rec();
}

