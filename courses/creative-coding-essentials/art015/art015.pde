void setup() {
    size(900, 900);
}

void draw() {
    background(#f1f1f1);
    noStroke();
    rectMode(CENTER);

    fill(#aaaaaa);
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(frameCount));
    rect(0, 0, 50, 700);
    popMatrix();

    fill(0);
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians( - frameCount));
    rect(0, 0, 50, 700);
    popMatrix();
}

