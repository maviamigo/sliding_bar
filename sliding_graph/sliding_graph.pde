final int WIDTH = 1920;
final int LINEWIDTH = 5;

int size = WIDTH/LINEWIDTH;
int[] dizi1 = new int[size];
int[] dizi2 = new int[size];

int position = size;
boolean isSecond = false;

void setup(){
  size(WIDTH, 500);
  background(255);
  generate();
  frameRate(50);
}


void draw(){
  background(255);
  int counter = 0;
  int v_counter = position*LINEWIDTH;
  
  if(isSecond == false){
    //her çevrimde bir eksik posizyona kadar ilk diziyi çizer
    for(int i = (size-position); i<size; i++){
      noStroke();
      fill(0);
      rect(counter, 250, LINEWIDTH, dizi1[i]);
      counter = counter + LINEWIDTH;
     }
     
     //ilk dizinin kaldığı yerden ikinci diziyi devam ettirir
    for(int i = 0; i<size-position; i++){
      rect(v_counter, 250, LINEWIDTH, dizi2[i]);
      println("here");
      //line(v_counter, 250, v_counter, 250+dizi2[i]);
      v_counter = v_counter + LINEWIDTH;
    }
  }  
   
  else{
    for(int i = (size-position); i<size; i++){
      rect(counter, 250, LINEWIDTH, dizi1[i]);
      counter = counter + LINEWIDTH;
    }
    for(int i = 0; i<size-position; i++){
      rect(v_counter, 250, LINEWIDTH, dizi2[i]);
      v_counter = v_counter + LINEWIDTH;
    }
  }
   
  addValue(position);
  position--;
  
  if(position == 0){
     isSecond = !isSecond;
     position = size; 
   }  
     
  //debug
  println("------" + frameRate);
}

void generate(){
  //başlangıç için diziye değer atar
  for(int i = 0; i<size; i++){
    int r =  parseInt(random(-100, 100));
    dizi1[i] = r;
  }
}
  
void addValue(int position){
  int r =  parseInt(random(-100, 100));
  
  if(isSecond == true){
    dizi1[size-position] = r; 
  }
  else{
    dizi2[size-position] = r;
    println("there");
  }    
}

