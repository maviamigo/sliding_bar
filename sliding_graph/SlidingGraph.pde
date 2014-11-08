class SlidingGraph {
  
//global variables
  int posX;
  int posY;
  int lengthX;
  int lengthY;
  float highLimit;
  float lowLimit;
  color graphicColor;
  
//global private variables
  private boolean isSecond = false;
  private boolean initialCondition = true;
  private float[] values1;
  private float[] values2;
  private int arrayIndex; //add işlemindeki tutucu
  private int arrayPosition; //draw işlemindeki tutucu
  private int lineWidth;
  private int zeroLine;

//constructor
//ilk 4 değişken rect() ile aynı mantıkta
//son 3 değişken alt limit, üst limit ve bar genişliği
  SlidingGraph(int _posX, int _posY, int _lengthX, int _lengthY, float _lowLimit, float _highLimit){
    posX = _posX;
    posY = _posY;
    lengthX = _lengthX;
    lengthY = _lengthY; 
    highLimit = _highLimit;
    lowLimit = _lowLimit;
    lineWidth = 10;     
    arrayIndex = 0;
    graphicColor = color(0);
    
    initializeArrays();
  }
  
//override

  SlidingGraph(int _posX, int _posY, int _lengthX, int _lengthY, float _lowLimit, float _highLimit, int _lineWidth){
    posX = _posX;
    posY = _posY;
    lengthX = _lengthX;
    lengthY = _lengthY; 
    highLimit = _highLimit;
    lowLimit = _lowLimit;
    lineWidth = _lineWidth;     
    arrayIndex = 0;
    graphicColor = color(0);
    
    initializeArrays();
  }
  
  //ekrana çizme işlemi
  void drawGraph(){
    fill(graphicColor);
    int xCounter = posX;
    
    if (initialCondition == true){
      drawInitialGraph();
    }
    
    else{
      if(isSecond == false){
        for(int i=arrayIndex; i<values1.length; i++){
          rect(xCounter, zeroLine, lineWidth, values1[i]);
          xCounter += lineWidth;        
        }
        for(int i=0; i<arrayIndex; i++){
          rect(xCounter, zeroLine, lineWidth, values2[i]);
          xCounter += lineWidth;
        }
      }
      
      else{
        for(int i=arrayIndex; i<values2.length; i++){
          rect(xCounter, zeroLine, lineWidth, values2[i]);
          xCounter += lineWidth;        
        }
        for(int i=0; i<arrayIndex; i++){
          rect(xCounter, zeroLine, lineWidth, values1[i]);
          xCounter += lineWidth;
        }
      }
    }   
  }
  
  //-----------------------------------------------------------------------------
  //nesne içerisine ekranda gösterilecek dataların alınması
  void addValue(float _value){
    _value = adjustBoundary(_value);
    
    //ilk turda buraya girecek
    if(initialCondition == true){
      values1[arrayIndex] = _value;
      arrayIndex++;
      
      if(arrayIndex == values1.length){
        arrayIndex = 0;  
        initialCondition = false;
      }
    }
    
    else{
      if(isSecond == true){
        values1[arrayIndex] = _value;    
      }    
      else{
        values2[arrayIndex] = _value;
      }
      arrayIndex++;
  
      if(arrayIndex == values1.length){
        arrayIndex = 0;
        isSecond = !isSecond;        
      }    
    }
  }
  
  private void initializeArrays(){
    int elements = parseInt(lengthX/lineWidth);

    values1 = new float[elements];
    values2 = new float[elements];  
  }
  
  private float adjustBoundary(float _data){
    zeroLine = parseInt(lengthY/2);
    _data = map(_data, lowLimit, highLimit, -zeroLine, zeroLine);    
    zeroLine += posY;    
    return -_data;
  }
  
  private void drawInitialGraph(){    
    for(int i=0; i<values1.length; i++){
      rect(lineWidth*i+posX, zeroLine, lineWidth, values1[i]);
    }  
  }    
}
