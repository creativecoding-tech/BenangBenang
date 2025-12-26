
float cpx1 = 0, cpy1 = 0;
float speedX = 10; // Arah dan kecepatan X
float speedY = 10; // Arah dan kecepatan Y
boolean isRunning = false; // Flag untuk toggle jalan/stop

void setup(){
  fullScreen(P2D);
  background(0);
  strokeWeight(10);
  stroke(255, 102, 0);
  hint(ENABLE_STROKE_PURE);
  smooth();
}

void draw(){
  // Hanya jalan jika isRunning true
  if (isRunning) {
    createCurve();
  }
}

void mousePressed() {
  isRunning = !isRunning; // Toggle state
}

void createCurve(){
   // Efek jejak memudar
   noStroke();
   fill(0, 15); // 10 = tingkat pemudaran (semakin kecil semakin lama jejaknya)
   rect(0, 0, width, height);

   // Gambar kurva
   stroke(255, 102, 70);
   strokeWeight(10);
   // Bezier curve: anchor1, control1, control2, anchor2
     bezier(width/2, 0, cpx1,cpy1, width/2, height, width/2, cpy1);

// 1. Update posisi
  cpx1 += speedX;
  cpy1 += speedY;

  // 2. Cek batas X (Kanan atau Kiri)
  if (cpx1 > width || cpx1 < 0) {
    speedX *= -1; // Balikkan arah (positif jadi negatif, negatif jadi positif)
  }

  // 3. Cek batas Y (Atas atau Bawah)
  //if (cpy1 > height || cpy1 < 0) {
  //  speedY *= -1; // Balikkan arah
  //}
}
