#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup() {
	video.load("video.mp4");
	video.setVolume(0); // mute
	video.play();
}

//--------------------------------------------------------------
void ofApp::update() {
	video.update();
	video.setSpeed(0.5); // slow down
}

//--------------------------------------------------------------
void ofApp::draw() {
	video.draw(ofGetWidth() / 2 - video.getWidth() / 2,
			ofGetHeight() / 2 - video.getHeight() / 2,
			300, 300);
}

//--------------------------------------------------------------
void ofApp::keyPressed(int key) {

}

//--------------------------------------------------------------
void ofApp::keyReleased(int key) {

}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ) {

}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button) {

}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button) {

}

//--------------------------------------------------------------
void ofApp::mouseReleased(int x, int y, int button) {

}

//--------------------------------------------------------------
void ofApp::mouseEntered(int x, int y) {

}

//--------------------------------------------------------------
void ofApp::mouseExited(int x, int y) {

}

//--------------------------------------------------------------
void ofApp::windowResized(int w, int h) {

}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg) {

}

//--------------------------------------------------------------
void ofApp::dragEvent(ofDragInfo dragInfo) {

}
