import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class OriginalDesign extends PApplet {

public void setup()
{
	size(300, 300);
}
public void draw()
{
	background(105, 181, 219);
	bubbles();
	if (fish){
		if (mouseX < pmouseX) {
			movingFishLeft();
		} else {
			movingFishRight();
		}
	}

	if (octopus){
		cuteOctopus();
	}
}

public void movingFishLeft()
{
	fill(242, 164, 39);
	noStroke();
	ellipse(mouseX, mouseY, 70, 50);
	triangle(mouseX+20, mouseY, mouseX+40, mouseY-30, mouseX+40, mouseY+30);
}

public void movingFishRight()
{
	fill(242, 164, 39);
	noStroke();
	ellipse(mouseX, mouseY, 70, 50);
	triangle(mouseX-20, mouseY, mouseX-40, mouseY-30, mouseX-40, mouseY+30);
}

public void cuteOctopus()
{
	fill(255);
	ellipse(mouseX,mouseY,10,10);
}

public void bubbles()
{
	fill(162, 217, 245, 150);
	ellipse(100, 200, 15, 15);
}

boolean fish = true;
boolean octopus = false;
public void mousePressed ()
{
	fish = false;
	octopus = true;
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OriginalDesign" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
