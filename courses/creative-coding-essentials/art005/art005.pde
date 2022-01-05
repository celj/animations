void setup() {
    size(600,600);
}

void draw() {
    float weight = 45;

    background(#111111);
    noStroke();
    fill(#f1f1f1);

    push();
    noFill();
    stroke(#f1f1f1);
    strokeWeight(weight);
    ellipse(width / 2 - 50, height / 2, 200 - weight, 200 - weight);
    pop();

    rectMode(CENTER);
    rect((width / 2) + (2 * weight), height / 2, weight, 200);

}
