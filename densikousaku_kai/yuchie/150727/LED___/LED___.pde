import processing.serial.*; //all in the serial class which in the processing class
import controlP5.*;

ControlP5 slider;  //memory field kakuho
Serial serial;

int Red = 100;
int Green = 100;
int Blue = 100;

void setup(){
  //windows size(width,height)
  size(640,320);
  serial = new Serial(this,"/dev/cu.usbmodem1411",9600);
  //this: program no memori
  slider = new ControlP5(this); //jittaika
  slider
  .addSlider("Red")
  .setPosition(100,100)
  .setRange(0,255)
  .setSize(100,20);
  slider
  .addSlider("Green")
  .setPosition(100,150)
  .setRange(0,255)
  .setSize(100,20);
  slider
  .addSlider("Blue")
  .setPosition(100,200)
  .setRange(0,255)
  .setSize(100,20);
}

void draw(){
  noStroke();  //gakubuchi nashi
  //stroke(10) futosa
  //if(mousePressed)fill(255,0,0);
  //else fill(255,255,255);
  //rect(x,y,w,h);
  
  rect(300,100,200,100);
  fill(Red,Green,Blue);
  serial.write('a');
  serial.write(Red);
  serial.write(Green);
  serial.write(Blue);
}
