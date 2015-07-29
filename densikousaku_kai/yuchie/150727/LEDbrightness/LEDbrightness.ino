int red = 9;
int green = 10;
int blue = 11;

int rbrightness = 0;
int gbrightness = 0;
int bbrightness = 0; //how bright the LED is
char mode = '0';
//int fadeamount = 5;  
void setup() {
  // put your setup code here, to run once:
  pinMode(red,OUTPUT);
  pinMode(green,OUTPUT);
  pinMode(blue,OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  analogWrite(red,rbrightness);
  analogWrite(green,gbrightness);
  analogWrite(blue,bbrightness);
//  brightness = brightness + fadeamount;
//  
//  if(brightness == 0 || brightness == 255){
//      fadeamount = -fadeamount;
//  }
  
//  delay(30);

  if(Serial.available()>3){ //溜まったデータの数
    mode = Serial.read();
    if(mode == 'a'){
        rbrightness = Serial.read();
        gbrightness = Serial.read();
        bbrightness = Serial.read();
    }
  }
  
  mode = '0';
  
}
