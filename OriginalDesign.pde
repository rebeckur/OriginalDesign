void setup()
{
	size(300, 300);
}
void draw()
{
	background(105, 181, 219);
	bubbles();
	moving_fish();
}

void moving_fish()
{
	fill(242, 164, 39);
	noStroke();
	ellipse(mouseX, mouseY, 70, 50);
	triangle(mouseX+20, mouseY, mouseX+40, mouseY-30, mouseX+40, mouseY+30);
}

void bubbles()
{
	fill(162, 217, 245, 150);
	ellipse(100, 200, 15, 15);

}