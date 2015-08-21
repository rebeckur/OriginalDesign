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
	moving_fish();
}

public void moving_fish()
{
	fill(242, 164, 39);
	noStroke();
	ellipse(mouseX, mouseY, 70, 50);
	triangle(mouseX+20, mouseY, mouseX+40, mouseY-30, mouseX+40, mouseY+30);
}

public void bubbles()
{
	fill(162, 217, 245, 150);
	ellipse(100, 200, 15, 15);

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
