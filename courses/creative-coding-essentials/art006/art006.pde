void setup() {
    size(600,600);
}

void draw() {
    float a = 200;

    background(#111111);
    noFill();
    stroke(#f1f1f1);
    strokeCap(ROUND);
    strokeJoin(ROUND);
    strokeWeight(5);

    beginShape();
    vertex(a, a);
    vertex(2 * a, a);
    vertex(a, 2 * a);
    vertex(a, a);
    vertex(2 * a, 2 * a);
    vertex(a, 2 * a);
    endShape();

	saveFrame("out/####.png");
	//rec();
}

