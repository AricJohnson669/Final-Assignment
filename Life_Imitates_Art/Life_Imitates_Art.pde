//Variables for the images
PImage stickguy;
PImage lamp;
PImage cloud1;
PImage cloud2;

//Variables for the 'X' and 'Y' of the images
int stickguyX = 0;
int stickguyY = 1620;
int lampX = 2150;
int lampY = 1220;
int cloud1X = 0;
int cloud1Y = 100;
int cloud2X = 2900;
int cloud2Y = 300;

//Boolean variable for the stars
boolean stars = true;


void setup()
{
   //Setting the background and the size of the window
   fullScreen ();
   background (0);
   
   //Loading the image of the stickman
   stickguy = loadImage ("stickguy.png");
    
   //Loading the image of the lamp
   lamp = loadImage ("lamp.png");
   
   //Loading the first cloud image
   cloud1 = loadImage ("cloud1.png");
   
   //Loading the second cloud image
   cloud2 = loadImage ("cloud2.png");
}

void draw()
{ 
  //Moving the stickman's 'X' location by 5 pixels
  stickguyX = stickguyX +5;
  
  //If the 'stars' variable is true...
  if (stars == true)
  {
    //Makes the stars have no outline
    noStroke();
    
    //making the stars fade slowly
    fill (0, 15);
   
    //The plain where the stars are placed
    rect (0, 0, width, height);
    
    //These lines of code place the stars randomly on the plain
    fill (255);
    ellipse (random (width), random (height), 20, 20 );
    
    //Making the text for the day button
    fill (255);
    rect (100, 100, 250, 150);
    
    //Making the text black
    fill (0);
    
    //Setting the text size to 50
    textSize (50);
    text ("Day", 180, 200);
  }
  
  //If the 'stars' variable is false...
  if (stars == false)
  {
    //Making the background light blue
    background (#90EFFF);
    
    //When it turns day the first cloud's "X" value will move by 5 pixels
    cloud1X = cloud1X +5;
    
    //When it turns day the second cloud's "X" value will move by 5 pixels
    cloud2X = cloud2X -8;
    
    //When it turns day the first cloud is pasted
    image (cloud1, cloud1X, cloud1Y, 300, 300);
    
    //When it turns day the second cloud is pasted
    image (cloud2, cloud2X, cloud2Y, 400, 400);
    
    //Paste instructions on how to turn it night
    textSize (50);
    fill (0);
    text ("Press the 'n' key to turn it into Night Mode", 970, 100); 
  }
  
  //If the cloud reaches a certain point it resets
  if (cloud1X == 3000)
  {
    cloud1X = 0;
  }
  
  //If the cloud reaches a certain point...
  if (cloud2X <= -50)
  {
    //It resets
    cloud2X = 3000;
  }
  
  //Creating a rectangle with a fill of dark green
  stroke (15);
  fill (#018932);
  rect (0, 1500, 3000, 500);
  
  //Creating a rectangle with a fill of dark grey
  fill (#746C6C);
  rect (0, 1700, 3000, 500);
  
  //Pasting the image of the stickman infront of the buildings
  image (stickguy, stickguyX, stickguyY, 170, 190);
  
  //When the stickman's "X" location is greater than 2900...
  if (stickguyX >= 2900)
  {
    //Smooth makes the stickmans movement more smooth
    smooth ();
    
    //The stickman resets to the start
    stickguyX = 0;
  }
  
  //These rectangles make the grey buildings...
  fill (100);
  rect (100, 500, 600, 1100);
  rect (750, 300, 600, 1300);
  rect (2150, 350, 600, 1250);
  
  //Pasting the image of the lamp infront of the buildings
  image (lamp, lampX, lampY, 90, 400);
  
  //This fill makes the windows on the buildings light blue...
  fill (#34E9FF);
  
  //and these rectangles make the windows of building number one
  strokeWeight (15);
  rect (170, 550, 100, 150);
  rect (350, 550, 100, 150);
  rect (520, 550, 100, 150);
  rect (170, 700, 100, 150);
  rect (350, 700, 100, 150);
  rect (520, 700, 100, 150);
  rect (170, 900, 100, 150);
  rect (350, 900, 100, 150);
  rect (520, 900, 100, 150);
  rect (170, 1050, 100, 150);
  rect (350, 1050, 100, 150);
  rect (520, 1050, 100, 150);
  
  //Making the door with the colour of brown to building number one
  fill (#4D2424);
  rect (300, 1300, 200, 300);
  fill (#34E9FF);
  rect (350, 1340, 60, 75);
  fill(0);
  ellipse (450, 1470, 25, 25);
  
  //Making the windows for "COSTWAY"
  fill (#34E9FF);
  rect (825, 350, 100, 150);
  rect (995, 350, 100, 150);
  rect (1165, 350, 100, 150);
  rect (825, 450, 100, 150);
  rect (995, 450, 100, 150);
  rect (1165, 450, 100, 150);
  rect (825, 700, 100, 150);
  rect (995, 700, 100, 150);
  rect (1165, 700, 100, 150);
  rect (825, 800, 100, 150);
  rect (995, 800, 100, 150);
  rect (1165, 800, 100, 150);
  
  //Making the sign for "COSTWAY"
  textSize (100);
  fill (255);
  text ("COST", 910, 1100);
  fill (255, 0, 0);
  text ("WAY", 925, 1200);
  
  //Making the door for "COSTWAY"
  fill (#34E9FF);
  rect (840, 1300, 200, 300);
  rect (1040, 1300, 200, 300);
  rect (980, 1430, 10, 40);
  rect (1085, 1430, 10, 40);
  
  //Making the windows for Building three
  fill (#34E9FF);
  rect (2225, 400, 100, 150);
  rect (2400, 400, 100, 150);
  rect (2575, 400, 100, 150);
  rect (2225, 550, 100, 150);
  rect (2400, 550, 100, 150);
  rect (2575, 550, 100, 150);
  rect (2225, 800, 100, 150);
  rect (2400, 800, 100, 150);
  rect (2575, 800, 100, 150);
  rect (2225, 900, 100, 150);
  rect (2400, 900, 100, 150);
  rect (2575, 900, 100, 150);
  
  //Making the door for building one
  fill (#34E9FF);
  rect (2255, 1300, 200, 300);
  rect (2450, 1300, 200, 300);
  
  
}

void mousePressed()
{
  //If the mouse is clicked over the button...
  if (mouseX >= 100 && mouseX <= 350 && mouseY >= 100 && mouseY <= 250)
  {
    //The button will make it day
    stars = false;
  }
}

void keyPressed()
{
  //If you press the "n" key...
  if (key == 'n' )
  {
    //It makes the city go into "Night Mode"night time
    stars = true;
  }
}

/**

My four (or more) text, images, and/or shapes are...
|
Images: street lamp, stickman, cloud1, cloud2, 
Text: instructions for the "night mode"
Shapes: the building, windows, doors, and ground
|
My self taught animation is 
|
How to make stars blinking at night
https://funprogramming.org/
|
My four (or more) animations that were not learned from online tutorials are
|
The stickman walking, the transition from night to day, the transition from
day to night, and the clouds moving across the screen
|
When you click the "Day" button it turns day
|
When you press the '"n" key it turns on "Night Mode"

*/
