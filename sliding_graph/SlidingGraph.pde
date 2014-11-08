class SlidingGraph {
  
//global variables
  int posX;
  int posY;
  int lengthX;
  int lengthY;
  int lineWidth;
  float highLimit;
  float lowLimit;
  
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
  
  //ekrana çizme işlemi
  void drawGraph(){
  }
  
  //nesne içerisine ekranda gösterilecek dataların alınması
  void getValue(){
  }
}
