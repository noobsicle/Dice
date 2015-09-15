Die bob;
int pipNum;
void setup()
{
	
	size(500,500);
	noLoop();

}
void draw()
{
	background(150,150,100);
	for (int dieX = 0; dieX <= 500; dieX += 50)
	{
		for (int dieY = 50; dieY <= 500; dieY += 50) 
		{

			bob = new Die(dieX,dieY);
			bob.show();
			pipNum += bob.pips;

		}
	}	
	textAlign(CENTER, CENTER);
	fill(0);
	text(pipNum, 240, 20);	
}
void mousePressed()
{
	pipNum = 0;
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int dX, dY, pips;	

	Die(int x, int y) //constructor
	{
		dX = x;//variable initializations here
		dY = y;
		pips =(int)(Math.random()*6) +1;

	}
	void roll()
	{
			
		//your code here
	}
	void show()
	{
		fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));

		rect(dX,dY,350,350);
		translate(8,8);
		if (pips == 1)
		{
			ellipse(dX + 175/10, dY + 175/10,25/10,25/10);
		}
		else if (pips == 2)
		{
			ellipse(dX + 60/10, dY + 60/10, 25/10,25/10);
			ellipse(dX + 290/10, dY + 290/10, 25/10, 25/10);
		}
		else if (pips == 3)
		{
			ellipse(dX + 175/10, dY + 175/10, 25/10, 25/10);
			ellipse(dX + 60/10, dY + 60/10, 25/10, 25/10);
			ellipse(dX + 290/10, dY + 290/10, 25/10, 25/10);
		}
		else if  (pips == 4)
		{
			ellipse(dX + 290/10, dY + 60/10, 25/10, 25/10);
			ellipse(dX + 60/10, dY + 290/10, 25/10, 25/10);
			ellipse(dX + 60/10, dY + 60/10, 25/10, 25/10);
			ellipse(dX + 290/10, dY + 290/10, 25/10, 25/10);	
		}
		else if (pips == 5)
		{	
			ellipse(dX + 175/10, dY + 175/10,25/10,25/10);
			ellipse(dX + 290/10, dY + 60/10, 25/10, 25/10);
			ellipse(dX + 60/10, dY + 290/10, 25/10, 25/10);
			ellipse(dX + 60/10, dY + 60/10, 25/10, 25/10);
			ellipse(dX + 290/10, dY + 290/10, 25/10, 25/10);
		}
		else if (pips == 6)
		{
			ellipse(dX + 290/10, dY + 60/10, 25/10, 25/10);
			ellipse(dX + 60/10, dY + 290/10, 25/10, 25/10);
			ellipse(dX + 60/10, dY + 60/10, 25/10, 25/10);
			ellipse(dX + 290/10, dY + 290/10, 25/10, 25/10);
			ellipse(dX + 60/10, dY + 175/10, 25/10, 25/10);
			ellipse(dX + 290/10, dY + 175/10, 25/10, 25/10);
		}
		resetMatrix();
	}
		
}
