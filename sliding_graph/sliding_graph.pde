final int SIZE = 1920;

int[] dizi1 = new int[SIZE];
int[] dizi2 = new int[SIZE];

int position = SIZE;
boolean isSecond = false;

void setup(){
  size(SIZE, 500);
  background(255);
  generate();
  frameRate(100);
}


void draw(){
  background(255);
  int counter = 0;
  int v_counter = position;
  
  if(isSecond == false){
    //her çevrimde bir eksik posizyona kadar ilk diziyi çizer
    for(int i = (SIZE-position); i<SIZE; i++){
      stroke(0);
      line(counter, 250, counter, 250+dizi1[i]);
      counter++;
     } 
     
     //ilk dizinin kaldığı yerden ikinci diziyi devam ettirir
    for(int i = 0; i<SIZE-position; i++){
      line(v_counter, 250, v_counter, 250+dizi2[i]);
      v_counter++;
    }
  }  
   
  else{
    for(int i = (SIZE-position); i<SIZE; i++){
      line(counter, 250, counter, 250+dizi2[i]);
      counter++;
    }
    for(int i = 0; i<SIZE-position; i++){
      line(v_counter, 250, v_counter, 250+dizi1[i]);
      v_counter++;
    }
  }
   
  addValue(position);
  position--;
  
  if(position == 0){
     isSecond = !isSecond;
     position = SIZE; 
   }  
     
  //debug
  println("------" + frameRate);
}

void generate(){
  //başlangıç için diziye değer atar
  for(int i = 0; i<SIZE; i++){
    int r =  parseInt(random(-100, 100));
    dizi1[i] = r;
  }
}
  
void addValue(int position){
  int r =  parseInt(random(-100, 100));
  
  if(isSecond == true){
    dizi1[SIZE-position] = r; 
  }
  else{
    dizi2[SIZE-position] = r;
  }    
}

