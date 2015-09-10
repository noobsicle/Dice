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

public class Dice extends PApplet {

Die bob;
public void setup()
{
	background(150,150,0);
	size(500,500);
	noLoop();
}
public void draw()
{
	bob = new Die(75,75);
	bob.show();
}
public void mousePressed()
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
	public void roll()
	{
			
		//your code here
	}
	public void show()
	{
		
		rect(dX,dY,350,350,15);
		if (pips == 1)
		{
			ellipse(dX + 175, dY + 175,20,20);
		}
		if (pips == 2)
		{
			ellipse(dX + 60, dY + 60,25,25);
			ellipse(dX + 290, dY + 290, 25, 25);
		}
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
