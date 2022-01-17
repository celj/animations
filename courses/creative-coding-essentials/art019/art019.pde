color fg = 0;
color bg = #f1f1f1;

void setup() {
    size(1920, 1080);
}

void draw() {
    background(bg);
    stroke(fg);
    noFill();
    strokeWeight(17);
    rectMode(CENTER);

    for (int i = 0; i < constrain(frameCount, 1, 24); i++) {
        ellipse(width / 2, height / 2, i * 70, i * 70);
        ellipse(mouseX, mouseY, i * 70, i * 70);
    }

	//saveFrame("out/####.png");
	rec();
}

