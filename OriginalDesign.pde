int x = 0;
int y = 0;
int c = 0;
int z = 0;

void setup()
{
  size(400,400);
  background(0,50,0);
}
void mousePressed()
 {
 	if(x<-350) {
 	noLoop();
 	}
  	stroke(0,102,0);
	strokeWeight(20);
	point(mouseX,mouseY);
  
 }
void draw()
{
  
  background(0,50,0);
  target();
  arrowsLeft();
  arrowsRight();
  
  //ellipse(200,200,50,50);
}
void arrowsLeft()
{

	//shaft
	stroke(102,51,0);
	strokeWeight(8);
	line(x+100,y+100,x+300,y+300);//shaftLeft
	
	//arrowhead
	noStroke();
	fill(200,200,200);
	triangle(x+90,y+90,x+115,y+135,x+135,y+115);//headLeft
	
	
	
//fletchingLeft
	fill(0,102,0);
	triangle(x+290,y+290,x+285,y+315,x+315,y+290);
	quad(x+285,y+315,x+315,y+290,x+330,y+305,x+300,y+330);
	triangle(x+300,y+330,x+330,y+305,x+320,y+350);
	triangle(x+300,y+330,x+330,y+305,x+350,y+325);
	x --;
	y --;

}
void arrowsRight()
{
	//shaft
	stroke(102,51,0);
	strokeWeight(8);
	line(c+300,z+100,c+100,z+300);//shasftRight
	//arrowhead
	noStroke();
	fill(200,200,200);
	triangle(c+310,z+90,c+285,z+135,c+265,z+115);//headRight
	//flechingRight
	fill(0,102,0);
	triangle(c+110,z+290,c+115,z+315,c+85,z+290);
	quad(c+115,z+315,c+85,z+290,c+70,z+305,c+100,z+330);
	triangle(c+100,z+330,c+70,z+305,c+80,z+350);
	triangle(c+100,z+330,c+70,z+305,c+50,z+325);

	c ++;
	z --;
}
void target()
{
	stroke(0);
	strokeWeight(3);
	fill(255);
	ellipse(200,200,400,400);
	ellipse(200,200,362.5,362.5);
	fill(0);
	ellipse(200,200,325,325);
	stroke(255);
	ellipse(200,200,287.5,287.5);
	stroke(0);
	fill(0,0,255);
	ellipse(200,200,250,250);
	ellipse(200,200,212.5,212.5);
	fill(255,0,0);
	ellipse(200,200,175,175);
	ellipse(200,200,137.5,137.5);
	fill(255,255,0);
	ellipse(200,200,100,100);
	ellipse(200,200,62.5,62.5);
	
}
