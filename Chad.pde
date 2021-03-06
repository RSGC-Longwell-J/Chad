//Chad

//side project

//variables
PImage face;
PImage chad;
PImage chad2;
PImage chad3;
float x=300;
float y=300;
float x2=300;
float y2=300;

//sound
import processing.sound.*;
SoundFile photograph;
SoundFile goodbye;
SoundFile background;
//things that run once
void setup() {

  //size
  size(1200,779);

  //make the chads available
  chad=loadImage("Better Chads Face.png");
  face=loadImage("Chad_background.jpg");
  chad2=loadImage("Chad_2.png");
  chad3=loadImage("Number 5.png");

  //set background color
  background(255);

  //
  image(face, 0, 0);

  //set framerate
  frameRate(3); 
 
  //make the sound accesable
  photograph=new SoundFile(this, "ramenhair.mp3");
  goodbye=new SoundFile(this, "bye.mp3");
  background=new SoundFile(this, "Nickelback photograph.mp3");
  
   //play the song in the background
  background.play();
  background.amp(0.3);
}

//things that run multipe times
void draw() {

//put the chads on the screen

//alternate
if(frameCount%2==0){
image(chad, x, y, width/7, height/5);
}

if(frameCount%2==1){
image(chad2, x2, y2, width/7, height/5);
tint(random(0,255), random(0,255), random(0,255), random(100,255));
}

//randomize x and y
x=random(10,1100);
y=random(10,610);

x2=random(5, 1100);
y2=random(5, 610);

//play the sound
photograph.play();
if(keyPressed) {
  if(key == 'C'||key == 'c'){ 
image(chad3, 0, 0, width, height);
goodbye.play();
background.stop();
noLoop();
  }
}
}