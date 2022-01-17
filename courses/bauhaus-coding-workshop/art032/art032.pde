final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

color bg = #f1f1f1;
color fg = #111111;

void setup() {
	size(900, 900); // 1080px wide, 1920px tall for video
}

void draw() {
	background(bg);
	fill(fg);
	noStroke();

	

	//saveFrame("out/####.png");
	//rec();
}

void rec() {
	if (frameCount == 1) {
		videoExport = new VideoExport(this, "out/"+sketchname+".mp4");
		videoExport.setFrameRate(60);
		videoExport.startMovie();
	}
	
	videoExport.saveFrame();
}

