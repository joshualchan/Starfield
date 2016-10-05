//JUMbO AND odDBAll Same color
//oddball,jumbo same color


//your code here
Particle [] norman;
int nextOdd = 2;
void setup()
{
	size(500,500);
	norman = new Particle[200];
	for(int i = 0; i<norman.length; i++)
	{
		norman[i] = new NormalParticle();
	}

	norman[0] = new OddballParticle();
	norman[1] = new JumboParticle();

}
void draw()
{
	background(255);
	for(int i =0;i<norman.length; i++)
	{
		norman[i].show();
		norman[i].move();
	}

}


void mousePressed()
{
	if(mouseButton == LEFT){
		
		norman[nextOdd] = new OddballParticle();
		nextOdd = nextOdd + 1;

	}

	

	if(mouseButton == RIGHT){
		setup();
		draw();
	}

}


interface Particle
{
	public void show();
	public void move();
}

class NormalParticle implements Particle
{
	double x,y;

	//velocity: speed in a given diection

	double nSpeed, nDirection;
	int nSize, nColor, myColor;


	NormalParticle()
	{
		myColor = color((int)(Math.random()*200),(int)(Math.random()*200),(int)(Math.random()*200));
		x = 250.0;
		y = 250.0;

		nSpeed = Math.random()*20 + 3;
		nDirection = Math.random()*2*Math.PI;

		nSize = (int)(Math.random()*20)+5;

	}

	void show()
	{
		fill(myColor);
		ellipse((int)x,(int)y,nSize,nSize);
	}

	void move()
	{
		x = x + Math.cos(nDirection) * nSpeed;
		y = y + Math.sin(nDirection) * nSpeed;

		nDirection = nDirection +.075;

	}


}




class OddballParticle implements Particle //uses an interface
{
	double oX,oY;
	double oSpeed, oDirection;
	int oColor;
	OddballParticle()
	{
	oColor = color((int)(Math.random()*256));
	oX = 250.0;
	oY = 250.0;
	oSpeed = Math.random()*2;
	oDirection = Math.random()*2*Math.PI;
	}

	void show()
	{
		fill(oColor);
		ellipse((int)oX,(int)oY,50,50);


	}

	void move()
	{

		oX = oX +  Math.cos(oDirection) * oSpeed;
		oY = oY +  Math.sin(oDirection) * oSpeed;

		if(oX>500)
		{
			oDirection = Math.random()*2*Math.PI;
			if(oDirection< .5*Math.PI || oDirection>1.5*Math.PI )
			{
				oDirection = oDirection + Math.PI;
			}
			oX = oX +  Math.cos(oDirection) * oSpeed;
		}
		if(oX<0)
		{
			oDirection = Math.random()*2*Math.PI;
			if(oDirection> .5*Math.PI && oDirection<1.5*Math.PI )
			{
				oDirection = oDirection + Math.PI;
			}
			oX = oX +  Math.cos(oDirection) * oSpeed;

		}
		if(oY>500)
		{
			oDirection = Math.random()*2*Math.PI;
			if(oDirection< Math.PI )
			{
				oDirection = oDirection + Math.PI;
			}
			oY = oY +  Math.sin(oDirection) * oSpeed;

		}
		if(oY<0)
		{
			oDirection = Math.random()*2*Math.PI;
			if(oDirection> Math.PI)
			{
				oDirection = oDirection + Math.PI;
			}
			oY = oY +  Math.sin(oDirection) * oSpeed;
		}
	}


}


class JumboParticle extends NormalParticle//uses inheritance
{

	void show()
	{	
		fill(myColor);
		ellipse((int)x,(int)y,100,100);
	}

}

