#include "ofApp.h"

void ofApp::setup()
{
    ofSetFrameRate(60);
    ofSetWindowTitle("openFrameworks");
    ofBackground(239);
    ofSetColor(39);
    ofNoFill();
    ofSetRectMode(ofRectMode::OF_RECTMODE_CENTER);
    ofSetCircleResolution(36);
}

void ofApp::update()
{
    ofSeedRandom(39);
}

void ofApp::draw()
{
    ofTranslate(ofGetWindowSize() * 0.5);
    auto noise_seed = glm::vec2(ofRandom(1000), ofRandom(1000));
    ofSetLineWidth(3);
    ofBeginShape();
    for (int x = 120; x <= 340; x += 1)
    {
        auto y = ofMap(ofNoise(noise_seed.x, (((x + 340) * 0.5 + ofGetFrameNum()) * 0.01)), 0, 1, -100, 100);
        ofVertex(x, y);
    }
    ofEndShape();
    ofBeginShape();
    for (int x = -120; x >= -340; x -= 1)
    {
        auto y = ofMap(ofNoise(noise_seed.x, (((x + 240 + 340) * 0.5 + ofGetFrameNum()) * 0.01)), 0, 1, -100, 100);
        ofVertex(x, y);
    }
    ofEndShape();
    ofBeginShape();
    for (int y = 120; y <= 340; y += 1)
    {
        auto x = ofMap(ofNoise(noise_seed.y, (((y + 340) * 0.5 + ofGetFrameNum()) * 0.01)), 0, 1, -100, 100);
        ofVertex(x, y);
    }
    ofEndShape();
    ofBeginShape();
    for (int y = -120; y >= -340; y -= 1)
    {
        auto x = ofMap(ofNoise(noise_seed.y, (((y + 240 + 340) * 0.5 + ofGetFrameNum()) * 0.01)), 0, 1, -100, 100);
        ofVertex(x, y);
    }
    ofEndShape();
    ofDrawRectangle(0, 0, 200, 200);
    ofFill();
    auto location = glm::vec2(ofMap(ofNoise(noise_seed.y, (460 * 0.5 + ofGetFrameNum()) * 0.01), 0, 1, -100, 100), ofMap(ofNoise(noise_seed.x, (460 * 0.5 + ofGetFrameNum()) * 0.01), 0, 1, -100, 100));
    ofDrawCircle(location.x, location.y, 5);
    for (int i = 1; i < 10; i++)
    {
        ofSetColor(ofMap(i, 1, 10, 39, 200));
        auto log = glm::vec2(ofMap(ofNoise(noise_seed.y, (460 * 0.5 + ofGetFrameNum() - i * 3) * 0.01), 0, 1, -100, 100), ofMap(ofNoise(noise_seed.x, (460 * 0.5 + ofGetFrameNum() - i * 3) * 0.01), 0, 1, -100, 100));
        ofDrawCircle(log.x, log.y, 5);
    }
    ofNoFill();
    ofSetColor(39);
    ofSetLineWidth(1.5);
    ofDrawLine(glm::vec2(location.x, -120), glm::vec2(location.x, 120));
    ofDrawLine(glm::vec2(120, location.y), glm::vec2(-120, location.y));
    ofDrawLine(glm::vec2(-100, -120), glm::vec2(100, -120));
    ofDrawLine(glm::vec2(-100, 120), glm::vec2(100, 120));
    ofDrawLine(glm::vec2(120, -100), glm::vec2(120, 100));
    ofDrawLine(glm::vec2(-120, -100), glm::vec2(-120, 100));
    ofDrawLine(glm::vec2(-100, -340), glm::vec2(100, -340));
    ofDrawLine(glm::vec2(-100, 340), glm::vec2(100, 340));
    ofDrawLine(glm::vec2(340, -100), glm::vec2(340, 100));
    ofDrawLine(glm::vec2(-340, -100), glm::vec2(-340, 100));
}
