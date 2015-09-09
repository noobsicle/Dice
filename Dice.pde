Die bob;
void setup()
{
	background(150,150,0);
	size(500,500);
	noLoop();
}
void draw()
{
	bob = new Die(75,75);
	bob.show();
}
void mousePressed()
{
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
		
		rect(dX,dY,350,350,15);
		if (pips == 1)
		{

			ellipse(dX + 175, dY + 175,20,20);
		}
		if (pips == 2)
		{

		}
	}
}
