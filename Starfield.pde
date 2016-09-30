//make oddball move

//your code here
Particle [] norman;
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
	setup();
	redraw();
}


class NormalParticle implements Particle
{
	double x,y;

	//velocity: speed in a given diection

	double nSpeed, nDirection;
	int nSize;


	NormalParticle()
	{
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		x = 250.0;
		y = 250.0;

		nSpeed = Math.random()*20 + 3;
		nDirection = Math.random()*2*Math.PI;

		nSize = (int)(Math.random()*20)+5;

	}

	void show()
	{
	
		ellipse((int)x,(int)y,nSize,nSize);
	}

	void move()
	{
		x = x + Math.cos(nDirection) * nSpeed;
		y = y + Math.sin(nDirection) * nSpeed;

		nDirection = nDirection +.075;

	}


}


interface Particle
{
	public void show();
	public void move();
}


class OddballParticle implements Particle //uses an interface
{
	int oX,oY;
	OddballParticle()
	{
	fill((int)(Math.random()*200),(int)(Math.random()*200),(int)(Math.random()*200));
	int oX = 250;
	int oY = 250;

	}

	void show()
	{
		
		ellipse(oX,oY,50,50);


	}

	void move()
	{
		oX = oX +  (int)(Math.random()*3)-1;
		oY = oY +  (int)(Math.random()*3)-1;
	}


}


class JumboParticle extends NormalParticle//uses inheritance
{

	void show()
	{	
		ellipse((int)x,(int)y,100,100);
	}

}

