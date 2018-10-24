Die Die1;
Die Die2;
Die Die3;
Die Die4;
Die Die5;
Die Die6;
Die Die7;
Die Die8;
Die Die9;
int total;
int overall;

void setup(){
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  size(600, 600);
  noLoop();
  total = 0;
  overall = 0;
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
  total = 0;
  background((int)(Math.random()*300), (int)(Math.random()*300), (int)(Math.random()*300));
  Die1.show();
  total = total + Die1.result;
  Die2.show();
  total = total + Die2.result;
  Die3.show();
  total = total + Die3.result;
  Die4.show();
  total = total + Die4.result;
  Die5.show();
  total = total + Die5.result;
  Die6.show();
  total = total + Die6.result;
  Die7.show();
  total = total + Die7.result;
  Die8.show();
  total = total + Die8.result;
  Die9.show();
  total = total + Die9.result;
  overall = overall + total;
  fill(250);
  textSize(15);
  text("Total roll: " + total, 450, 450);
  text("Overall roll: " + overall, 450, 500);
  
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
  int x_pos, y_pos, result;
	//variable declarations for your Die instances here
	
	//constructor
	Die(int x, int y){
		//variable initializations here
    x_pos = x;
    y_pos = y;
	}
	
	//Simulate a roll of a die
	void roll(){
    result = (int)((Math.random()*6)+1);
		//your code here, 
		//should randomly assign a value from 1 to 6
	}
	
	/*
	  Use the randomly assigned roll value to draw the face of a die
	*/
	void show(){
    roll();
    pushMatrix();
    translate(x_pos, y_pos);
    fill((int)(Math.random()*300), (int)(Math.random()*300), (int)(Math.random()*300));
    rect(-25, -25, 50, 50);
    fill((int)(Math.random()*300), (int)(Math.random()*300), (int)(Math.random()*300));
    if (result == 1){
      ellipse(0, 0, 10, 10);
    }
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
      ellipse(-15, 15, 10, 10);
    }
    if (result == 5) {
      ellipse(0, 0, 10, 10);
      ellipse(-15, -15, 10, 10);
      ellipse(15, 15, 10, 10);
      ellipse(15, -15, 10, 10);
      ellipse(-15, 15, 10, 10);
    }
    if (result == 6) {
      ellipse(-15, 0, 10, 10);
      ellipse(15, 0, 10, 10);
      ellipse(-15, -15, 10, 10);
      ellipse(15, 15, 10, 10);
      ellipse(15, -15, 10, 10);
      ellipse(-15, 15, 10, 10);
    }
    popMatrix();
		//your code here
	}
}
