Die Die1;
Die Die2;
Die Die3;
Die Die4;
Die Die5;
Die Die6;
Die Die7;
Die Die8;
Die Die9;

void setup(){
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  size(600, 600);
  noLoop();
  Die1 = new Die(width/2, height/ 2);
  Die2 = new Die(width/2-75, height/ 2);
  Die3 = new Die(width/2+75, height/ 2);
  Die4 = new Die(width/2, height/ 2-75);
  Die5 = new Die(width/2, height/ 2+75);
  Die6 = new Die(width/2+75, height/ 2-75);
  Die7 = new Die(width/2-75, height/ 2+75);
  Die8 = new Die(width/2-75, height/ 2-75);
  Die9 = new Die(width/2+75, height/ 2+75);
  
}

void draw(){
  background(0);
  Die1.show();
  Die2.show();
  Die3.show();
  Die4.show();
  Die5.show();
  Die6.show();
  Die7.show();
  Die8.show();
  Die9.show();
  
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
  int x_pos, y_pos, result, num;
	//variable declarations for your Die instances here
	
	//constructor
	Die(int x, int y){
		//variable initializations here
    x_pos = x;
    y_pos = y;
	}
	
	//Simulate a roll of a die
	void roll(){
    result = (int)Math.random()*7+1;
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
    if (result == 1)
      ellipse(0, 0, 10, 10);
    if (result == 2) {
      ellipse(-15, -15, 10, 10);
      ellipse(15, 15, 10, 10);
    }
    if (result == 3){
      ellipse(0, 0, 10, 10);
      ellipse(-15, -15, 10, 10);
      ellipse(15, 15, 10, 10);
    }
    if (result == 4) {
      ellipse(-15, -15, 10, 10);
      ellipse(15, 15, 10, 10);
      ellipse(15, -15, 10, 10);
      ellipse(15, -15, 10, 10);
    }
    if (result == 5) {
      ellipse(0, 0, 10, 10);
      ellipse(-15, -15, 10, 10);
      ellipse(15, 15, 10, 10);
      ellipse(15, -15, 10, 10);
      ellipse(15, -15, 10, 10);
    }
    if (result == 6) {
      ellipse(-15, 0, 10, 10);
      ellipse(15, 0, 10, 10);
      ellipse(-15, -15, 10, 10);
      ellipse(15, 15, 10, 10);
      ellipse(15, -15, 10, 10);
      ellipse(15, -15, 10, 10);
    }
    popMatrix();
		//your code here
	}
}
