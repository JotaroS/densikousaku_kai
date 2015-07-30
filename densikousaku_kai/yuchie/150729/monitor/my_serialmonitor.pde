class Moniter{
  int[] data;
  data = new int[300];
  
  Moniter(int data){
    int i;
    for(i=0;i<300;i++){
      data[i] = 0;
    }
  }
  
  void update(int ndata){
    int i;
    for(i=299;i>0;i--){
      data[i] = data[i-1];
    }
  }
  
  int tell(int a){
    return data[a];
  }
}
