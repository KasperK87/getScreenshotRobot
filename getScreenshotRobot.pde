//Source: https://forum.processing.org/two/discussion/8025/take-a-screen-shot-of-the-screen.html
//retrieved on the 28-08-23

import java.awt.*;
PImage screenshot;

void setup() {
  size(1280, 720);
}

void draw() {
  if (frameCount % 60 == 0) screenshot();
  if (screenshot != null) image(screenshot, 0, 0, width, height);
}

void screenshot() {
  try {
    screenshot = new PImage(new Robot().createScreenCapture(new Rectangle(0, 0, displayWidth, displayHeight)));
  } catch (AWTException e) { }
}
