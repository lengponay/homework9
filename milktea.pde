void milktea (float x, float y, float d ) {
  stroke (0);
  strokeWeight (d*0.15);
  strokeJoin (ROUND);
  //straw
  fill (#6C3428);
  rect ( x+d*3.5, y-d*0.7, d*0.5, d*4 );
  //nofill
  noFill ();
  rect ( x+d*2.3, y+d, d*2.9, d*1 );
  //lid
  fill (#BA704F);
  rect ( x+d*2, y+d*0.8, d*3.5, d*0.35, d*0.4, d*0.4,0 ,0 );
  //milktea
  fill(#DFA878);
  rect ( x+d*2.3, y+d*2, d*2.9, d*3.5, 0 , 0, d*2, d*2);
  //bubble
  fill (#6C3428);
  strokeWeight (d*0.13);
  circle (x+d*3, y+d*4.9, d*0.33); // left 1
  circle (x+d*3.7, y+d*5, d*0.33); // middle
  circle (x+d*4.4, y+d*4.9, d*0.33); // right 1
  circle (x+d*3.3, y+d*4.4, d*0.33); // left 2
  circle (x+d*4.05, y+d*4.4, d*0.33); // right 2
}
