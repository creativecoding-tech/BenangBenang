
boolean isRunning = false; // Flag untuk toggle jalan/stop
ArrayList<BezierCurve> curves;

void setup(){
  fullScreen(P2D);
  background(0);
  hint(ENABLE_STROKE_PURE);
  smooth();
  
  curves = new ArrayList<BezierCurve>();
  int numberCurves = 100;
  for(int i = 0; i < numberCurves; i++){
    float anchor1x = map(i,0,numberCurves-1,0,width);
    float anchor1y =0;
    float anchor2x = map(i,0,numberCurves -1,0,width);
    float anchor2y = height;
    
    color c = color (random(100,255),random(100,255),random(100,255));
    
    curves.add(new BezierCurve(anchor1x,anchor1y,anchor2x,anchor2y,0,0,random(5,15),random(5,15),c));
  }
}

void draw(){
  // Hanya jalan jika isRunning true
  if (isRunning) {
    noStroke();
    fill(0,20);
    rect(0,0,width,height);
    for(BezierCurve curve: curves){
      curve.update();
      curve.display();
    }
  }
}

void mousePressed() {
  isRunning = !isRunning; // Toggle state
}
