
void setup(){
  size(400, 300);
}

int i = 0;

void draw(){
  i += 1;
  if(100 < i){
    i = 0;
    delay(1000);
  }
  
  //0.000 ~ 0.999
  float t = i / 100.0; 
  t *= 100;
  
  background(240);
  
  drawRotatingRod(t);
  drawBlueReverseRod2(t);
  
  drawBlueReverseRod(t);
  

  drawRedReverseRod(t);
  
  drawBlueReverseRodLeopardPTA(t);

  translate(100,100);
  drawBlueReverseRod(t);

  
  delay(1);
}


//線の長さ
int lineLength = 100;

void drawRotatingRod(float t){
  //-2t^3 + 3t^2
  float fade = -2*t*t*t + 3*t*t;
    
  //回転の中心
  int centerX = width/2;
  int centerY = height/2;
  
  float startX = centerX;
  float startY = centerY;
  float endX = centerX + lineLength * cos(2 * PI * fade);
  float endY = centerY + lineLength * sin(2 * PI * fade);
  
  stroke(#ff4500);
  
  line(startX, startY, endX, endY);
}


void drawBlueReverseRod(float t){
  //-2t^3 + 3t^2
  float fade = -(-2*t*t*t + 3*t*t);
    
  //回転の中心
  int centerX = width/2 - 100;
  int centerY = height/2 - 50;
  
  float startX = centerX;
  float startY = centerY;
  float endX = centerX + lineLength * cos(2 * PI * fade);
  float endY = centerY + lineLength * sin(2 * PI * fade);
  
  stroke(#1e90ff);
  
  line(startX, startY, endX, endY);
}

void drawBlueReverseRodLeopardPTA(float t){
  //-2t^3 + 3t^2
  float fade = -(-2*t*t*t + 3*t*t);
    
  //回転の中心
  int centerX = width/2 - 100;
  int centerY = height/2 + 50;
  
  float startX = centerX;
  float startY = centerY;
  float endX = centerX + lineLength * cos(2 * PI * fade);
  float endY = centerY + lineLength * sin(2 * PI * fade);
  
  stroke(0, 0, 255);
  
  line(startX, startY, endX, endY);
}


void drawRedReverseRod(float t){
  //-2t^3 + 3t^2
  float fade = -(-2*t*t*t + 3*t*t);
    
  //回転の中心
  int centerX = width/2 + 50;
  int centerY = height/2 + 50;
  
  float startX = centerX;
  float startY = centerY;
  float endX = centerX + lineLength * cos(2 * PI * fade);
  float endY = centerY + lineLength * sin(2 * PI * fade);
  
  stroke(255, 0, 0);
  
  line(startX, startY, endX, endY);
}
