//your code here
NormalParticle [] norman;
void setup()
{
	size(500,500);
	norman = new NormalParticle[200];
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
class NormalParticle
{
	int x,y;
	double nSpeed;

	NormalParticle()
	{
		fill(100)
;
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
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

