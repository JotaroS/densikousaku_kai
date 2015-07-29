import processing.serial.*;
float[] data;
Serial myPort;
MyClass c;

void setup(){
  data = new float[300];
  myPort = new Serial(this,"/dev/cu.usbmodem1411",9600);
  for(int i = 0 ; i < 300; i++)data[i]=0;
  size(640,320);
}
void draw(){  
    frameRate(60);
  background(100);
  
  stroke(200);
  //the first analog input graph
  pushMatrix();
  {
    fill(100);
    translate(100,100);
    rect(0,0,300,100);
    fill(200);
    text(" Analog Input",300,100);
    for(int i = 0; i < 300; i++)point(i,data[i]*100/255);
  }popMatrix();
  
  //shift data
  //for(int i = 1; i < 300; i++)data[i-1] = data[i];
  
  //read data
  while(myPort.available()>0){
    data[299] = myPort.read();
    System.out.println(data[299]);
    //shift data
    for(int i = 1; i < 300; i++)data[i-1] = data[i];
  }
  
}
