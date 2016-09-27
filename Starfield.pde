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

}
void draw()
{
	for(int i =0;i<norman.length; i++)
	{
		norman[i].show();
	}
}
class NormalParticle implements Particle0
{
	int x,y;
	double nSpeed;

	NormalParticle()
	{
		fill(100);
		x = 250;
		y = 250;

		nSpeed = Math.random()*20;

	}


	void show()
	{
	
		ellipse(x,y,5,5);
	}

	void move()
	{
		
	}




}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle //uses an interface
{
	void show()
	{

	}

	void move()
	{

	}

}
class JumboParticle //uses inheritance
{
	//your code here
}

