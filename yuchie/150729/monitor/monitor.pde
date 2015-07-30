import processing.serial.*;

Serial serial;
Monitor mymonitor;
int data;

void setup(){
  size(640,320);
  serial = new Serial(this,"/dev/cu.usbmodem1411",9600);
  mymonitor = new Monitor();
  mymonitor.setPosition(100,100);
  mymonitor.setTitle("yuchie");
}


void draw(){
  background(100);
  while(serial.available()>0){
    mymonitor.update();//shift
    mymonitor.addData(serial.read());//add
  }
  stroke(255);
  fill(255,255,255,0);
  mymonitor.draw();
}
