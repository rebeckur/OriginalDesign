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
		} else {
			movingFishRight();
		} //for moving the direction of the fish based on user mouse
	}

	if (octopus){
		cuteOctopus();
	}
}

void movingFishLeft()
{
	fill(242, 164, 39);//fish color
	noStroke();
	ellipse(mouseX, mouseY, 70, 50); //body
	fill(0); //eye color
	ellipse(mouseX-15, mouseY-5, 7,7); //eyes
	fill(242, 164, 39); //fish color
	triangle(mouseX+20, mouseY, mouseX+40, mouseY-30, mouseX+40, mouseY+30); //fins
}

void movingFishRight()
{
	fill(242, 164, 39);//fish color
	noStroke();
	ellipse(mouseX, mouseY, 70, 50); //body
	fill(0); //eye color
	ellipse(mouseX+15, mouseY-5, 7,7); //eyes
	fill(242, 164, 39);//fish color
	triangle(mouseX-20, mouseY, mouseX-40, mouseY-30, mouseX-40, mouseY+30); //fins
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
		ellipse(mouseX - 15 + i, mouseY + 35, 8, 30);
	} //tentacles
}

void bubbles()
{
	fill(162, 217, 245, 150);
	ellipse(100, 20, 15, 15);
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
