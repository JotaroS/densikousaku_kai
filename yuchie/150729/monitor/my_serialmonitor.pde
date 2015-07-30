class Monitor {
  int[] data;
  
  final int w = 300;
  final int h = 100;
  final int textSize = 16;
  final int margin = 2;
  int x = 0;
  int y = 0;
  String title = "Monitor";
  Monitor() {
    //memory allocation in constructor
    data = new int[300];
    for (int i=0; i<300; i++) {
      data[i] = 0;
    }
  }
  Monitor(int[] _data) {
    data = _data;
    int i;
    for (i=0; i<300; i++) {
      data[i] = 0;
    }
  }

  void update() {
    int i;
    for (i=299; i>0; i--) {
      data[i] = data[i-1];
    }
  }
  void addData(int a) {
    data[0] = a;
  }
  int getData(int a) {
    return data[a];
  }
  void setPosition(int _x, int _y) {
    x = _x;
    y = _y;
  }
  void setTitle(String s){
    title = s;
  }
  void draw() {
    pushMatrix();
    {
      translate(x, y);

      for (int i=0; i<300; i++) {
        point(i, h-data[i]*h/256);
      }
      rect(0,0,w,h);
      rect(0,h,w,textSize+margin*2);
      fill(255);
      text(title,margin,h+textSize+margin);
    }
    popMatrix();
  }
}

