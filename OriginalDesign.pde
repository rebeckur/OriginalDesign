void setup()
{
	size(500, 300);
}
void draw()
{
	background(105, 181, 219);
	bubbles();
	if (fish){
		if (mouseX - pmouseX < 0) {
			movingFishLeft();
		} else if (mouseX - pmouseX > 0){
			movingFishRight();
		} else {
			statFish();
		}
	} //draws fish, but changes direction based on mouse

	if (octopus){
		cuteOctopus();
	} //draws octopus
}

void movingFishLeft()
{
	fill(242, 164, 39);//fish color
	noStroke();
	ellipse(mouseX, mouseY, 70, 50); //body
	fill(255, 134, 33);//fin color
	triangle(mouseX, mouseY, mouseX+15, mouseY-15, mouseX+15, mouseY+15);//fin
	fill(0); //eye color
	ellipse(mouseX-15, mouseY-5, 7,7); //eyes
	fill(242, 164, 39); //fish color
	triangle(mouseX+20, mouseY, mouseX+40, mouseY-30, mouseX+40, mouseY+30); //tail
}

void movingFishRight()
{
	fill(242, 164, 39);//fish color
	noStroke();
	ellipse(mouseX, mouseY, 70, 50); //body
	fill(255, 134, 33);//fin color
	triangle(mouseX, mouseY, mouseX-15, mouseY-15, mouseX-15, mouseY+15);//fin
	fill(0); //eye color
	ellipse(mouseX+15, mouseY-5, 7,7); //eyes
	fill(242, 164, 39);//fish color
	triangle(mouseX-20, mouseY, mouseX-40, mouseY-30, mouseX-40, mouseY+30); //tail
}

void statFish()
{
	fill(255, 134, 33);//fin color
	triangle(mouseX-10, mouseY, mouseX-25, mouseY-15, mouseX-25, mouseY+15);//left fin
	triangle(mouseX+10, mouseY, mouseX+25, mouseY-15, mouseX+25, mouseY+15);//right fin
	fill(242, 164, 39);//fish color
	triangle(mouseX+5, mouseY, mouseX-5, mouseY, mouseX-5, mouseY-40);//tail
	ellipse(mouseX, mouseY, 45, 50); //body
	fill(0); //eye color
	ellipse(mouseX+10, mouseY-5, 7,7); //eyes
	ellipse(mouseX-10, mouseY-5, 7,7); //eyes
}

void cuteOctopus()
{
	fill(255, 102, 102);
	ellipse(mouseX,mouseY,50,60); //head of octopus
	fill(0);
	ellipse(mouseX-10, mouseY-5, 7,7);
	ellipse(mouseX+10, mouseY-5, 7,7); //eyes
	fill(255, 102, 102);
	for (int i = 0; i < 40; i+= 10){
		ellipse(mouseX - 15 + i, mouseY + 35, 7, 30);
	} //tentacles
}

int bubbleX = 50;
int bubbleY = 50;

void bubbles()
{
	fill(162, 217, 245, 150);
	while(bubbleY < 300)
	{
		ellipse(bubbleX, bubbleY, 15, 15);
		bubbleY += 45;
		bubbleX += (int)(Math.random()*151)-50;
	}
}

boolean fish = true;
boolean octopus = false;

void mousePressed ()
{
	if (fish){
		fish = false;
		octopus = true;
	} else if (octopus){
		octopus = false;
		fish = true;
	}
}
