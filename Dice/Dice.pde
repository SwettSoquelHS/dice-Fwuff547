Die rDie;
void setup(){
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  size(600, 600);
  noLoop();
  rDie = new Die(width/2, height/ 2);
}

void draw(){
  background(0);
  rDie.show();
  
  //your code here
}

void mousePressed(){
  //No real work for you to do here
  //calling redraw will do the necessary work 
  //to redraw your processing script
  redraw();
}


//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
class Die {
  int x_pos, y_pos;
	//variable declarations for your Die instances here
	
	//constructor
	Die(int x, int y){
		//variable initializations here
    x_pos = x;
    y_pos = y;
	}
	
	//Simulate a roll of a die
	void roll(){
		//your code here, 
		//should randomly assign a value from 1 to 6
	}
	
	/*
	  Use the randomly assigned roll value to draw the face of a die
	*/
	void show(){
    pushMatrix();
    translate(x_pos, y_pos);
    fill(225);
    rect(-25, -25, 50, 50);
    fill(0);
    ellipse(0, 0, 10, 10);
    popMatrix();
		//your code here
	}
}
