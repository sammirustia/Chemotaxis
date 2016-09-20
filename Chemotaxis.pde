 //declare bacteria variables here   
 Bacteria dot;
 Bacteria [] colony;

 void setup()   
 {     
 	//initialize bacteria variables here  
 	size(400,400);
 	dot = new Bacteria();
 	colony = new Bacteria[10];
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	background(255);
 	dot.move();
 	dot.show();
 	for(int i=0;i<colony.length;i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}
 	
 }  
 class Bacteria    
 {     
 	int x,y,fills;
 	Bacteria () {
 		x = 50;
 		y = 350;
 		fills = color((int)(Math.random()*255),(int)(Math.random()*255), (int)(Math.random()*255));
 	}   
 	void move() {
 		x = x + ((int)(Math.random()*5));
 		y = y + ((int)(Math.random()*5)-3);
 	}
 	void show() {
 		fill(fills);
 		ellipse(x,y,10,10);	
 	}
 }    