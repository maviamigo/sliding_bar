int[] dizi = new int[1920];

int size = 1920;

void setup(){
  size(size, 500);
  background(255);
  generate();
  //frameRate(100);
}


void draw(){
  background(255);
  int counter = 0;
  
  //her çevrimde ekrana bütün diziyi çizer
  for(int i = 0; i<size; i++){
    stroke(0);
    line(counter, 250, counter, 250+dizi[i]);
    counter++;
    println(dizi[i]);
  }  
  slip();
  
  //debug
  println("------" + frameRate);
}


void slip(){
  //dizinin tamamını bir sola kaydırır
  for(int i = 1; i<size-1; i++){
    dizi[i] = dizi[i+1];
  }
  int r = parseInt(random(-100, 100));
  dizi[size-1] = r;
}

void generate(){
  //başlangıç için diziye değer atar
  for(int i = 0; i<size; i++){
    int r =  parseInt(random(-100, 100));
    dizi[i] = r;
  }

}
