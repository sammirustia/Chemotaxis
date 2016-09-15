 //declare bacteria variables here   
 Bacteria dot;

 void setup()   
 {     
 	//initialize bacteria variables here  
 	dot = new Bacteria();
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	background(255);
 	dot.move();
 	dot.show();
 }  
 class Bacteria    
 {     
 	int x,y,fill;
 	Bacteria () {
 		x = x;
 		y = y;
 		fill = (0,0,((int)(Math.random()*255));
 	}   
 	void move() {
 		
 	}
 	void show() {
 		
 	}
 }    