void setup() {
    size(600,600);
}

void draw() {
    background(#111111);
    noStroke();
    fill(#f1f1f1);

    strokeCap(ROUND);
    strokeJoin(ROUND);

    float a = 50;
	float r = 10;

	translate((width - (5 * a)) / 2, (height - (8 * a)) / 2);

	// x, y, width, height, topLeft, topRight, bottomRight, bottomLeft
	rect(0, 4 * a, a, a, r, 0, 0, r);
	rect(0, 6 * a, a, a, r, 0, 0, r);
	rect(0, a, a, a * 2, r, 0, 0, r);
	rect(3 * a, a, a, 2 * a, 0, 0, r, 0);
	rect(4 * a, 0, a, a, r, r, r, 0);
	rect(4 * a, 6 * a, a, a, 0, r, r, 0);
	rect(a, 0, 2 * a, a, r, r, 0, 0);
	rect(a, 3 * a, 2 * a, a, 0, 0, r, 0);
	rect(a, 5 * a, 3 * a, a, 0, r, 0, 0);
	rect(a, 7 * a, 3 * a, a, 0, 0, r, r);

	saveFrame("out/####.png");
	//rec();
}

