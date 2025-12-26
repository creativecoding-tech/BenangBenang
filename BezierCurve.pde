// ============================================
// CLASS BezierCurve
// ============================================
class BezierCurve {
  // Anchor points (tetap)
  float anchor1x, anchor1y;
  float anchor2x, anchor2y;

  // Control point (bergerak)
  float cpX, cpY;
  float speedX, speedY;

  // Batas gerak control point
  float maxX, maxY;

  // Warna dan style
  color strokeColor;
  float strokeWeightVal = 10;

  // Constructor
  BezierCurve(float a1x, float a1y, float a2x, float a2y,
              float cpX_start, float cpY_start,
              float sx, float sy, color c) {
    this.anchor1x = a1x;
    this.anchor1y = a1y;
    this.anchor2x = a2x;
    this.anchor2y = a2y;

    this.cpX = cpX_start;
    this.cpY = cpY_start;
    this.speedX = sx;
    this.speedY = sy;

    this.strokeColor = c;

    // Set batas gerak ke tengah layar secara default
    this.maxX = width/2;
    this.maxY = height;
  }

  // Method untuk set batas gerak control point
  void setMaxBounds(float mx, float my) {
    this.maxX = mx;
    this.maxY = my;
  }

  // Method untuk update posisi control point
  void update() {
    // Update cpX jika belum mencapai maxX
    if (cpX < maxX) {
      cpX += speedX;
    }

    // Update cpY jika belum mencapai maxY
    if (cpY < maxY) {
      cpY += speedY;
    }
  }

  // Method untuk menggambar kurva
  void display() {
    stroke(strokeColor);
    strokeWeight(strokeWeightVal);

    // Gambar bezier curve
    bezier(anchor1x, anchor1y, cpX, cpY, anchor2x, anchor2y, anchor2x, cpY);
  }

  // Method untuk mengubah warna
  void setColor(color c) {
    this.strokeColor = c;
  }

  // Method untuk mengubah stroke weight
  void setStrokeWeight(float sw) {
    this.strokeWeightVal = sw;
  }
}
