final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

boolean vegan = false;
int age = 22;
float h = 1.78;
color red = #ff0000;

int year = 2000;
String name = "Carlos";

void setup(){
    println("Hi, my name is " + name);
    println("I was born in " + year);

	//saveFrame("out/####.png");
	//rec();
}

void rec() {
    if (frameCount == 1) {
        videoExport = new VideoExport(this, "out/" + sketchname + ".mp4");
        videoExport.setFrameRate(60);
        videoExport.startMovie();
    }
    videoExport.saveFrame();
}

