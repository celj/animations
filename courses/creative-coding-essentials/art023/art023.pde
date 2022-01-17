void setup() {
    size(1920, 1080);
    rectMode(CENTER);
    fill(0);
    noStroke();
}

void draw() {
    background(#f1f1f1);

    float wave = sin(radians(frameCount));
    float mag = width*0.35;

    push();
    translate(width / 2 + wave * mag, height / 2);
    rotate(radians(wave * 180));
    rect(0, 0, 50, height * 0.8);
    pop();

	//saveFrame("out/####.png");
	rec();
}

