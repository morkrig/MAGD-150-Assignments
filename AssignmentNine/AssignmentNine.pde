import processing.sound.*;
import processing.video.*;

// Declares the seagull .wav file and the "ocean" noise generator, as well as
// the background image and video file.
PinkNoise noise;
SoundFile seagull;
PImage camera;
Movie beach;

void setup() {
  size(1280, 720);
  background(255);

  //Loads the video file.
  beach = new Movie(this, "beach.mp4");
  beach.loop();

  // Loads the background image.
  camera = loadImage("camera.jpg");

  // Imports and plays seagull sound on loop.
  seagull = new SoundFile(this, "seagulls.wav");
  seagull.amp(6);
  seagull.loop();

  // Runs pink noise to imitate ocean sounds.
  noise = new PinkNoise(this);
  noise.play();
  noise.amp(0.09);
}

void movieEvent(Movie beach) {
  beach.read();
}

void draw() {
  // Draws camera background image.
  camera.resize(1280, 720);
  tint(255, 198, 188);
  image(camera, 0, 0);  

  // Draws the beach video on the camera viewfinder.
  image(beach, 556, 400, 305, 155);
}

// Image and video source: pexels.com
// Audio source: freesound.org