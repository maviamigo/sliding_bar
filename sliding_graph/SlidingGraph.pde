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
    
    initializeArray();
  }
  
  //ekrana çizme işlemi
  void drawGraph(){
  }
  
  //nesne içerisine ekranda gösterilecek dataların alınması
  void addValue(){
  }
  
  private void initializeArrays(){
    int elements = parseInt(lengthX/lineWidth);
    values1 = new int[elements];
    values2 = new int[elements];  
  }
  
}
