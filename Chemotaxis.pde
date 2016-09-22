 //declare bacteria variables here   
 Bacteria dot;
 Bacteria [] colony;

 void setup()   
 {     
 	//initialize bacteria variables here  
 	size(400,400);
 	frameRate(30);
 	dot = new Bacteria();
 	colony = new Bacteria[100];
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	background(191,228,224);
 	dot.move();
 	dot.show();
 	for(int i=0;i<colony.length;i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}

 	person();

 }  



 void person() 
 {
 	fill(0);
 	ellipse(35,335,15,15);
 	line(35,340,35,400);
 	line(35,360,48,340);
 }

 class Bacteria    
 {     
 	int x,y,fills;
 	Bacteria () {
 		x = 70;
 		y = 350;
 		fills = color((int)(Math.random()*255),(int)(Math.random()*255), (int)(Math.random()*255));
 	}   
 	void move() {
 		if(mousePressed == true)
 		{
 			x = x + ((int)(Math.random()*13)-6);
 			y = y + ((int)(Math.random()*13)-6);
 		}
 		else  
 		{
 			x = x + ((int)(Math.random()*5));
 			y = y + ((int)(Math.random()*7)-5);
 		}		
 		if(x > 500 && y < -100)
		{
 			
		}
 	}
 	void show() {
 		fill(fills);
 		ellipse(x,y,13,15);
 		triangle(x,y + 7, x - 3, y + 10, x + 3, y + 10);
 		line(x,y+8,x,y+28);	
 	}
 }  
