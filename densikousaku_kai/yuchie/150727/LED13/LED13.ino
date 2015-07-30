int led = 13;
void setup() {
  // put your setup code here, to run once:
  //pinMode(pin_number,IO);
  pinMode(led,OUTPUT); //13番ピンを出力として使う
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(led,HIGH);
  delay(200);
  digitalWrite(led,LOW);
  delay(200);
}
