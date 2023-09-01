float [] x, y, d, vx, vy;
void setup(){
  size ( 800,800);
  x = new float [8];
  y = new float [8];
  d = new float [8];
  vx = new float [8];
  vy = new float [8];
   for ( int i = 0; i < 8 ; i++){
    x[i] = random ( width );
    y[i] = random ( height );
    d[i] = random ( 5, 50);
    vx[i] = random ( 3, 5);
    vy[i] = random ( 3, 5);
  }
} 
void draw() {
  background (230);
  for (int i=0; i<8; i++) {
    if (i != 3 && i != 7) {
      x[i] += vx[i];
      y[i] += vy[i];
     if ( x[i] < 0 || x[i] > width ) vx[i] = -vx[i];
     if ( y[i] < 0 || y[i] > width ) vy[i] = -vy[i];
    } else if (i == 3) {
      x[i] = mouseX;
      y[i] = mouseY;
    }
    if ( i < 5 ) kakao ( x[i], y[i], d[i] );
    else milktea ( x[i], y[i], d[i] );
  } 
} 
void keyPressed() {
  if(key == 'a') x[7] -= 10;
 else if(key == 'd') x[7] += 10;
 else if(key == 'w') y[7] -= 10;
 else if(key == 's') y[7] += 10;
 
if ( key == CODED){
    if ( keyCode == UP) y[7] -=5;
    else if ( keyCode == DOWN ) y[7] += 5;
    else if ( keyCode == LEFT)  x[7] -= 5 ;
    else if ( keyCode == RIGHT)  x[7] += 5 ;
}
}
