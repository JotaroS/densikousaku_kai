import processing.serial.*;

Serial serial;
Monitor mymonitor;
int data;

void setup(){
  size(640,320);
  serial = new Serial(this,"/dev/cu.usbmodem1411",9600);
  mymonitor = new Monitor();
}

void draw(){
  int i;
  rect(160,50,300,200);
  data = serial.read();
  mymonitor.update(data);
  for(i=0;i<300;i++){
    point(i+160,250-mymonitor.tell(i));
  }
}
