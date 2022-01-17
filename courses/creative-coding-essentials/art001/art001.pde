void setup() {
    size(250, 250); // width & height
}

void draw() {
    background(mouseX);
    fill(width - mouseX);
    noStroke();
    ellipse(mouseX, mouseY, 50, 50);

    //saveFrame("out/####.png");
    rec();
}

