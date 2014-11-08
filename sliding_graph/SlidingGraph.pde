class SlidingGraph {
  
//global variables
  int posX;
  int posY;
  int lengthX;
  int lengthY;
  int lineWidth;
  float highLimit;
  float lowLimit;
  int[] values1;
  int[] values2;
  int arrayIndex;
  
//global private variables
  private boolean isSecond = false;

//constructor

  SlidingGraph(int _posX, int _posY, int _lengthX, int _lengthY, float _highLimit, float _lowLimit){
    posX = _posX;
    posY = _posY;
    lengthX = _lengthX;
    lengthY = _lengthY; 
    highLimit = _highLimit;
    lowLimit = _lowLimit;
    lineWidth = 10; 
  }
  
//override

  SlidingGraph(int _posX, int _posY, int _lengthX, int _lengthY, float _highLimit, float _lowLimit, int _lineWidth){
    posX = _posX;
    posY = _posY;
    lengthX = _lengthX;
    lengthY = _lengthY; 
    highLimit = _highLimit;
    lowLimit = _lowLimit;
    lineWidth = _lineWidth; 
    
    arrayIndex = 0;
    
    initializeArray();
  }
  
  //ekrana çizme işlemi
  void drawGraph(){
  }
  
  //nesne içerisine ekranda gösterilecek dataların alınması
  void addValue(float _value){
    
    if(isSecond == true){
      values1[arrayIndex] = _value;    
    }    
    else{
      values2[arrayIndex] = _value;
    }
    arrayIndex++;
  }
  
  private void initializeArrays(){
    int elements = parseInt(lengthX/lineWidth);
    values1 = new int[elements];
    values2 = new int[elements];  
  }
  
}
