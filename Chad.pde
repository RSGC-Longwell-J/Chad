//Chad

//side project

//variables
PImage face;
PImage chad;
PImage chad2;
float x=300;
float y=300;
float x2=300;
float y2=300;

//sound
import processing.sound.*;
SoundFile photograph;

//things that run once
void setup() {

  //size
  size(1200,779);

  //make the chads available
  chad=loadImage("Chads Face.png");
  face=loadImage("Chad_background.jpg");
  chad2=loadImage("Chad_2.png");

  //set background color
  background(255);

  //
  image(face, 0, 0);

  //set framerate
  frameRate(0.75);

  //make the sound accesable
  photograph=new SoundFile(this, "ramenhair.mp3");
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
}

  //randomize x and y
  x=random(50,1100);
  y=random(50,610);

  x2=random(50, 1100);
  y2=random(50, 610);

  //play the sound
  photograph.play();

  //put chad back on screen
  //if (x>1200) {
  //  x=300;
  //}

  //if (x<0) {
  //  x=300;
  //}

  //if (y>800){
  //  y=300;
  //}
  
  //if (y<0){
  //  y=300;
  //}
  
  //if (x2>1200) {
  //  x=300;
  //}

  //if (x2<0) {
  //  x=300;
  //}

  //if (y2>800){
  //  y=300;
  //}
  
  //if (y2<0){ 
  //  y=300;
  //}
}